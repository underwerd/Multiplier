module BoothEndecode (
    input [2:0] MultiplierBits,
    output X1,
    output X2,
    output NEG1,
    output NEG2
);

    wire M_High;
    wire M_Mid;
    wire M_Low;
    assign M_High = MultiplierBits[2];
    assign M_Mid = MultiplierBits[1];
    assign M_Low = MultiplierBits[0];

    // wire X1;
    // wire X2;
    // wire NEG1;
    // wire NEG2;
    assign X1 = ~(~(M_Low ^ M_Mid) | M_High);
    assign X2 = ~(~(M_Low & M_Mid) | M_High);
    assign NEG1 = ~(~(M_Low ^ M_Mid) | ~M_High);
    assign NEG2 = ~(~(M_High & ~M_Mid) | M_Low);

endmodule
