// `include "./BoothEndecode.v"
// `include "./PPUnit.v"

module PP_top (
    input [15:0]Multiplicant,
    input [15:0]Multiplier,
    output [31:0]PP0,
    output [31:0]PP1,
    output [31:0]PP2,
    output [31:0]PP3,
    output [31:0]PP4,
    output [31:0]PP5,
    output [31:0]PP6,
    output [31:0]PP7
);
    // wire  [31:0]PP0;
    // wire  [31:0]PP1;
    // wire  [31:0]PP2;
    // wire  [31:0]PP3;
    // wire  [31:0]PP4;
    // wire  [31:0]PP5;
    // wire  [31:0]PP6;
    // wire  [31:0]PP7;

    wire  [16:0]Multiplier_extand;
    wire  [17 * 8 - 1:0]PP_tmp        ;
    wire  [32 * 8 - 1:0]PP            ;
    wire  [3  * 8 - 1:0]MultiplierBits;
    wire  [8-1:0]       X1            ;
    wire  [8-1:0]       X2            ;
    wire  [8-1:0]       NEG1          ;
    wire  [8-1:0]       NEG2          ;
    wire  [8-1:0]       E             ;

    assign Multiplier_extand = {Multiplier,1'b0};

    genvar i;
    generate
        for (i = 0; i<8; i=i+1) begin:gen_PP_tmp
            assign MultiplierBits[3*i+:3] = Multiplier_extand[2*i+:3];
            BoothEndecode U_BoothEndecode(
                .MultiplierBits(MultiplierBits[3*i+:3]),
                .X1            (X1[i]                 ),
                .X2            (X2[i]                 ),
                .NEG1          (NEG1[i]               ),
                .NEG2          (NEG2[i]               )
            );
            PPUnit u_PPUint(
                .X1(X1[i]),
                .X2(X2[i]),
                .NEG1(NEG1[i]),
                .NEG2(NEG2[i]),
                .Multiplicant(Multiplicant),
                .PP  (PP_tmp[17*i+:17])
            );
            CaculateE u_Caculate(
                .MultiplierBits(MultiplierBits[3*i+:3]),
                .PP_sign_bit   (PP_tmp[17*(i+1)-1]),
                .E             (E[i])
            );
            if (i==0) begin:gen_pp_if
                assign PP[32*i+:32] = {13*{1'b0},E[i],~E[i],~E[i],PP_tmp[17*i+:16]};
            end else begin:gen_pp_else
                assign PP[32*i+:32] = {(14)*{1'b0},1'b1,E[i],PP_tmp[17*i+:16]}<<(2*i);
            end
        end
    endgenerate

    assign {PP7,PP6,PP5,PP4,PP3,PP2,PP1,PP0} = PP;

endmodule

module CaculateE (
    input [2:0]MultiplierBits,
    input PP_sign_bit,
    output E
);

    reg E_tmp;
    always@(*) begin
        if (MultiplierBits==3'b000 && MultiplierBits==3'b111) begin
            E_tmp = 1'b1;
        end else if (PP_sign_bit)begin
            E_tmp = 1'b0;
        end else begin
            E_tmp = 1'b1;
        end
    end
    assign E = E_tmp;

endmodule
