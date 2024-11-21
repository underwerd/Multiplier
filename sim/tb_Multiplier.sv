// `include "../src/Multiplier_top.v"

// Testbench 模块，用于验证 signed_multiplier
module tb_Multiplier();

    // 定义参数和信号
    parameter INPUTS_FILE = "../cmodel/inputs.txt";
    parameter OUTPUTS_FILE = "../cmodel/outputs.txt";
    parameter OUTPUT_PP_FILE = "../cmodel/output_PP.txt";

    int infile_inputs, infile_outputs, infile_output_pp; // 文件句柄
    int a, b;              // 输入值 (uint16_t)
    int golden_output;      // 输出值 (uint32_t)
    int golden_pp[8];       // 部分乘积 (uint32_t[8])
    int is_pass = 1;

    // 输入信号
    reg signed [15:0] A;
    reg signed [15:0] B;
    
    // 输出信号
    wire signed [31:0] Product;
    wire signed [31:0] PartialProduct[0:7];
    wire signed [31:0] TreeSum;
    wire signed [31:0] TreeCarry;
    wire signed [31:0] TreeResult;

    assign TreeResult = TreeSum + TreeCarry;
    
    // 实例化 16-bit 有符号乘法器
    Multiplier_top_dtf uut (
        .Multiplicant(A),
        .Multiplier(B),
        .result(Product),
        .PP0  (PartialProduct[0]),
        .PP1  (PartialProduct[1]),
        .PP2  (PartialProduct[2]),
        .PP3  (PartialProduct[3]),
        .PP4  (PartialProduct[4]),
        .PP5  (PartialProduct[5]),
        .PP6  (PartialProduct[6]),
        .PP7  (PartialProduct[7]),
        .Sum  (TreeSum),
        .Carry(TreeCarry)
    );
    
    // 初始化信号
    initial begin
        // 打印测试开始信息
        $display("Testbench started");

        // 设置时间单位
        $timeformat(-9, 1, "ns", 10);

// 打开文件
        infile_inputs = $fopen(INPUTS_FILE, "r");
        infile_outputs = $fopen(OUTPUTS_FILE, "r");
        infile_output_pp = $fopen(OUTPUT_PP_FILE, "r");

        if (infile_inputs == 0 || infile_outputs == 0 || infile_output_pp == 0) begin
          $display("Error: Unable to open one or more files.");
          $finish;
        end

        $display("Files opened successfully. Starting test...");

        // 循环读取文件内容
        while (!$feof(infile_inputs)) begin
            // 从 inputs.txt 读取 a 和 b
            void($fscanf(infile_inputs, "%h %h\n", a, b));
            A = a;
            B = b;

            // 从 outputs.txt 读取 golden_output
            void($fscanf(infile_outputs, "%h\n", golden_output));

            // 从 output_PP.txt 读取 golden_pp
            for (int i = 0; i < 8; i++) begin
                void($fscanf(infile_output_pp, "%h", golden_pp[i]));
            end

            // 等待 1 时钟周期
            #10;

            // 验证结果
            if (Product !== golden_output) begin
                $display("Mismatch in Product: Expected %h, Got %h", golden_output, Product);
                is_pass = 0;
            end else begin
                $display("Product matched: %h", Product);
            end

            if (TreeResult !== golden_output) begin
                $display("Mismatch in TreeResult: Expected %h, Got %h", golden_output, TreeResult);
                is_pass = 0;
            end else begin
                $display("TreeResult matched: %h", TreeResult);
            end

            for (int i = 0; i < 8; i++) begin
                if (PartialProduct[i] !== golden_pp[i]) begin
                $display("Mismatch in PartialProduct[%0d]: Expected %h, Got %h", i, golden_pp[i], PartialProduct[i]);
                is_pass = 0;
                end else begin
                $display("PartialProduct matched");
                end
            end
        end

        if (is_pass==0) begin
            $display("Failed");
        end else begin
            $display("Pass");
        end

        // 关闭文件
        $fclose(infile_inputs);
        $fclose(infile_outputs);
        $fclose(infile_output_pp);

        $display("Test completed.");
        $finish;
    end

    initial begin
        $fsdbDumpfile("tb_Multiplier_dft.fsdb");
        $fsdbDumpvars;
    end
endmodule
