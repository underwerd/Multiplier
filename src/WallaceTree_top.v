module WallaceTree_top (
    input  [31:0]PP0,
    input  [31:0]PP1,
    input  [31:0]PP2,
    input  [31:0]PP3,
    input  [31:0]PP4,
    input  [31:0]PP5,
    input  [31:0]PP6,
    input  [31:0]PP7,
    output [31:0]Sum,
    output [31:0]Carry
);
    // wire [31:0]Sum  ;
    // wire [31:0]Carry;

    wire [31:0]PP_tmp_0;
    wire [31:0]PP_tmp_1;
    wire [31:0]PP_tmp_2;
    wire [31:0]PP_tmp_3;

    assign PP_tmp_0[3:0]   = PP0[3:0];
    assign PP_tmp_0[31:24] = PP0[31:24];
    assign PP_tmp_1[3:0]   = PP1[3:0];
    assign PP_tmp_1[31:23] = PP3[31:23];
    WallaceTree u_WallaceTree_0(
        .in_0 (PP0[22:4]),
        .in_1 (PP1[22:4]),
        .in_2 (PP2[22:4]),
        .in_3 (PP3[22:4]),
        .out_0(PP_tmp_0[22:4]),
        .out_1(PP_tmp_1[22:4]),
        .Cout (PP_tmp_0[23])
    );
    assign PP_tmp_2[11:0]   = PP4[11:0];
    assign PP_tmp_3[11:0]   = PP5[11:0];
    assign PP_tmp_3[31]  = PP7[31];
    WallaceTree u_WallaceTree_1(
        .in_0 (PP4[30:12]),
        .in_1 (PP5[30:12]),
        .in_2 (PP6[30:12]),
        .in_3 (PP7[30:12]),
        .out_0(PP_tmp_2[30:12]),
        .out_1(PP_tmp_3[30:12]),
        .Cout (PP_tmp_2[31])
    );

    WallaceTree u_WallaceTree_2(
        .in_0 (PP_tmp_0[26:8]),
        .in_1 (PP_tmp_1[26:8]),
        .in_2 (PP_tmp_2[26:8]),
        .in_3 (PP_tmp_3[26:8]),
        .out_0(Sum[26:8]),
        .out_1(Carry[26:8]),
        .Cout (Carry[27])
    );

    wire [4:0]Sum_HalfAdder;
    wire [4:0]Carry_HalfAdder;

    genvar i;
    generate
        for (i = 0; i<5; i=i+1) begin:gen_halfAdder
            HalfAdder u_HalfAdder(
                .X1   (PP_tmp_2[i+27]),
                .X2   (PP_tmp_3[i+27]),
                .Sum  (Sum_HalfAdder[i]),
                .Carry(Carry_HalfAdder[i])
            );
        end
    endgenerate

    assign Carry[31:28] =  Carry_HalfAdder[3:0];
    assign Sum[31:27] =  Sum_HalfAdder;
    assign Carry[7:0] = PP_tmp_0[7:0];
    assign Sum[7:0] = PP_tmp_1[7:0];

endmodule

module WallaceTree(
    input   [18:0]in_0 ,
    input   [18:0]in_1 ,
    input   [18:0]in_2 ,
    input   [18:0]in_3 ,
    output  [18:0]out_0,
    output  [18:0]out_1,
    output        Cout
);
    // wire [17:0]out_0;
    // wire [17:0]out_1;
    // wire       Cout ;

    wire [15:0]Carry_tmp;

    assign out_1[0] = in_2[0];

    HalfAdder u_HalfAdder_0(
        .X1   (in_0[0]),
        .X2   (in_1[0]),
        .Sum  (out_0[0]),
        .Carry(out_1[1])
    );

    CSA32 u_CSA32_0(
        .X1   (in_0[1]),
        .X2   (in_1[1]),
        .X3   (in_2[1]),
        .Sum  (out_0[1]),
        .Carry(out_1[2])

    );

    assign Carry_tmp[0]=1'b0;

    genvar i;
    generate
        for (i = 0;i<15 ; i=i+1) begin:gen_CSA42
            CSA42 u_CSA42(
                .X1   (in_0[i+2]),
                .X2   (in_1[i+2]),
                .X3   (in_2[i+2]),
                .X4   (in_3[i+2]),
                .Cin  (Carry_tmp[i]),
                .Cout (Carry_tmp[i+1]),
                .Sum  (out_0[i+2]),
                .Carry(out_1[i+3])
            );
        end
    endgenerate

    CSA32 u_CSA32_1(
        .X1   (Carry_tmp[15]),
        .X2   (in_2[17] ),
        .X3   (in_3[17] ),
        .Sum  (out_0[17]),
        .Carry(out_1[18])
    );

    HalfAdder u_HalfAdder_1(
        .X1   (in_2[18] ),
        .X2   (in_3[18] ),
        .Sum  (out_0[18]),
        .Carry(Cout)
    );



endmodule

module CSA42 (
    input   X1   ,
    input   X2   ,
    input   X3   ,
    input   X4   ,
    input   Cin  ,
    output  Cout ,
    output  Sum  ,
    output  Carry
);
    // wire Carry;
    // wire Sum;
    // wire Cout;
    wire Xor = (X1 ^ X2) ^ (X3 ^ X4);
    assign Sum = Xor ^ Cin;
    assign Carry = Xor?Cin:X1;
    assign Cout = (X2&X3)|(X2&X4)|(X4&X3);

endmodule

module CSA32 (
    input   X1,
    input   X2,
    input   X3,
    output  Carry,
    output  Sum
);
    // wire Carry;
    // wire Sum;
    assign Carry = (X1 & X2) | (X3 & (X1 | X2));
    assign Sum = X1 ^ X2 ^ X3;

endmodule

module HalfAdder(
    input X1,
    input X2,
    output Sum,
    output Carry
);
    // wire Sum;
    // wire Carry;
    assign Sum = X1 ^ X2;
    assign Carry = X1 & X2;

endmodule
