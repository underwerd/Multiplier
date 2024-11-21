#include <cstdint>
#include <iostream>
#include <array>
#include <random>
#include <cstdint>
#include <bitset>
#include <fstream>
#include <string>
#include <iomanip>

#define PLUS //开启表示采用plus设计方案，可以让减少加法器的个数，每一个product只有16bit，不需要17bit
#define INV //开启表示采用优化设计过的INV模型

uint32_t 
getBitsFromRange(uint32_t num, int a, int b)
{
    // 创建一个掩码，将位范围外的位设置为0，范围内的位设置为1
    int mask = (1 << (b - a + 1)) - 1;
    mask <<= a;

    // 将掩码应用于num，并将结果向右移动a位
    int result = (num & mask) >> a;

    return result;
}

uint32_t
Inverse(uint32_t input) //16bit取相反数，最高位是符号位
{
    uint32_t A = getBitsFromRange(input,0,14); //16bit取15bit
    uint32_t AStage1 = (getBitsFromRange(A,0,0)) + ((getBitsFromRange(A,0,13) | getBitsFromRange(A,1,14)) << 1);
    uint32_t AStage2 = (getBitsFromRange(AStage1,0,1)) + ((getBitsFromRange(AStage1,0,12) | getBitsFromRange(AStage1,2,14)) << 2);
    uint32_t AStage3 = (getBitsFromRange(AStage2,0,3)) + ((getBitsFromRange(AStage2,0,10) | getBitsFromRange(AStage2,4,14)) << 4);
    uint32_t AStage4 = (getBitsFromRange(AStage3,0,7)) + ((getBitsFromRange(AStage3,0,6) | getBitsFromRange(AStage3,8,14)) << 8);
    uint32_t out = ((AStage4 << 1) ^ input);
    out = getBitsFromRange(out,0,15);
    return out;
}

uint32_t
BoothDecode(int32_t MultiplierBits,uint16_t Multiplicand)
{
    uint32_t selection = 0;
    int highBit = getBitsFromRange(MultiplierBits, 2, 2);
    int midBit = getBitsFromRange(MultiplierBits, 1, 1);
    int lowBit = getBitsFromRange(MultiplierBits, 0, 0);
    //
    std::bitset<16> binary(MultiplierBits);  // 将 num 转换为 16 位二进制
    // std::cout << "Binary representation: " << binary << std::endl;
    int decodeNum = -2 * highBit + midBit + lowBit;
    // std::cout<<"highBit:"<<highBit<<std::endl;
    // std::cout<<"midBit:"<<midBit<<std::endl;
    // std::cout<<"lowBit:"<<lowBit<<std::endl;
    // std::cout<<"decodeNum:"<<decodeNum<<std::endl;
    //

    switch (decodeNum)
    {
    case 2:
    {
        selection = static_cast<uint32_t>(Multiplicand) << 1;
        break;
    }
    case 1:
    {
        selection = static_cast<uint32_t>(Multiplicand);
        int signBit = getBitsFromRange(selection,15,15);
        selection = uint32_t(signBit << 16) + selection;
        break;
    }
    case 0:
    {
        selection = 0;
        break;
    }
    case -1:
    {
#ifdef INV
        selection = static_cast<uint32_t>(Inverse(Multiplicand));
        selection = (getBitsFromRange(selection,15,15) << 16) + selection;
#elif
        selection = static_cast<uint32_t>(Multiplicand);
        int signBit = getBitsFromRange(selection,15,15);
        selection = uint32_t(signBit << 16) + selection;
        selection = uint32_t(1<<17) - static_cast<uint32_t>(selection);
#endif
        break;
    }
    case -2:
    {
#ifdef INV
        selection = static_cast<uint32_t>(Inverse(Multiplicand));
        selection = selection << 1;
#elif
        selection = static_cast<uint32_t>(Multiplicand) << 1;

        std::bitset<32> bin1(selection);  // 将 num 转换为 16 位二进制
        std::cout << "Binary selection1: " << bin1 << std::endl;

        selection = uint32_t(1<<17) - static_cast<uint32_t>(selection);
        std::bitset<32> bin2(selection);  // 将 num 转换为 16 位二进制
        
        std::cout << "Binary selection2: " << bin2 << std::endl;
#endif
        break;
    }
    default:
        std::cerr << "MultiplierBits is not between -2 with 2"<<std::endl;
        break;
    }
    return selection;
}


int
calculateE(uint32_t PP,uint32_t MultiplierBits,uint32_t Multiplicand_signbit)
{
    int E = 0;
    uint32_t tmpPP = PP;
    int highBit = getBitsFromRange(MultiplierBits, 2, 2);
    int midBit = getBitsFromRange(MultiplierBits, 1, 1);
    int lowBit = getBitsFromRange(MultiplierBits, 0, 0);
    int decodeNum = -2 * highBit + midBit + lowBit;
    if (MultiplierBits==0b000) //X = +0
    {
        E = 1;
    }
    else if(MultiplierBits==0b111) //X = -0
    {
        E = 1;
    }
    else
    {
        if (getBitsFromRange(PP, 16, 16)) //-
        {
            E = 0;
        }else
        {
            E = 1; //+
        }
        if(Multiplicand_signbit)
            if (decodeNum<0)
                E = 1;
    }
    return E;
}



