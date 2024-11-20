module PPUnit (
    input  X1,
    input  X2,
    input  NEG1,
    input  NEG2,
    input  [15:0]Multiplicant,
    output [16:0]PP
);
    // wire [16:0]PP;

    wire [15:0]Inv_Mul;
    wire [16:0]Mul_Shift;
    wire [16:0]Inv_Mul_Shift;
    reg  [16:0]PP_tmp;
    assign Mul_Shift = {Multiplicant,1'b0};
    assign Inv_Mul_Shift = {Inv_Mul,1'b0};

    always @(*) begin
        case({X1,X2,NEG1,NEG2})
            4'b1000:PP_tmp = {Multiplicant[15],Multiplicant};
            4'b0100:PP_tmp = {Mul_Shift};
            4'b0010:PP_tmp = {Inv_Mul[15],Inv_Mul};
            4'b0001:PP_tmp = Inv_Mul_Shift;
            4'b0000:PP_tmp = 17'b0;
            default:PP_tmp = 17'b0;
        endcase
    end
    assign PP = PP_tmp;

    Inverse u_Inverse(
        .in(Multiplicant),
        .out(Inv_Mul)
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
