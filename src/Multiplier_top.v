// `include "./PP_top.v"
// `include "./CLA32.v"
// `include "./WallaceTree_top.v"

module Multiplier_top (
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

    wire [31:0]Sum   ;
    wire [31:0]Carry ;

    WallaceTree_top u_WallaceTree_top(
        .PP0  (PP0  ),
        .PP1  (PP1  ),
        .PP2  (PP2  ),
        .PP3  (PP3  ),
        .PP4  (PP4  ),
        .PP5  (PP5  ),
        .PP6  (PP6  ),
        .PP7  (PP7  ),
        .Sum  (Sum  ),
        .Carry(Carry)
    );

    CLA32 u_CLA32(
        .A   (Sum),
        .B   (Carry),
        .Cin (1'b0),
        .Sum (result),
        .Cout()
    );

endmodule