uint32_t
multiplicationUnit(uint16_t Multiplier,uint16_t Multiplicand,uint32_t output_PP[])
{
    int counter = 8; //8 times decode
    uint32_t result = 0;
    std::array<uint32_t, 8> PP;
    //debug
    std::bitset<16> binary1(Multiplier);  // 将 num 转换为 16 位二进制
    // std::cout << "Binary Multiplier: " << binary1 << std::endl;
    std::bitset<16> binary2(Multiplicand);  // 将 num 转换为 16 位二进制
    // std::cout << "Binary Multiplicand: " << binary2 << std::endl;

    //decode
    for (int i = 0; i < counter; i++) //8 times
    {
        std::cout << "...............i:" <<i<<"................"<<std::endl;
        if (i==0)
        {
            uint32_t MultiplierBits = getBitsFromRange(static_cast<uint32_t>(Multiplier), 0, 1);
            MultiplierBits = MultiplierBits << 1; //11->110
            uint32_t tmpPP = BoothDecode(MultiplierBits,Multiplicand);
            int E = 0;
            E = calculateE(tmpPP,MultiplierBits,getBitsFromRange(Multiplicand,15,15));
            int expansionBits = 0;
            expansionBits = E?(0b100):(0b011);
#ifdef PLUS
            PP[0] = static_cast<uint32_t>(expansionBits << 16) + getBitsFromRange(tmpPP,0,15);
#else
            PP[0] = static_cast<uint32_t>(expansionBits << 17) + tmpPP;
#endif
        }else
        {
            uint32_t MultiplierBits = getBitsFromRange(static_cast<uint32_t>(Multiplier), 2*i - 1, 2*i + 1);//[3:1] -> [13:15]
            uint32_t tmpPP = BoothDecode(MultiplierBits,Multiplicand);
            int E = 0;
            E = calculateE(tmpPP,MultiplierBits,getBitsFromRange(Multiplicand,15,15));
            int expansionBits = 0;
            expansionBits = E?(0b11):(0b10);
#ifdef PLUS
            PP[i] = static_cast<uint32_t>(expansionBits << 16) + getBitsFromRange(tmpPP,0,15);
            PP[i] = PP[i]<<(2*i);
#else
            std::bitset<32> bin_tmpPP(tmpPP);  // 将 num 转换为 16 位二进制
            std::cout << "Binary tmpPP: " << tmpPP << std::endl;
            std::cout << "E="<<E <<std::endl;

            if (i==7)
            {
                PP[i] = (tmpPP + static_cast<uint32_t>(E << 17))<<(2*i);
            }
            else
            {
                PP[i] = (tmpPP + static_cast<uint32_t>(expansionBits << 17))<<(2*i);
            }
#endif
        }
        std::bitset<32> binPPi(PP[i]);  // 将 num 转换为 16 位二进制
        std::cout << "Binary PP[i]: " << binPPi << std::endl;
        result = result + PP[i];   //这里还没有将压缩算法算上去，有需要的话可以添加压缩算法
    }
    std::cout<<"-----------------------PP-----------------------"<<std::endl;
    for (int i = 0; i < counter; i++)
    {
        output_PP[i] = PP[i];
        std::bitset<32> binPPi(PP[i]);  // 将 num 转换为 16 位二进制
        std::cout << "Binary PP["<<i<<"]: " << binPPi << std::endl;
    }
    
    return result;
}

std::string input_file_dir = "inputs.txt";
std::string output_PP_file_dir = "output_PP.txt";
std::string output_file_dir = "outputs.txt";

int main()
{
    std::ifstream infile(input_file_dir);
    if(!infile.is_open()){
        std::cerr << "Error: Cannot open file "<< input_file_dir <<"!"<<std::endl;
        return 1;
    }

    std::vector<std::pair<uint16_t,uint16_t>>test_case;
    uint16_t input_a,input_b;
    while (infile>>std::hex>>input_a>>input_b)
    {
        test_case.emplace_back(input_a,input_b);
    }
    
    infile.close();


    // 打开输出文件
    std::ofstream outfile(output_file_dir);
    std::ofstream outPPfile(output_PP_file_dir);

    if (!outfile.is_open() || !outPPfile.is_open()) {
     std::cerr << "Error: Cannot open output files!" << std::endl;
     return 1;
    }

    std::cout<<"finished read input data!"<<std::endl;
    uint32_t output_PP[8];
    for(const auto& [input_a,input_b] : test_case){
        uint32_t output = multiplicationUnit(input_a,input_b,output_PP);
        // 写入 outputs.txt
        outfile << std::hex << std::setfill('0') << std::setw(8) << output << std::endl;
        // 写入 output_PP.txt
        for (int i = 0; i < 8; ++i) {
            outPPfile << std::hex << std::setfill('0') << std::setw(8) << output_PP[i];
            if (i < 7) outPPfile << " "; // 每行部分乘积用空格分隔
        }
        outPPfile << std::endl; // 换行表示下一组部分乘积

    }
    outfile.close();
    outPPfile.close();

    return 0;
}