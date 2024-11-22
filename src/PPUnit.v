module PPUnit (
    input  X1,
    input  X2,
    input  NEG1,
    input  NEG2,
    input  [15:0]Multiplicant,
    output [16:0]PP
);
    // wire [16:0]PP;

    wire  [16:0]PP_tmp;

    wire [16:0]Mul_Shift = (~X1&~X2&~NEG1&~NEG2)?17'b0:
                                       (X2|NEG2)?{Multiplicant,1'b0}:
                                       {Multiplicant[15],Multiplicant};
    wire [16:0]Inv_Mul_Shift;
    assign PP_tmp = (NEG1|NEG2)?Inv_Mul_Shift:Mul_Shift;
    assign PP = PP_tmp;

    Inverse17 u_Inverse17(
        .in(Mul_Shift),
        .out(Inv_Mul_Shift)
    );


endmodule

//取相反数模块，将不会产生+1的信号，可以减少部分积的生成
module Inverse (
    input [15:0]in,
    output [15:0]out
);
    wire [14:0]A;
    wire [14:0]AStage1;
    wire [14:0]AStage2;
    wire [14:0]AStage3;
    wire [14:0]AStage4;

    assign A = in[14:0];

    assign AStage1 = {(A[14:1] | A[13:0]),A[0]};
    assign AStage2 = {(AStage1[14:2] | AStage1[12:0]),AStage1[1:0]};
    assign AStage3 = {(AStage2[14:4] | AStage2[10:0]),AStage2[3:0]};
    assign AStage4 = {(AStage3[14:8] | AStage3[6:0] ),AStage3[7:0]};

    assign out = (in ^ {AStage4,1'b0});

endmodule

//取相反数模块，将不会产生+1的信号，可以减少部分积的生成
module Inverse17 (
    input [16:0]in,
    output [16:0]out
);
    wire [15:0]A;
    wire [15:0]AStage1;
    wire [15:0]AStage2;
    wire [15:0]AStage3;
    wire [15:0]AStage4;

    assign A = in[15:0];

    assign AStage1 = {(A[15:1] | A[14:0]),A[0]};
    assign AStage2 = {(AStage1[15:2] | AStage1[13:0]),AStage1[1:0]};
    assign AStage3 = {(AStage2[15:4] | AStage2[11:0]),AStage2[3:0]};
    assign AStage4 = {(AStage3[15:8] | AStage3[7:0] ),AStage3[7:0]};

    assign out = (in ^ {AStage4,1'b0});

endmodule
