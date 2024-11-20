#!/bin/bash

# 设置工作目录
PROJECT_DIR=$(pwd)

# 设计文件和测试文件的路径
SRC_DIR="$PROJECT_DIR/src"
SIM_DIR="$PROJECT_DIR/sim"

# 设置VCS仿真编译命令
VCS_CMD="vcs -full64 -debug_pp -sv +vcs+lic+wait"  # -full64 表示使用64位仿真，-debug_pp 启用调试，-sdf 可以启用 SDF 仿真

# 创建仿真目录（如果不存在）
mkdir -p $SIM_DIR

# 编译设计文件和测试文件
echo "Compiling design and testbench files..."
$VCS_CMD  -f filelist.f

# 查看编译命令的返回值
if [ $? -ne 0 ]; then
    echo "Compilation failed. Exiting script..."
    return 1   # 改为 return，这不会退出终端会话
fi

echo "Compilation successful. Proceeding to simulation..."

# 运行仿真
echo "Running simulation..."
./simv +vcd

# 检查仿真结果
if [ $? -eq 0 ]; then
    echo "Simulation finished successfully."
else
    echo "Simulation failed."
fi

