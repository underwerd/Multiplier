module Multiplier_top_p (
    input clk,
    input rst_n,
    input [15:0]Multiplicant,
    input [15:0]Multiplier  ,
    
    output[31:0]result
);
    // wire [31:0]result;

    wire  [31:0]PP0;
    wire  [31:0]PP1;
    wire  [31:0]PP2;
    wire  [31:0]PP3;
    wire  [31:0]PP4;
    wire  [31:0]PP5;
    wire  [31:0]PP6;
    wire  [31:0]PP7;

    reg  [31:0]PP0_r;
    reg  [31:0]PP1_r;
    reg  [31:0]PP2_r;
    reg  [31:0]PP3_r;
    reg  [31:0]PP4_r;
    reg  [31:0]PP5_r;
    reg  [31:0]PP6_r;
    reg  [31:0]PP7_r;


    PP_top u_PP_top(
        .Multiplicant(Multiplicant),
        .Multiplier  (Multiplier),
        .PP0         (PP0),
        .PP1         (PP1),
        .PP2         (PP2),
        .PP3         (PP3),
        .PP4         (PP4),
        .PP5         (PP5),
        .PP6         (PP6),
        .PP7         (PP7)
    );

    always @(posedge clk) begin
        if(~rst_n) begin
            PP0_r<=0;
            PP1_r<=0;
            PP2_r<=0;
            PP3_r<=0;
            PP4_r<=0;
            PP5_r<=0;
            PP6_r<=0;
            PP7_r<=0;
        end else begin
            PP0_r<=PP0;
            PP1_r<=PP1;
            PP2_r<=PP2;
            PP3_r<=PP3;
            PP4_r<=PP4;
            PP5_r<=PP5;
            PP6_r<=PP6;
            PP7_r<=PP7;
        end
    end

    wire [31:0]Sum   ;
    wire [31:0]Carry ;

    reg [31:0]Sum_r  ;
    reg [31:0]Carry_r;

    WallaceTree_top u_WallaceTree_top(
        .PP0  (PP0_r  ),
        .PP1  (PP1_r  ),
        .PP2  (PP2_r  ),
        .PP3  (PP3_r  ),
        .PP4  (PP4_r  ),
        .PP5  (PP5_r  ),
        .PP6  (PP6_r  ),
        .PP7  (PP7_r  ),
        .Sum  (Sum  ),
        .Carry(Carry)
    );

    always @(posedge clk) begin
        if(~rst_n) begin
           Sum_r<=0;
           Carry_r<=0;
        end else begin
           Sum_r<=Sum;
           Carry_r<=Carry;
        end
    end


    ksa_top u_kas_top(
        .i_a    (Sum_r),
        .i_b    (Carry_r),
        .c0     (1'b0),
        .o_s    (result),
        .o_carry()
    );
//    CLA32 u_CLA32(
//        .A   (Sum_r),
//        .B   (Carry_r),
//        .Cin (1'b0),
//        .Sum (result),
//        .Cout()
//    );

endmodule
