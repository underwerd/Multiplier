//`define DEBUG_PP
`timescale 1ns/1ps

`define cycle_period 10
`define post_sim

module tb_Multiplier();

    // 定义参数和信号
    parameter INPUTS_FILE = "/home/ICer/ic_prjs/multiplier/cmodel/inputs.txt";
    parameter OUTPUTS_FILE = "/home/ICer/ic_prjs/multiplier/cmodel/outputs.txt";
    parameter OUTPUT_PP_FILE = "/home/ICer/ic_prjs/multiplier/cmodel/output_PP.txt";

    int infile_inputs, infile_outputs, infile_output_pp; // 文件句柄
    int a, b;              // 输入值 (uint16_t)
    int golden_output;      // 输出值 (uint32_t)
    int golden_pp[8];       // 部分乘积 (uint32_t[8])
    int clk_cnt = 0;
    int is_pass = 1;

    // 输入信号
    reg signed [15:0] A;
    reg signed [15:0] B;
    reg clk;
    reg rst_n;
     
    // 输出信号
    reg signed [31:0] Golden_p_d_1;
    reg signed [31:0] Golden_p_d_2;
    wire signed [31:0] Product;
    wire signed [31:0] PartialProduct[0:7];
    wire signed [31:0] TreeSum;
    wire signed [31:0] TreeCarry;
    wire signed [31:0] TreeResult;

    assign TreeResult = TreeSum + TreeCarry;
    
    // 实例化 16-bit 有符号乘法器
    Multiplier_top_p uut (
        .clk(clk),
        .rst_n(rst_n),
        .Multiplicant(B),
        .Multiplier(A),
        .result(Product)
    );
    
    //====== clock generation =====
    initial begin
        rst_n = 1'b1;
        clk = 1'b1;
        #(2*`cycle_period)//wait reset
        while(1) begin
        #(`cycle_period/2) clk = ~clk; 
        end
    end

    always@(posedge clk)begin
        Golden_p_d_1 <= golden_output;
        Golden_p_d_2 <= Golden_p_d_1;
    end

    
    // 初始化信号
    initial begin
        // 打印测试开始信息
        $display("Testbench tb_MUltiolier_p started");
        #(2*`cycle_period)//wait reset

        // 设置时间单位
        //$timeformat(-9, 1, "ns", 10);
        #(`cycle_period/2)

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
            $fscanf(infile_inputs, "%h %h\n", a, b);
            A = a;
            B = b;

            //wait one period
            #(`cycle_period);
            // 从 outputs.txt 读取 golden_output
            $fscanf(infile_outputs, "%h\n", golden_output);
            clk_cnt++;

            if(clk_cnt>=2)begin
                
                // 验证结果
                if (Product !== Golden_p_d_1) begin
                    $display("Mismatch in Product: Expected %h, Got %h", golden_output, Product);
                    //$display("A %h,B %h",A,B);
                    is_pass = 0;
                end else begin
                    //$display("Product matched: %h", Product);
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
        $fsdbDumpfile("tb_Multiplier_p.fsdb");
        $fsdbDumpvars;
    end

    `ifdef post_sim
    initial begin
        $sdf_annotate("../syn/output/Multiplier_top_p.sdf",uut);
    end
    `endif


endmodule
