#include <iostream>
#include <fstream>
#include <vector>
#include <iomanip>
#include <cstdlib> // for rand()
#include <cstdint>
#include <array>
#include <random>
#include <bitset>
#include <string>

#define RANDOM_NUM 100


// 定义边界值和特殊值
const std::vector<uint16_t> special_values = {
    0x0000, 0x7FFF, 0x8000, 0xFFFF, 0x0001, 0xFFFF, 0x1234, 0xABCD
};

int main(int argc,char* argv[]) {
    // 创建输出文件

    int random_num = RANDOM_NUM;

    if (argc == 2) {
        // 将传入的参数转换为整数
        random_num = std::atoi(argv[1]);
    }

    std::ofstream outfile("inputs.txt");
    if (!outfile.is_open()) {
        std::cerr << "Error: Cannot open file for writing!" << std::endl;
        return 1;
    }

    // 存储所有 (a, b) 的组合
    std::vector<std::pair<int16_t, int16_t>> test_cases;

    // 1. 组合特殊值和边界值
    for (int16_t a : special_values) {
        for (int16_t b : special_values) {
            test_cases.emplace_back(a, b);
        }
    }

    // 2. 添加随机组合
    for (int i = 0; i < random_num; ++i) { // 生成 20 对随机值
        int16_t a = static_cast<int16_t>(rand() % 0x10000 - 0x8000); // [-32768, 32767]
        int16_t b = static_cast<int16_t>(rand() % 0x10000 - 0x8000);
        test_cases.emplace_back(a, b);
    }

    // 3. 将所有组合写入文件
    for (const auto& [a, b] : test_cases) {
        outfile << std::hex << std::setfill('0') << std::setw(4) << (uint16_t)a << " "
                << std::hex << std::setfill('0') << std::setw(4) << (uint16_t)b << std::endl;
    }

    outfile.close();
    std::cout << "Test cases written to inputs.txt" << std::endl;

    return 0;
}