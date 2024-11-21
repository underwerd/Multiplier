#include <cstdint>
#include <iostream>
#include <array>
#include <random>
#include <cstdint>
#include <bitset>
#include <fstream>
#include <string>

#define PLUS //开启表示采用plus设计方案，可以让减少加法器的个数，每一个product只有16bit，不需要17bit
#define INV //开启表示采用优化设计过的INV模型
#define RANDOM

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
    std::cout << "Binary representation: " << binary << std::endl;
    int decodeNum = -2 * highBit + midBit + lowBit;
    std::cout<<"highBit:"<<highBit<<std::endl;
    std::cout<<"midBit:"<<midBit<<std::endl;
    std::cout<<"lowBit:"<<lowBit<<std::endl;
    std::cout<<"decodeNum:"<<decodeNum<<std::endl;
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
calculateE(uint32_t PP,uint32_t MultiplierBits)
{
    int E = 0;
    uint32_t tmpPP = PP;
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
    }
    return E;
}



uint32_t
multiplicationUnit(uint16_t Multiplier,uint16_t Multiplicand)
{
    int counter = 8; //8 times decode
    uint32_t result = 0;
    std::array<uint32_t, 8> PP;
    //debug
    std::bitset<16> binary1(Multiplier);  // 将 num 转换为 16 位二进制
    std::cout << "Binary Multiplier: " << binary1 << std::endl;
    std::bitset<16> binary2(Multiplicand);  // 将 num 转换为 16 位二进制
    std::cout << "Binary Multiplicand: " << binary2 << std::endl;

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
            E = calculateE(tmpPP,MultiplierBits);
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
            E = calculateE(tmpPP,MultiplierBits);
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
        std::bitset<32> binPPi(PP[i]);  // 将 num 转换为 16 位二进制
        std::cout << "Binary PP["<<i<<"]: " << binPPi << std::endl;
    }
    
    return result;
}

uint32_t multiplicationUnit_r(uint16_t Multiplier,uint16_t Multiplicand){
    int32_t result = 0;
    result = static_cast<int16_t>(Multiplier) * static_cast<int16_t>(Multiplicand);
    return static_cast<uint32_t>(result);
}


int main(int argc, char* argv[])
{
    std::random_device rd;  // 使用随机设备种子
    std::mt19937 gen(rd()); // 使用 Mersenne Twister 算法生成随机数
    // 定义范围为 0 到 65535 的分布
    std::uniform_int_distribution<uint16_t> dis(0, 65535);

    // 生成随机数
    int MAX_NUM = 10000;

    // 如果用户传入了命令行参数
    if (argc == 2) {
        // 将传入的参数转换为整数
        MAX_NUM = std::atoi(argv[1]);
    }

    std::ofstream outFile("result.txt");

    for (size_t i = 0; i < MAX_NUM; i++)
    {
#ifdef RANDOM
        uint16_t random_number1 = dis(gen);
        uint16_t random_number2 = dis(gen);
#else
        uint16_t random_number1 = -8306 + 65536;
        uint16_t random_number2 = 25244;
#endif
        std::cout<<"-----------------------start-----------------------"<<std::endl;
        std::cout<<"i="<<i<<std::endl;

        uint32_t result = multiplicationUnit(random_number1,random_number2);
        uint32_t result_r = multiplicationUnit_r(random_number1,random_number2);

        int16_t ran_num1 = static_cast<int16_t>(random_number1);
        int16_t ran_num2 = static_cast<int16_t>(random_number2);
        std::cout<<"-----------------------end-----------------------"<<std::endl;
        printf("random_number1=%d,random_number2=%d\n", static_cast<int>(ran_num1),static_cast<int>(ran_num2));
        printf("result=%d\n",static_cast<int>(result));
        printf("result_r=%d\n",static_cast<int>(result_r));
        

        //compare
        if (result!=result_r)
        {
            outFile << "fail" << std::endl;
            outFile << "MAX_NUM: "<<MAX_NUM<<std::endl; 
            outFile << "i="<<i<<std::endl;
            outFile << "result="<<static_cast<int>(result)<<std::endl;
            outFile << "result_r="<<static_cast<int>(result_r)<<std::endl;
            outFile.close();
            return 0;
        }
        
    }
    outFile << "pass" << std::endl;
    outFile << "MAX_NUM: "<<MAX_NUM<<std::endl;
    outFile.close();

    return 0;
}
//                _0110001010011100
//               0_1100010100111000
//0000000000000001_0011101011001000
//0000000000010000_0000000000000000
//0000000001000110_0010100111000000
//0000000101001110_1011001000000000
//0000010000000000_0000000000000000
//0001000000000000_0000000000000000
//0100110001010011_1000000000000000
//0110011101011001_0000000000000000


//0000000000000111_0011101011001000


// Binary PP[0]: 00000000000000110011101011001000
// Binary PP[1]: 00000000000011000000000000000000
// Binary PP[2]: 00000000001101100010100111000000
// Binary PP[3]: 00000000100011101011001000000000