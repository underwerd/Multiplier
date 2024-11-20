// `include "../src/Multiplier_top.v"

// Testbench 模块，用于验证 signed_multiplier
module tb_Multiplier();

    // 输入信号
    reg signed [15:0] a;
    reg signed [15:0] b;
    
    // 输出信号
    wire signed [31:0] product;
    
    // 实例化 16-bit 有符号乘法器
    Multiplier_top uut (
        .Multiplicant(a),
        .Multiplier(b),
        .result(product)
    );
    
    // 初始化信号
    initial begin
        // 打印测试开始信息
        $display("Testbench started");

        // 设置时间单位
        $timeformat(-9, 1, "ns", 10);
        
        // 测试数据
        a = 16'sd25244; b = -16'sd8306;  // 
        #10;
        $display("a = %d, b = %d, product = %d", a, b, product);
        
        a = -16'sd5; b = 16'sd2; // -5 * 2 = -10
        #10;
        $display("a = %d, b = %d, product = %d", a, b, product);

        a = -16'sd7; b = -16'sd3; // -7 * -3 = 21
        #10;
        $display("a = %d, b = %d, product = %d", a, b, product);
        
        a = 16'sd0; b = 16'sd7;  // 0 * 7 = 0
        #10;
        $display("a = %d, b = %d, product = %d", a, b, product);

        a = 16'sd32767; b = 16'sd1; // 32767 * 1 = 32767
        #10;
        $display("a = %d, b = %d, product = %d", a, b, product);
        
        a = 16'sd32767; b = -16'sd1; // 32767 * -1 = -32767
        #10;
        $display("a = %d, b = %d, product = %d", a, b, product);

        // 测试溢出
        a = 16'sd32767; b = 16'sd32767; // 32767 * 32767 = 1073676289, which overflows 32 bits
        #10;
        $display("a = %d, b = %d, product = %d", a, b, product);

        // 测试结束
        $stop;
    end
    initial begin
        $fsdbDumpfile("tb_Multiplier.fsdb");
        $fsdbDumpvars;
    end
endmodule
