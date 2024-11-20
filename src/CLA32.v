module CLA32 (
    input [31:0] A,        // 32-bit input A
    input [31:0] B,        // 32-bit input B
    input Cin,             // 输入进位
    output [31:0] Sum,     // 32-bit sum result
    output Cout            // 进位输出
);

    // Intermediate signals for Generate and Propagate
    wire [31:0] G, P;
    wire [32:0] C;  // Carry signals: C[0] to C[32]

    // Generate and Propagate calculations
    assign G = A & B;          // Generate: G[i] = A[i] & B[i]
    assign P = A ^ B;          // Propagate: P[i] = A[i] ^ B[i]

    // Carry calculations
    assign C[0] = Cin;         // Initial carry (Cin)

    // Calculate carry signals C1 to C32 using the CLA logic
    genvar i;
    generate
        for (i = 1; i <= 31; i = i + 1) begin : gen_carry_calc
            assign C[i] = G[i-1] | (P[i-1] & C[i-1]);
        end
    endgenerate

    // Final carry out is C[32]
    assign Cout = G[31] | (P[31] & C[31]);

    // Sum calculation
    assign Sum = P ^ C[31:0];  // Sum: S[i] = P[i] ^ C[i]

endmodule
