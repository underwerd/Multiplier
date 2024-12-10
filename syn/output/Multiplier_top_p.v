/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Tue Dec  3 19:52:28 2024
/////////////////////////////////////////////////////////////


module BoothEndecode_mydesign_7 ( X1, NEG1, NEG2, MultiplierBits_2_, 
        MultiplierBits_1_ );
  input MultiplierBits_2_, MultiplierBits_1_;
  output X1, NEG1, NEG2;
  wire   n1, n2;

  NOR2X1 U1 ( .A(MultiplierBits_2_), .B(n2), .Y(X1) );
  NOR2X1 U2 ( .A(n2), .B(n1), .Y(NEG1) );
  INVX1 U3 ( .A(MultiplierBits_2_), .Y(n1) );
  INVX1 U4 ( .A(MultiplierBits_1_), .Y(n2) );
  NOR2X2 U5 ( .A(MultiplierBits_1_), .B(n1), .Y(NEG2) );
endmodule


module Inverse17_mydesign_7 ( in, out );
  input [16:0] in;
  output [16:0] out;
  wire   n1, n2, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32;

  NOR2X1 U1 ( .A(in[12]), .B(n25), .Y(n26) );
  NOR2X1 U2 ( .A(in[9]), .B(n19), .Y(n20) );
  INVX2 U3 ( .A(n18), .Y(n19) );
  NOR2X1 U4 ( .A(in[4]), .B(n9), .Y(n10) );
  INVX1 U5 ( .A(n6), .Y(n7) );
  INVX1 U6 ( .A(n5), .Y(n4) );
  XNOR2X1 U7 ( .A(n31), .B(in[16]), .Y(out[16]) );
  INVX1 U8 ( .A(n30), .Y(n32) );
  INVX1 U9 ( .A(n28), .Y(n29) );
  INVX1 U10 ( .A(n26), .Y(n27) );
  NOR2X2 U11 ( .A(in[11]), .B(n23), .Y(n24) );
  NOR2X2 U12 ( .A(in[10]), .B(n21), .Y(n22) );
  INVX2 U13 ( .A(n20), .Y(n21) );
  NOR2X2 U14 ( .A(in[6]), .B(n13), .Y(n14) );
  NOR2X1 U15 ( .A(in[5]), .B(n11), .Y(n12) );
  INVXL U16 ( .A(n1), .Y(n2) );
  INVX1 U17 ( .A(in[0]), .Y(n1) );
  NOR2X1 U18 ( .A(in[1]), .B(n2), .Y(n5) );
  NOR2X1 U19 ( .A(in[2]), .B(n4), .Y(n6) );
  AOI21XL U20 ( .A0(in[14]), .A1(n29), .B0(n30), .Y(out[14]) );
  AOI21XL U21 ( .A0(in[13]), .A1(n27), .B0(n28), .Y(out[13]) );
  AOI21XL U22 ( .A0(in[12]), .A1(n25), .B0(n26), .Y(out[12]) );
  AOI21XL U23 ( .A0(in[11]), .A1(n23), .B0(n24), .Y(out[11]) );
  AOI21XL U24 ( .A0(in[10]), .A1(n21), .B0(n22), .Y(out[10]) );
  AOI21XL U25 ( .A0(in[9]), .A1(n19), .B0(n20), .Y(out[9]) );
  AOI21XL U26 ( .A0(in[7]), .A1(n15), .B0(n16), .Y(out[7]) );
  AOI21XL U27 ( .A0(in[8]), .A1(n17), .B0(n18), .Y(out[8]) );
  AOI21XL U28 ( .A0(in[4]), .A1(n9), .B0(n10), .Y(out[4]) );
  AOI21XL U29 ( .A0(in[5]), .A1(n11), .B0(n12), .Y(out[5]) );
  AOI21XL U30 ( .A0(in[6]), .A1(n13), .B0(n14), .Y(out[6]) );
  INVX1 U31 ( .A(n22), .Y(n23) );
  INVX1 U32 ( .A(n24), .Y(n25) );
  NOR2X2 U33 ( .A(in[7]), .B(n15), .Y(n16) );
  INVX1 U34 ( .A(n16), .Y(n17) );
  INVXL U35 ( .A(n1), .Y(out[0]) );
  AOI21XL U36 ( .A0(in[2]), .A1(n4), .B0(n6), .Y(out[2]) );
  AOI21XL U37 ( .A0(out[0]), .A1(in[1]), .B0(n5), .Y(out[1]) );
  NOR2X1 U38 ( .A(in[3]), .B(n7), .Y(n8) );
  AOI21XL U39 ( .A0(in[3]), .A1(n7), .B0(n8), .Y(out[3]) );
  INVX1 U40 ( .A(n8), .Y(n9) );
  INVX1 U41 ( .A(n10), .Y(n11) );
  INVX1 U42 ( .A(n12), .Y(n13) );
  INVX1 U43 ( .A(n14), .Y(n15) );
  NOR2X1 U44 ( .A(in[8]), .B(n17), .Y(n18) );
  NOR2X2 U45 ( .A(in[13]), .B(n27), .Y(n28) );
  NOR2X2 U46 ( .A(in[14]), .B(n29), .Y(n30) );
  NOR2X2 U47 ( .A(in[15]), .B(n32), .Y(n31) );
  AOI21XL U48 ( .A0(in[15]), .A1(n32), .B0(n31), .Y(out[15]) );
endmodule


module PPUnit_mydesign_7 ( X1, NEG1, NEG2, Multiplicant, PP );
  input [15:0] Multiplicant;
  output [16:0] PP;
  input X1, NEG1, NEG2;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114;
  wire   [16:0] Mul_Shift;
  wire   [16:0] Inv_Mul_Shift;

  Inverse17_mydesign_7 u_Inverse17 ( .in(Mul_Shift), .out(Inv_Mul_Shift) );
  NAND2X1 U2 ( .A(n107), .B(Inv_Mul_Shift[15]), .Y(n108) );
  OAI2BB1X1 U3 ( .A0N(n8), .A1N(n45), .B0(n82), .Y(Mul_Shift[8]) );
  OAI2BB1X1 U4 ( .A0N(n4), .A1N(n33), .B0(n66), .Y(Mul_Shift[4]) );
  OAI2BB1X1 U5 ( .A0N(n7), .A1N(n43), .B0(n78), .Y(Mul_Shift[7]) );
  OAI2BB1X1 U6 ( .A0N(n5), .A1N(n36), .B0(n70), .Y(Mul_Shift[5]) );
  OAI2BB1X1 U7 ( .A0N(n6), .A1N(n25), .B0(n74), .Y(Mul_Shift[6]) );
  NAND2X1 U8 ( .A(n27), .B(n9), .Y(n82) );
  OAI2BB1X1 U9 ( .A0N(n14), .A1N(n35), .B0(n106), .Y(Mul_Shift[14]) );
  OAI2BB1X1 U10 ( .A0N(n9), .A1N(n20), .B0(n86), .Y(Mul_Shift[9]) );
  INVX1 U11 ( .A(n64), .Y(n75) );
  INVX1 U12 ( .A(n63), .Y(n79) );
  INVX1 U13 ( .A(n50), .Y(n91) );
  INVX1 U14 ( .A(n18), .Y(n20) );
  BUFX2 U15 ( .A(n47), .Y(n37) );
  BUFX2 U16 ( .A(n42), .Y(n33) );
  BUFX2 U17 ( .A(n111), .Y(n43) );
  OAI2BB2X1 U18 ( .B0(n114), .B1(n113), .A0N(Inv_Mul_Shift[16]), .A1N(n112), 
        .Y(PP[16]) );
  OAI2BB1X1 U19 ( .A0N(n12), .A1N(n20), .B0(n98), .Y(Mul_Shift[12]) );
  OAI2BB1X1 U20 ( .A0N(n13), .A1N(n36), .B0(n102), .Y(Mul_Shift[13]) );
  OAI2BB1X1 U21 ( .A0N(n10), .A1N(n24), .B0(n90), .Y(Mul_Shift[10]) );
  INVX1 U22 ( .A(n29), .Y(n16) );
  INVX1 U23 ( .A(n31), .Y(n17) );
  INVX1 U24 ( .A(n29), .Y(n30) );
  INVX1 U25 ( .A(n26), .Y(n28) );
  INVX1 U26 ( .A(n41), .Y(n31) );
  INVX1 U27 ( .A(n40), .Y(n29) );
  INVX1 U28 ( .A(n39), .Y(n26) );
  INVX1 U29 ( .A(n22), .Y(n39) );
  INVX1 U30 ( .A(n21), .Y(n41) );
  INVX1 U31 ( .A(n22), .Y(n40) );
  INVX1 U32 ( .A(n51), .Y(n64) );
  INVX1 U33 ( .A(n37), .Y(n21) );
  INVX1 U34 ( .A(n50), .Y(n51) );
  INVX1 U35 ( .A(n37), .Y(n22) );
  INVX1 U36 ( .A(n54), .Y(n50) );
  INVX1 U37 ( .A(n54), .Y(n63) );
  INVX1 U38 ( .A(n48), .Y(n54) );
  INVX1 U39 ( .A(n35), .Y(n18) );
  NOR2X1 U40 ( .A(n25), .B(NEG1), .Y(n48) );
  INVX1 U41 ( .A(n23), .Y(n25) );
  INVX1 U42 ( .A(n34), .Y(n35) );
  INVX1 U43 ( .A(n44), .Y(n23) );
  INVX1 U44 ( .A(n43), .Y(n34) );
  BUFX2 U45 ( .A(n46), .Y(n44) );
  BUFX2 U46 ( .A(n111), .Y(n42) );
  BUFX2 U47 ( .A(NEG2), .Y(n111) );
  BUFX2 U48 ( .A(NEG2), .Y(n46) );
  NAND2XL U49 ( .A(n30), .B(n13), .Y(n98) );
  NAND2XL U50 ( .A(n17), .B(n12), .Y(n94) );
  NAND2XL U51 ( .A(n17), .B(n11), .Y(n90) );
  NAND2XL U52 ( .A(n41), .B(n10), .Y(n86) );
  NAND2XL U53 ( .A(n28), .B(n8), .Y(n78) );
  NAND2XL U54 ( .A(n16), .B(n5), .Y(n66) );
  NAND2XL U55 ( .A(n32), .B(n6), .Y(n70) );
  NAND2XL U56 ( .A(n30), .B(n7), .Y(n74) );
  INVXL U57 ( .A(n91), .Y(n103) );
  INVXL U58 ( .A(n75), .Y(n80) );
  INVXL U59 ( .A(n79), .Y(n87) );
  INVXL U60 ( .A(n91), .Y(n83) );
  INVXL U61 ( .A(n51), .Y(n59) );
  INVXL U62 ( .A(n75), .Y(n72) );
  INVXL U63 ( .A(n79), .Y(n71) );
  INVXL U64 ( .A(n113), .Y(Mul_Shift[16]) );
  NAND2XL U65 ( .A(n47), .B(Multiplicant[15]), .Y(n110) );
  OAI2BB1XL U66 ( .A0N(n15), .A1N(n19), .B0(n110), .Y(Mul_Shift[15]) );
  NAND2XL U67 ( .A(n39), .B(n15), .Y(n106) );
  INVXL U68 ( .A(n103), .Y(n109) );
  NAND2XL U69 ( .A(n28), .B(n14), .Y(n102) );
  INVXL U70 ( .A(n103), .Y(n101) );
  INVXL U71 ( .A(n87), .Y(n97) );
  INVXL U72 ( .A(n83), .Y(n95) );
  INVXL U73 ( .A(n80), .Y(n92) );
  INVXL U74 ( .A(n80), .Y(n99) );
  INVXL U75 ( .A(n87), .Y(n85) );
  AND2XL U76 ( .A(n1), .B(n38), .Y(Mul_Shift[0]) );
  INVXL U77 ( .A(n64), .Y(n114) );
  NAND2XL U78 ( .A(n38), .B(n2), .Y(n53) );
  OAI2BB1XL U79 ( .A0N(n1), .A1N(n19), .B0(n53), .Y(Mul_Shift[1]) );
  INVXL U80 ( .A(n83), .Y(n88) );
  INVXL U81 ( .A(n55), .Y(n112) );
  INVXL U82 ( .A(n61), .Y(n55) );
  OAI2BB1XL U83 ( .A0N(n2), .A1N(n24), .B0(n58), .Y(Mul_Shift[2]) );
  INVXL U84 ( .A(n63), .Y(n61) );
  NAND2XL U85 ( .A(n40), .B(n4), .Y(n62) );
  OAI2BB1XL U86 ( .A0N(n3), .A1N(n45), .B0(n62), .Y(Mul_Shift[3]) );
  INVXL U87 ( .A(n59), .Y(n107) );
  INVXL U88 ( .A(n72), .Y(n67) );
  INVXL U89 ( .A(n72), .Y(n104) );
  NAND2XL U90 ( .A(n104), .B(Inv_Mul_Shift[14]), .Y(n105) );
  NAND2XL U91 ( .A(n99), .B(Inv_Mul_Shift[13]), .Y(n100) );
  NAND2XL U92 ( .A(n95), .B(Inv_Mul_Shift[12]), .Y(n96) );
  NAND2XL U93 ( .A(n92), .B(Inv_Mul_Shift[11]), .Y(n93) );
  NAND2XL U94 ( .A(n88), .B(Inv_Mul_Shift[10]), .Y(n89) );
  NAND2XL U95 ( .A(n95), .B(Inv_Mul_Shift[9]), .Y(n84) );
  NAND2XL U96 ( .A(n92), .B(Inv_Mul_Shift[7]), .Y(n76) );
  NAND2XL U97 ( .A(n99), .B(Inv_Mul_Shift[8]), .Y(n81) );
  NAND2XL U98 ( .A(n67), .B(Inv_Mul_Shift[4]), .Y(n65) );
  NAND2XL U99 ( .A(n67), .B(Inv_Mul_Shift[5]), .Y(n68) );
  NAND2XL U100 ( .A(n104), .B(Inv_Mul_Shift[6]), .Y(n73) );
  AOI2BB1X1 U101 ( .A0N(NEG1), .A1N(X1), .B0(n33), .Y(n47) );
  INVX1 U102 ( .A(n31), .Y(n32) );
  BUFX1 U103 ( .A(Multiplicant[0]), .Y(n1) );
  BUFX1 U104 ( .A(Multiplicant[1]), .Y(n2) );
  BUFX1 U105 ( .A(Multiplicant[2]), .Y(n3) );
  BUFX1 U106 ( .A(Multiplicant[3]), .Y(n4) );
  BUFX1 U107 ( .A(Multiplicant[4]), .Y(n5) );
  BUFX1 U108 ( .A(Multiplicant[5]), .Y(n6) );
  BUFX1 U109 ( .A(Multiplicant[6]), .Y(n7) );
  BUFX1 U110 ( .A(Multiplicant[7]), .Y(n8) );
  BUFX1 U111 ( .A(Multiplicant[8]), .Y(n9) );
  BUFX1 U112 ( .A(Multiplicant[9]), .Y(n10) );
  BUFX1 U113 ( .A(Multiplicant[10]), .Y(n11) );
  BUFX1 U114 ( .A(Multiplicant[11]), .Y(n12) );
  BUFX1 U115 ( .A(Multiplicant[12]), .Y(n13) );
  BUFX1 U116 ( .A(Multiplicant[13]), .Y(n14) );
  BUFX1 U117 ( .A(Multiplicant[14]), .Y(n15) );
  INVXL U118 ( .A(n18), .Y(n19) );
  INVXL U119 ( .A(n23), .Y(n24) );
  INVXL U120 ( .A(n26), .Y(n27) );
  INVXL U121 ( .A(n34), .Y(n36) );
  INVXL U122 ( .A(n21), .Y(n38) );
  BUFX1 U123 ( .A(n46), .Y(n45) );
  OAI21XL U124 ( .A0(n44), .A1(n16), .B0(Multiplicant[15]), .Y(n113) );
  AOI22XL U125 ( .A0(n48), .A1(Mul_Shift[0]), .B0(Inv_Mul_Shift[0]), .B1(n114), 
        .Y(n49) );
  INVXL U126 ( .A(n49), .Y(PP[0]) );
  INVXL U127 ( .A(n59), .Y(n56) );
  NAND2XL U128 ( .A(n56), .B(Inv_Mul_Shift[1]), .Y(n52) );
  OAI21XL U129 ( .A0(n53), .A1(n88), .B0(n52), .Y(PP[1]) );
  NAND2XL U130 ( .A(n32), .B(n3), .Y(n58) );
  NAND2XL U131 ( .A(n56), .B(Inv_Mul_Shift[2]), .Y(n57) );
  OAI21XL U132 ( .A0(n58), .A1(n112), .B0(n57), .Y(PP[2]) );
  NAND2XL U133 ( .A(n107), .B(Inv_Mul_Shift[3]), .Y(n60) );
  OAI21XL U134 ( .A0(n62), .A1(n61), .B0(n60), .Y(PP[3]) );
  INVXL U135 ( .A(n71), .Y(n69) );
  OAI21XL U136 ( .A0(n66), .A1(n69), .B0(n65), .Y(PP[4]) );
  OAI21XL U137 ( .A0(n70), .A1(n69), .B0(n68), .Y(PP[5]) );
  INVXL U138 ( .A(n71), .Y(n77) );
  OAI21XL U139 ( .A0(n74), .A1(n77), .B0(n73), .Y(PP[6]) );
  OAI21XL U140 ( .A0(n78), .A1(n77), .B0(n76), .Y(PP[7]) );
  OAI21XL U141 ( .A0(n82), .A1(n85), .B0(n81), .Y(PP[8]) );
  OAI21XL U142 ( .A0(n86), .A1(n85), .B0(n84), .Y(PP[9]) );
  OAI21XL U143 ( .A0(n90), .A1(n97), .B0(n89), .Y(PP[10]) );
  OAI21XL U144 ( .A0(n94), .A1(n101), .B0(n93), .Y(PP[11]) );
  OAI2BB1X1 U145 ( .A0N(n11), .A1N(n42), .B0(n94), .Y(Mul_Shift[11]) );
  OAI21XL U146 ( .A0(n98), .A1(n97), .B0(n96), .Y(PP[12]) );
  OAI21XL U147 ( .A0(n102), .A1(n101), .B0(n100), .Y(PP[13]) );
  OAI21XL U148 ( .A0(n106), .A1(n109), .B0(n105), .Y(PP[14]) );
  OAI21XL U149 ( .A0(n110), .A1(n109), .B0(n108), .Y(PP[15]) );
endmodule


module CaculateE_mydesign_7 ( PP_sign_bit, Multiplicat_sign_bit, E, 
        MultiplierBits_2_ );
  input PP_sign_bit, Multiplicat_sign_bit, MultiplierBits_2_;
  output E;


  OAI2BB1X1 U2 ( .A0N(MultiplierBits_2_), .A1N(Multiplicat_sign_bit), .B0(
        PP_sign_bit), .Y(E) );
endmodule


module Inverse17_mydesign_0 ( in, out );
  input [16:0] in;
  output [16:0] out;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29;

  XNOR2XL U1 ( .A(n28), .B(in[16]), .Y(out[16]) );
  NOR2X2 U2 ( .A(in[5]), .B(n8), .Y(n9) );
  INVX1 U3 ( .A(n3), .Y(n4) );
  NOR2X1 U4 ( .A(in[1]), .B(out[0]), .Y(n1) );
  INVX1 U5 ( .A(n27), .Y(n29) );
  NOR2X1 U6 ( .A(in[14]), .B(n26), .Y(n27) );
  INVX1 U7 ( .A(n25), .Y(n26) );
  INVX1 U8 ( .A(n23), .Y(n24) );
  INVX1 U9 ( .A(n21), .Y(n22) );
  INVX1 U10 ( .A(n19), .Y(n20) );
  INVX1 U11 ( .A(n17), .Y(n18) );
  INVX1 U12 ( .A(n15), .Y(n16) );
  NOR2X1 U13 ( .A(in[3]), .B(n4), .Y(n5) );
  INVXL U14 ( .A(n1), .Y(n2) );
  NOR2X1 U15 ( .A(in[2]), .B(n2), .Y(n3) );
  INVX1 U16 ( .A(n5), .Y(n6) );
  AOI21XL U17 ( .A0(in[12]), .A1(n22), .B0(n23), .Y(out[12]) );
  AOI21XL U18 ( .A0(in[11]), .A1(n20), .B0(n21), .Y(out[11]) );
  AOI21XL U19 ( .A0(in[10]), .A1(n18), .B0(n19), .Y(out[10]) );
  AOI21XL U20 ( .A0(in[9]), .A1(n16), .B0(n17), .Y(out[9]) );
  AOI21XL U21 ( .A0(in[8]), .A1(n14), .B0(n15), .Y(out[8]) );
  AOI21XL U22 ( .A0(in[7]), .A1(n12), .B0(n13), .Y(out[7]) );
  AOI21XL U23 ( .A0(in[6]), .A1(n10), .B0(n11), .Y(out[6]) );
  AOI21XL U24 ( .A0(in[13]), .A1(n24), .B0(n25), .Y(out[13]) );
  AOI21XL U25 ( .A0(in[14]), .A1(n26), .B0(n27), .Y(out[14]) );
  NOR2X1 U26 ( .A(in[15]), .B(n29), .Y(n28) );
  BUFX1 U27 ( .A(in[0]), .Y(out[0]) );
  AOI21XL U28 ( .A0(in[0]), .A1(in[1]), .B0(n1), .Y(out[1]) );
  AOI21XL U29 ( .A0(in[2]), .A1(n2), .B0(n3), .Y(out[2]) );
  AOI21XL U30 ( .A0(in[3]), .A1(n4), .B0(n5), .Y(out[3]) );
  NOR2X2 U31 ( .A(in[4]), .B(n6), .Y(n7) );
  AOI21XL U32 ( .A0(in[4]), .A1(n6), .B0(n7), .Y(out[4]) );
  INVX1 U33 ( .A(n7), .Y(n8) );
  AOI21XL U34 ( .A0(in[5]), .A1(n8), .B0(n9), .Y(out[5]) );
  INVX1 U35 ( .A(n9), .Y(n10) );
  NOR2X1 U36 ( .A(in[6]), .B(n10), .Y(n11) );
  INVX1 U37 ( .A(n11), .Y(n12) );
  NOR2X1 U38 ( .A(in[7]), .B(n12), .Y(n13) );
  INVX1 U39 ( .A(n13), .Y(n14) );
  NOR2X2 U40 ( .A(in[8]), .B(n14), .Y(n15) );
  NOR2X2 U41 ( .A(in[9]), .B(n16), .Y(n17) );
  NOR2X2 U42 ( .A(in[10]), .B(n18), .Y(n19) );
  NOR2X2 U43 ( .A(in[11]), .B(n20), .Y(n21) );
  NOR2X2 U44 ( .A(in[12]), .B(n22), .Y(n23) );
  NOR2X2 U45 ( .A(in[13]), .B(n24), .Y(n25) );
  AOI21XL U46 ( .A0(in[15]), .A1(n29), .B0(n28), .Y(out[15]) );
endmodule


module PPUnit_mydesign_0 ( X1, X2, NEG1, NEG2, Multiplicant, PP );
  input [15:0] Multiplicant;
  output [16:0] PP;
  input X1, X2, NEG1, NEG2;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116;
  wire   [16:0] Mul_Shift;
  wire   [16:0] Inv_Mul_Shift;

  Inverse17_mydesign_0 u_Inverse17 ( .in({Mul_Shift[16:1], n42}), .out(
        Inv_Mul_Shift) );
  NOR2X1 U2 ( .A(NEG2), .B(X2), .Y(n49) );
  AOI22X1 U3 ( .A0(n2), .A1(n21), .B0(n1), .B1(n39), .Y(n59) );
  NAND2X1 U4 ( .A(n110), .B(Inv_Mul_Shift[15]), .Y(n111) );
  INVX1 U5 ( .A(n69), .Y(Mul_Shift[3]) );
  INVX1 U6 ( .A(n113), .Y(Mul_Shift[15]) );
  AOI22X1 U7 ( .A0(n8), .A1(n33), .B0(n7), .B1(n27), .Y(n85) );
  AOI22X1 U8 ( .A0(n12), .A1(n32), .B0(n11), .B1(n26), .Y(n101) );
  INVX1 U9 ( .A(n55), .Y(Mul_Shift[14]) );
  INVX1 U10 ( .A(n25), .Y(n27) );
  INVX1 U11 ( .A(n81), .Y(Mul_Shift[6]) );
  INVX1 U12 ( .A(n25), .Y(n26) );
  AOI22X1 U13 ( .A0(n9), .A1(n35), .B0(n8), .B1(n18), .Y(n89) );
  INVX1 U14 ( .A(n31), .Y(n33) );
  AOI22X1 U15 ( .A0(n7), .A1(n21), .B0(n6), .B1(n18), .Y(n81) );
  INVX1 U16 ( .A(n77), .Y(Mul_Shift[5]) );
  INVX1 U17 ( .A(n73), .Y(Mul_Shift[4]) );
  INVX1 U18 ( .A(n31), .Y(n32) );
  INVX1 U19 ( .A(n16), .Y(n18) );
  AOI22X1 U20 ( .A0(n6), .A1(n47), .B0(n5), .B1(n24), .Y(n77) );
  AOI22X1 U21 ( .A0(n10), .A1(n46), .B0(n9), .B1(n40), .Y(n93) );
  INVX1 U22 ( .A(n34), .Y(n36) );
  AOI22X1 U23 ( .A0(n11), .A1(n47), .B0(n10), .B1(n41), .Y(n97) );
  INVX2 U24 ( .A(n19), .Y(n21) );
  INVX1 U25 ( .A(n34), .Y(n35) );
  INVX1 U26 ( .A(n52), .Y(n82) );
  INVX1 U27 ( .A(n22), .Y(n39) );
  INVX1 U28 ( .A(n50), .Y(n56) );
  INVX1 U29 ( .A(n70), .Y(n86) );
  INVX1 U30 ( .A(n37), .Y(n22) );
  INVX1 U31 ( .A(n29), .Y(n44) );
  INVX1 U32 ( .A(n30), .Y(n47) );
  INVX1 U33 ( .A(n60), .Y(n70) );
  INVX1 U34 ( .A(n28), .Y(n30) );
  BUFX2 U35 ( .A(n64), .Y(n37) );
  NOR2X1 U36 ( .A(NEG2), .B(NEG1), .Y(n53) );
  INVX1 U37 ( .A(n85), .Y(Mul_Shift[7]) );
  INVX1 U38 ( .A(n101), .Y(Mul_Shift[11]) );
  INVX1 U39 ( .A(n89), .Y(Mul_Shift[8]) );
  INVX1 U40 ( .A(n17), .Y(n25) );
  INVX1 U41 ( .A(n109), .Y(Mul_Shift[13]) );
  INVX1 U42 ( .A(n105), .Y(Mul_Shift[12]) );
  INVX1 U43 ( .A(n93), .Y(Mul_Shift[9]) );
  INVX1 U44 ( .A(n20), .Y(n31) );
  INVX1 U45 ( .A(n97), .Y(Mul_Shift[10]) );
  INVX1 U46 ( .A(n16), .Y(n17) );
  INVX1 U47 ( .A(n19), .Y(n20) );
  INVX1 U48 ( .A(n38), .Y(n16) );
  INVX1 U49 ( .A(n23), .Y(n38) );
  INVX1 U50 ( .A(n45), .Y(n19) );
  INVX1 U51 ( .A(n57), .Y(n52) );
  INVX1 U52 ( .A(n44), .Y(n34) );
  INVX1 U53 ( .A(n37), .Y(n23) );
  INVX1 U54 ( .A(n50), .Y(n57) );
  INVX1 U55 ( .A(n29), .Y(n45) );
  INVX1 U56 ( .A(n60), .Y(n50) );
  INVX1 U57 ( .A(n53), .Y(n60) );
  INVX1 U58 ( .A(n49), .Y(n64) );
  INVX1 U59 ( .A(n48), .Y(n28) );
  OAI21X1 U60 ( .A0(NEG1), .A1(X1), .B0(n49), .Y(n48) );
  INVXL U61 ( .A(n115), .Y(Mul_Shift[16]) );
  INVX1 U62 ( .A(n28), .Y(n29) );
  INVXL U63 ( .A(n86), .Y(n94) );
  INVXL U64 ( .A(n56), .Y(n90) );
  INVXL U65 ( .A(n86), .Y(n78) );
  INVXL U66 ( .A(n82), .Y(n87) );
  INVXL U67 ( .A(n82), .Y(n71) );
  INVXL U68 ( .A(n57), .Y(n67) );
  INVXL U69 ( .A(n56), .Y(n98) );
  AOI22XL U70 ( .A0(n13), .A1(n36), .B0(n12), .B1(n38), .Y(n105) );
  INVXL U71 ( .A(n94), .Y(n104) );
  INVXL U72 ( .A(n90), .Y(n102) );
  INVXL U73 ( .A(n94), .Y(n92) );
  INVXL U74 ( .A(n87), .Y(n99) );
  INVXL U75 ( .A(n66), .Y(n114) );
  AOI22XL U76 ( .A0(n3), .A1(n46), .B0(n2), .B1(n40), .Y(n63) );
  INVXL U77 ( .A(n70), .Y(n65) );
  INVXL U78 ( .A(n59), .Y(Mul_Shift[1]) );
  INVXL U79 ( .A(n90), .Y(n95) );
  AOI22XL U80 ( .A0(n5), .A1(n36), .B0(n4), .B1(n41), .Y(n73) );
  INVXL U81 ( .A(n52), .Y(n116) );
  AOI22XL U82 ( .A0(n14), .A1(n20), .B0(n13), .B1(n24), .Y(n109) );
  INVXL U83 ( .A(n87), .Y(n106) );
  INVXL U84 ( .A(n98), .Y(n108) );
  AOI22XL U85 ( .A0(n15), .A1(n45), .B0(n14), .B1(n17), .Y(n55) );
  INVXL U86 ( .A(n71), .Y(n79) );
  AOI22XL U87 ( .A0(Multiplicant[15]), .A1(n33), .B0(n15), .B1(n27), .Y(n113)
         );
  INVXL U88 ( .A(n67), .Y(n110) );
  INVXL U89 ( .A(n98), .Y(n112) );
  NAND2XL U90 ( .A(n102), .B(Inv_Mul_Shift[12]), .Y(n103) );
  NAND2XL U91 ( .A(n99), .B(Inv_Mul_Shift[11]), .Y(n100) );
  NAND2XL U92 ( .A(n95), .B(Inv_Mul_Shift[10]), .Y(n96) );
  NAND2XL U93 ( .A(n102), .B(Inv_Mul_Shift[9]), .Y(n91) );
  NAND2XL U94 ( .A(n106), .B(Inv_Mul_Shift[8]), .Y(n88) );
  NAND2XL U95 ( .A(n99), .B(Inv_Mul_Shift[7]), .Y(n83) );
  NAND2XL U96 ( .A(n79), .B(Inv_Mul_Shift[6]), .Y(n80) );
  NAND2XL U97 ( .A(n106), .B(Inv_Mul_Shift[13]), .Y(n107) );
  OAI21XL U98 ( .A0(n55), .A1(n112), .B0(n51), .Y(PP[14]) );
  NAND2XL U99 ( .A(n79), .B(Inv_Mul_Shift[14]), .Y(n51) );
  BUFX1 U100 ( .A(Multiplicant[0]), .Y(n1) );
  BUFX1 U101 ( .A(Multiplicant[1]), .Y(n2) );
  BUFX1 U102 ( .A(Multiplicant[2]), .Y(n3) );
  BUFX1 U103 ( .A(Multiplicant[3]), .Y(n4) );
  BUFX1 U104 ( .A(Multiplicant[4]), .Y(n5) );
  BUFX1 U105 ( .A(Multiplicant[5]), .Y(n6) );
  BUFX1 U106 ( .A(Multiplicant[6]), .Y(n7) );
  BUFX1 U107 ( .A(Multiplicant[7]), .Y(n8) );
  BUFX1 U108 ( .A(Multiplicant[8]), .Y(n9) );
  BUFX1 U109 ( .A(Multiplicant[9]), .Y(n10) );
  BUFX1 U110 ( .A(Multiplicant[10]), .Y(n11) );
  BUFX1 U111 ( .A(Multiplicant[11]), .Y(n12) );
  BUFX1 U112 ( .A(Multiplicant[12]), .Y(n13) );
  BUFX1 U113 ( .A(Multiplicant[13]), .Y(n14) );
  BUFX1 U114 ( .A(Multiplicant[14]), .Y(n15) );
  BUFX1 U115 ( .A(n39), .Y(n24) );
  INVXL U116 ( .A(n22), .Y(n40) );
  INVXL U117 ( .A(n23), .Y(n41) );
  NAND2XL U118 ( .A(n1), .B(n44), .Y(Mul_Shift[0]) );
  INVXL U119 ( .A(Mul_Shift[0]), .Y(n42) );
  INVXL U120 ( .A(Mul_Shift[0]), .Y(n43) );
  INVXL U121 ( .A(n30), .Y(n46) );
  OAI21XL U122 ( .A0(n64), .A1(n35), .B0(Multiplicant[15]), .Y(n115) );
  AOI22XL U123 ( .A0(n53), .A1(n43), .B0(Inv_Mul_Shift[0]), .B1(n116), .Y(n54)
         );
  INVXL U124 ( .A(n54), .Y(PP[0]) );
  INVXL U125 ( .A(n67), .Y(n61) );
  NAND2XL U126 ( .A(n61), .B(Inv_Mul_Shift[1]), .Y(n58) );
  OAI21XL U127 ( .A0(n95), .A1(n59), .B0(n58), .Y(PP[1]) );
  NAND2XL U128 ( .A(n61), .B(Inv_Mul_Shift[2]), .Y(n62) );
  OAI21XL U129 ( .A0(n63), .A1(n65), .B0(n62), .Y(PP[2]) );
  INVXL U130 ( .A(n63), .Y(Mul_Shift[2]) );
  AOI22XL U131 ( .A0(n4), .A1(n32), .B0(n3), .B1(n26), .Y(n69) );
  INVXL U132 ( .A(n65), .Y(n66) );
  NAND2XL U133 ( .A(n110), .B(Inv_Mul_Shift[3]), .Y(n68) );
  OAI21XL U134 ( .A0(n69), .A1(n114), .B0(n68), .Y(PP[3]) );
  INVXL U135 ( .A(n78), .Y(n76) );
  INVXL U136 ( .A(n71), .Y(n74) );
  NAND2XL U137 ( .A(n74), .B(Inv_Mul_Shift[4]), .Y(n72) );
  OAI21XL U138 ( .A0(n73), .A1(n76), .B0(n72), .Y(PP[4]) );
  NAND2XL U139 ( .A(n74), .B(Inv_Mul_Shift[5]), .Y(n75) );
  OAI21XL U140 ( .A0(n77), .A1(n76), .B0(n75), .Y(PP[5]) );
  INVXL U141 ( .A(n78), .Y(n84) );
  OAI21XL U142 ( .A0(n81), .A1(n84), .B0(n80), .Y(PP[6]) );
  OAI21XL U143 ( .A0(n85), .A1(n84), .B0(n83), .Y(PP[7]) );
  OAI21XL U144 ( .A0(n89), .A1(n92), .B0(n88), .Y(PP[8]) );
  OAI21XL U145 ( .A0(n93), .A1(n92), .B0(n91), .Y(PP[9]) );
  OAI21XL U146 ( .A0(n97), .A1(n104), .B0(n96), .Y(PP[10]) );
  OAI21XL U147 ( .A0(n101), .A1(n108), .B0(n100), .Y(PP[11]) );
  OAI21XL U148 ( .A0(n105), .A1(n104), .B0(n103), .Y(PP[12]) );
  OAI21XL U149 ( .A0(n109), .A1(n108), .B0(n107), .Y(PP[13]) );
  OAI21XL U150 ( .A0(n113), .A1(n112), .B0(n111), .Y(PP[15]) );
  OAI2BB2X1 U151 ( .B0(n116), .B1(n115), .A0N(Inv_Mul_Shift[16]), .A1N(n114), 
        .Y(PP[16]) );
endmodule


module Inverse17_mydesign_1 ( in, out );
  input [16:0] in;
  output [16:0] out;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29;

  NOR2X1 U1 ( .A(in[8]), .B(n14), .Y(n15) );
  NOR2X1 U2 ( .A(in[14]), .B(n26), .Y(n27) );
  NOR2X1 U3 ( .A(in[15]), .B(n29), .Y(n28) );
  INVX1 U4 ( .A(n5), .Y(n6) );
  INVX1 U5 ( .A(n3), .Y(n4) );
  INVXL U6 ( .A(n1), .Y(n2) );
  NOR2X1 U7 ( .A(in[1]), .B(out[0]), .Y(n1) );
  INVX1 U8 ( .A(n27), .Y(n29) );
  INVX1 U9 ( .A(n25), .Y(n26) );
  NOR2X1 U10 ( .A(in[13]), .B(n24), .Y(n25) );
  INVX1 U11 ( .A(n23), .Y(n24) );
  INVX1 U12 ( .A(n21), .Y(n22) );
  INVX1 U13 ( .A(n19), .Y(n20) );
  INVX1 U14 ( .A(n17), .Y(n18) );
  INVX1 U15 ( .A(n15), .Y(n16) );
  INVX1 U16 ( .A(n13), .Y(n14) );
  NOR2X2 U17 ( .A(in[3]), .B(n4), .Y(n5) );
  NOR2X1 U18 ( .A(in[4]), .B(n6), .Y(n7) );
  NOR2X1 U19 ( .A(in[5]), .B(n8), .Y(n9) );
  INVX1 U20 ( .A(n7), .Y(n8) );
  NOR2X1 U21 ( .A(in[6]), .B(n10), .Y(n11) );
  INVX1 U22 ( .A(n9), .Y(n10) );
  NOR2X1 U23 ( .A(in[2]), .B(n2), .Y(n3) );
  AOI21XL U24 ( .A0(in[5]), .A1(n8), .B0(n9), .Y(out[5]) );
  AOI21XL U25 ( .A0(in[6]), .A1(n10), .B0(n11), .Y(out[6]) );
  AOI21XL U26 ( .A0(in[7]), .A1(n12), .B0(n13), .Y(out[7]) );
  AOI21XL U27 ( .A0(in[8]), .A1(n14), .B0(n15), .Y(out[8]) );
  AOI21XL U28 ( .A0(in[9]), .A1(n16), .B0(n17), .Y(out[9]) );
  AOI21XL U29 ( .A0(in[10]), .A1(n18), .B0(n19), .Y(out[10]) );
  AOI21XL U30 ( .A0(in[11]), .A1(n20), .B0(n21), .Y(out[11]) );
  AOI21XL U31 ( .A0(in[12]), .A1(n22), .B0(n23), .Y(out[12]) );
  AOI21XL U32 ( .A0(in[13]), .A1(n24), .B0(n25), .Y(out[13]) );
  AOI21XL U33 ( .A0(in[14]), .A1(n26), .B0(n27), .Y(out[14]) );
  BUFX1 U34 ( .A(in[0]), .Y(out[0]) );
  AOI21XL U35 ( .A0(in[0]), .A1(in[1]), .B0(n1), .Y(out[1]) );
  AOI21XL U36 ( .A0(in[2]), .A1(n2), .B0(n3), .Y(out[2]) );
  AOI21XL U37 ( .A0(in[3]), .A1(n4), .B0(n5), .Y(out[3]) );
  AOI21XL U38 ( .A0(in[4]), .A1(n6), .B0(n7), .Y(out[4]) );
  INVX1 U39 ( .A(n11), .Y(n12) );
  NOR2X1 U40 ( .A(in[7]), .B(n12), .Y(n13) );
  NOR2X2 U41 ( .A(in[9]), .B(n16), .Y(n17) );
  NOR2X2 U42 ( .A(in[10]), .B(n18), .Y(n19) );
  NOR2X2 U43 ( .A(in[11]), .B(n20), .Y(n21) );
  NOR2X2 U44 ( .A(in[12]), .B(n22), .Y(n23) );
  XNOR2X1 U45 ( .A(n28), .B(in[16]), .Y(out[16]) );
  AOI21XL U46 ( .A0(in[15]), .A1(n29), .B0(n28), .Y(out[15]) );
endmodule


module PPUnit_mydesign_1 ( X1, X2, NEG1, NEG2, Multiplicant, PP );
  input [15:0] Multiplicant;
  output [16:0] PP;
  input X1, X2, NEG1, NEG2;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116;
  wire   [16:0] Mul_Shift;
  wire   [16:0] Inv_Mul_Shift;

  Inverse17_mydesign_1 u_Inverse17 ( .in({Mul_Shift[16:1], n42}), .out(
        Inv_Mul_Shift) );
  NOR2X1 U2 ( .A(NEG2), .B(X2), .Y(n49) );
  NAND2X1 U3 ( .A(n113), .B(Inv_Mul_Shift[15]), .Y(n114) );
  INVX1 U4 ( .A(n76), .Y(Mul_Shift[4]) );
  AOI22X1 U5 ( .A0(n11), .A1(n36), .B0(n10), .B1(n26), .Y(n108) );
  INVX1 U6 ( .A(n72), .Y(Mul_Shift[3]) );
  AOI22X1 U7 ( .A0(n4), .A1(n36), .B0(n3), .B1(n26), .Y(n76) );
  INVX1 U8 ( .A(n116), .Y(Mul_Shift[15]) );
  INVX1 U9 ( .A(n80), .Y(Mul_Shift[5]) );
  AOI22X1 U10 ( .A0(n7), .A1(n44), .B0(n6), .B1(n27), .Y(n92) );
  INVX1 U11 ( .A(n35), .Y(n36) );
  AOI22X1 U12 ( .A0(n6), .A1(n34), .B0(n5), .B1(n24), .Y(n88) );
  AOI22X1 U13 ( .A0(n10), .A1(n33), .B0(n9), .B1(n23), .Y(n104) );
  AOI22X1 U14 ( .A0(n15), .A1(n18), .B0(n4), .B1(n21), .Y(n80) );
  INVX1 U15 ( .A(n22), .Y(n24) );
  INVX1 U16 ( .A(n25), .Y(n27) );
  INVX1 U17 ( .A(n25), .Y(n26) );
  INVX1 U18 ( .A(n17), .Y(n35) );
  INVX1 U19 ( .A(n84), .Y(Mul_Shift[6]) );
  AOI22X1 U20 ( .A0(n12), .A1(n18), .B0(n11), .B1(n21), .Y(n112) );
  AOI22X1 U21 ( .A0(n8), .A1(n45), .B0(n7), .B1(n40), .Y(n96) );
  INVX1 U22 ( .A(n55), .Y(Mul_Shift[14]) );
  AOI22X1 U23 ( .A0(n5), .A1(n46), .B0(n15), .B1(n38), .Y(n84) );
  INVX1 U24 ( .A(n32), .Y(n34) );
  AOI22X1 U25 ( .A0(n9), .A1(n47), .B0(n8), .B1(n41), .Y(n100) );
  INVX1 U26 ( .A(n16), .Y(n18) );
  INVX1 U27 ( .A(n32), .Y(n33) );
  INVX1 U28 ( .A(n16), .Y(n17) );
  INVX1 U29 ( .A(n52), .Y(n85) );
  INVX1 U30 ( .A(n37), .Y(n19) );
  INVX1 U31 ( .A(n30), .Y(n46) );
  INVX1 U32 ( .A(n50), .Y(n60) );
  INVX1 U33 ( .A(n73), .Y(n89) );
  INVX1 U34 ( .A(n28), .Y(n30) );
  BUFX2 U35 ( .A(n68), .Y(n37) );
  INVX1 U36 ( .A(n56), .Y(n73) );
  INVX1 U37 ( .A(n108), .Y(Mul_Shift[12]) );
  INVX1 U38 ( .A(n92), .Y(Mul_Shift[8]) );
  INVX1 U39 ( .A(n112), .Y(Mul_Shift[13]) );
  INVX1 U40 ( .A(n88), .Y(Mul_Shift[7]) );
  INVX1 U41 ( .A(n104), .Y(Mul_Shift[11]) );
  INVX1 U42 ( .A(n96), .Y(Mul_Shift[9]) );
  INVX1 U43 ( .A(n100), .Y(Mul_Shift[10]) );
  INVX1 U44 ( .A(n41), .Y(n25) );
  INVX1 U45 ( .A(n44), .Y(n16) );
  INVX1 U46 ( .A(n45), .Y(n32) );
  INVX1 U47 ( .A(n38), .Y(n22) );
  INVX1 U48 ( .A(n29), .Y(n45) );
  INVX1 U49 ( .A(n20), .Y(n38) );
  INVX1 U50 ( .A(n20), .Y(n41) );
  INVX1 U51 ( .A(n29), .Y(n44) );
  INVX1 U52 ( .A(n61), .Y(n52) );
  INVX1 U53 ( .A(n37), .Y(n20) );
  INVX1 U54 ( .A(n50), .Y(n61) );
  INVX1 U55 ( .A(n56), .Y(n50) );
  OAI21X1 U56 ( .A0(NEG1), .A1(X1), .B0(n49), .Y(n48) );
  INVX1 U57 ( .A(n53), .Y(n56) );
  NOR2X1 U58 ( .A(NEG2), .B(NEG1), .Y(n53) );
  AOI22X1 U59 ( .A0(n2), .A1(n31), .B0(n1), .B1(n39), .Y(n63) );
  INVX1 U60 ( .A(n19), .Y(n39) );
  INVXL U61 ( .A(n58), .Y(Mul_Shift[16]) );
  INVX1 U62 ( .A(n48), .Y(n28) );
  INVX1 U63 ( .A(n28), .Y(n29) );
  INVXL U64 ( .A(n89), .Y(n81) );
  INVXL U65 ( .A(n89), .Y(n97) );
  INVXL U66 ( .A(n85), .Y(n90) );
  INVXL U67 ( .A(n85), .Y(n74) );
  INVXL U68 ( .A(n60), .Y(n93) );
  INVXL U69 ( .A(n61), .Y(n69) );
  INVXL U70 ( .A(n60), .Y(n101) );
  INVXL U71 ( .A(n57), .Y(n71) );
  INVXL U72 ( .A(n97), .Y(n95) );
  INVXL U73 ( .A(n90), .Y(n102) );
  INVXL U74 ( .A(n93), .Y(n105) );
  INVXL U75 ( .A(n97), .Y(n107) );
  INVXL U76 ( .A(n90), .Y(n109) );
  INVXL U77 ( .A(n101), .Y(n111) );
  AOI22XL U78 ( .A0(n13), .A1(n46), .B0(n12), .B1(n68), .Y(n55) );
  INVXL U79 ( .A(n74), .Y(n82) );
  INVXL U80 ( .A(n52), .Y(n59) );
  AOI22XL U81 ( .A0(n14), .A1(n47), .B0(n2), .B1(n40), .Y(n67) );
  INVXL U82 ( .A(n73), .Y(n66) );
  INVXL U83 ( .A(n63), .Y(Mul_Shift[1]) );
  INVXL U84 ( .A(n93), .Y(n98) );
  AOI22XL U85 ( .A0(Multiplicant[15]), .A1(n34), .B0(n13), .B1(n24), .Y(n116)
         );
  INVXL U86 ( .A(n69), .Y(n113) );
  INVXL U87 ( .A(n101), .Y(n115) );
  NAND2XL U88 ( .A(n82), .B(Inv_Mul_Shift[6]), .Y(n83) );
  NAND2XL U89 ( .A(n102), .B(Inv_Mul_Shift[7]), .Y(n86) );
  NAND2XL U90 ( .A(n109), .B(Inv_Mul_Shift[8]), .Y(n91) );
  NAND2XL U91 ( .A(n105), .B(Inv_Mul_Shift[9]), .Y(n94) );
  NAND2XL U92 ( .A(n98), .B(Inv_Mul_Shift[10]), .Y(n99) );
  NAND2XL U93 ( .A(n102), .B(Inv_Mul_Shift[11]), .Y(n103) );
  NAND2XL U94 ( .A(n105), .B(Inv_Mul_Shift[12]), .Y(n106) );
  NAND2XL U95 ( .A(n109), .B(Inv_Mul_Shift[13]), .Y(n110) );
  NAND2XL U96 ( .A(n82), .B(Inv_Mul_Shift[14]), .Y(n51) );
  INVX1 U97 ( .A(n49), .Y(n68) );
  BUFX1 U98 ( .A(Multiplicant[0]), .Y(n1) );
  BUFX1 U99 ( .A(Multiplicant[1]), .Y(n2) );
  BUFX1 U100 ( .A(Multiplicant[3]), .Y(n3) );
  BUFX1 U101 ( .A(Multiplicant[4]), .Y(n4) );
  BUFX1 U102 ( .A(Multiplicant[6]), .Y(n5) );
  BUFX1 U103 ( .A(Multiplicant[7]), .Y(n6) );
  BUFX1 U104 ( .A(Multiplicant[8]), .Y(n7) );
  BUFX1 U105 ( .A(Multiplicant[9]), .Y(n8) );
  BUFX1 U106 ( .A(Multiplicant[10]), .Y(n9) );
  BUFX1 U107 ( .A(Multiplicant[11]), .Y(n10) );
  BUFX1 U108 ( .A(Multiplicant[12]), .Y(n11) );
  BUFX1 U109 ( .A(Multiplicant[13]), .Y(n12) );
  BUFX1 U110 ( .A(Multiplicant[14]), .Y(n13) );
  BUFX1 U111 ( .A(Multiplicant[2]), .Y(n14) );
  BUFX1 U112 ( .A(Multiplicant[5]), .Y(n15) );
  BUFX1 U113 ( .A(n39), .Y(n21) );
  INVXL U114 ( .A(n22), .Y(n23) );
  INVXL U115 ( .A(n48), .Y(n31) );
  INVXL U116 ( .A(n19), .Y(n40) );
  NAND2XL U117 ( .A(n1), .B(n31), .Y(Mul_Shift[0]) );
  INVXL U118 ( .A(Mul_Shift[0]), .Y(n42) );
  INVXL U119 ( .A(Mul_Shift[0]), .Y(n43) );
  INVXL U120 ( .A(n30), .Y(n47) );
  OAI21XL U121 ( .A0(n55), .A1(n115), .B0(n51), .Y(PP[14]) );
  OAI21XL U122 ( .A0(n27), .A1(n17), .B0(Multiplicant[15]), .Y(n58) );
  AOI22XL U123 ( .A0(n53), .A1(n43), .B0(Inv_Mul_Shift[0]), .B1(n59), .Y(n54)
         );
  INVXL U124 ( .A(n54), .Y(PP[0]) );
  INVXL U125 ( .A(n66), .Y(n57) );
  OAI2BB2X1 U126 ( .B0(n59), .B1(n58), .A0N(Inv_Mul_Shift[16]), .A1N(n71), .Y(
        PP[16]) );
  INVXL U127 ( .A(n69), .Y(n64) );
  NAND2XL U128 ( .A(n64), .B(Inv_Mul_Shift[1]), .Y(n62) );
  OAI21XL U129 ( .A0(n63), .A1(n98), .B0(n62), .Y(PP[1]) );
  NAND2XL U130 ( .A(n64), .B(Inv_Mul_Shift[2]), .Y(n65) );
  OAI21XL U131 ( .A0(n67), .A1(n66), .B0(n65), .Y(PP[2]) );
  INVXL U132 ( .A(n67), .Y(Mul_Shift[2]) );
  AOI22XL U133 ( .A0(n3), .A1(n33), .B0(n14), .B1(n23), .Y(n72) );
  NAND2XL U134 ( .A(n113), .B(Inv_Mul_Shift[3]), .Y(n70) );
  OAI21XL U135 ( .A0(n72), .A1(n71), .B0(n70), .Y(PP[3]) );
  INVXL U136 ( .A(n81), .Y(n79) );
  INVXL U137 ( .A(n74), .Y(n77) );
  NAND2XL U138 ( .A(n77), .B(Inv_Mul_Shift[4]), .Y(n75) );
  OAI21XL U139 ( .A0(n76), .A1(n79), .B0(n75), .Y(PP[4]) );
  NAND2XL U140 ( .A(n77), .B(Inv_Mul_Shift[5]), .Y(n78) );
  OAI21XL U141 ( .A0(n80), .A1(n79), .B0(n78), .Y(PP[5]) );
  INVXL U142 ( .A(n81), .Y(n87) );
  OAI21XL U143 ( .A0(n84), .A1(n87), .B0(n83), .Y(PP[6]) );
  OAI21XL U144 ( .A0(n88), .A1(n87), .B0(n86), .Y(PP[7]) );
  OAI21XL U145 ( .A0(n92), .A1(n95), .B0(n91), .Y(PP[8]) );
  OAI21XL U146 ( .A0(n96), .A1(n95), .B0(n94), .Y(PP[9]) );
  OAI21XL U147 ( .A0(n100), .A1(n107), .B0(n99), .Y(PP[10]) );
  OAI21XL U148 ( .A0(n104), .A1(n111), .B0(n103), .Y(PP[11]) );
  OAI21XL U149 ( .A0(n108), .A1(n107), .B0(n106), .Y(PP[12]) );
  OAI21XL U150 ( .A0(n112), .A1(n111), .B0(n110), .Y(PP[13]) );
  OAI21XL U151 ( .A0(n116), .A1(n115), .B0(n114), .Y(PP[15]) );
endmodule


module Inverse17_mydesign_2 ( in, out );
  input [16:0] in;
  output [16:0] out;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29;

  NOR2X1 U1 ( .A(in[9]), .B(n16), .Y(n17) );
  XNOR2XL U2 ( .A(n28), .B(in[16]), .Y(out[16]) );
  INVX1 U3 ( .A(n3), .Y(n4) );
  INVX1 U4 ( .A(n27), .Y(n29) );
  INVX2 U5 ( .A(n25), .Y(n26) );
  INVX1 U6 ( .A(n23), .Y(n24) );
  INVX1 U7 ( .A(n21), .Y(n22) );
  INVX2 U8 ( .A(n19), .Y(n20) );
  INVX2 U9 ( .A(n17), .Y(n18) );
  INVX2 U10 ( .A(n15), .Y(n16) );
  INVX1 U11 ( .A(n13), .Y(n14) );
  INVX1 U12 ( .A(n5), .Y(n6) );
  NOR2X1 U13 ( .A(in[4]), .B(n6), .Y(n7) );
  NOR2X1 U14 ( .A(in[5]), .B(n8), .Y(n9) );
  INVX1 U15 ( .A(n7), .Y(n8) );
  NOR2X1 U16 ( .A(in[6]), .B(n10), .Y(n11) );
  INVX1 U17 ( .A(n9), .Y(n10) );
  NOR2X1 U18 ( .A(in[1]), .B(in[0]), .Y(n1) );
  INVX1 U19 ( .A(n1), .Y(n2) );
  NOR2X1 U20 ( .A(in[2]), .B(n2), .Y(n3) );
  NOR2X1 U21 ( .A(in[3]), .B(n4), .Y(n5) );
  AOI21XL U22 ( .A0(in[5]), .A1(n8), .B0(n9), .Y(out[5]) );
  AOI21XL U23 ( .A0(in[6]), .A1(n10), .B0(n11), .Y(out[6]) );
  AOI21XL U24 ( .A0(in[7]), .A1(n12), .B0(n13), .Y(out[7]) );
  AOI21XL U25 ( .A0(in[8]), .A1(n14), .B0(n15), .Y(out[8]) );
  AOI21XL U26 ( .A0(in[9]), .A1(n16), .B0(n17), .Y(out[9]) );
  AOI21XL U27 ( .A0(in[10]), .A1(n18), .B0(n19), .Y(out[10]) );
  AOI21XL U28 ( .A0(in[11]), .A1(n20), .B0(n21), .Y(out[11]) );
  AOI21XL U29 ( .A0(in[12]), .A1(n22), .B0(n23), .Y(out[12]) );
  AOI21XL U30 ( .A0(in[13]), .A1(n24), .B0(n25), .Y(out[13]) );
  AOI21XL U31 ( .A0(in[14]), .A1(n26), .B0(n27), .Y(out[14]) );
  BUFX1 U32 ( .A(in[0]), .Y(out[0]) );
  AOI21XL U33 ( .A0(out[0]), .A1(in[1]), .B0(n1), .Y(out[1]) );
  AOI21XL U34 ( .A0(in[2]), .A1(n2), .B0(n3), .Y(out[2]) );
  AOI21XL U35 ( .A0(in[3]), .A1(n4), .B0(n5), .Y(out[3]) );
  AOI21XL U36 ( .A0(in[4]), .A1(n6), .B0(n7), .Y(out[4]) );
  INVX1 U37 ( .A(n11), .Y(n12) );
  NOR2X1 U38 ( .A(in[7]), .B(n12), .Y(n13) );
  NOR2X2 U39 ( .A(in[8]), .B(n14), .Y(n15) );
  NOR2X2 U40 ( .A(in[10]), .B(n18), .Y(n19) );
  NOR2X2 U41 ( .A(in[11]), .B(n20), .Y(n21) );
  NOR2X2 U42 ( .A(in[12]), .B(n22), .Y(n23) );
  NOR2X2 U43 ( .A(in[13]), .B(n24), .Y(n25) );
  NOR2X2 U44 ( .A(in[14]), .B(n26), .Y(n27) );
  NOR2X2 U45 ( .A(in[15]), .B(n29), .Y(n28) );
  AOI21XL U46 ( .A0(in[15]), .A1(n29), .B0(n28), .Y(out[15]) );
endmodule


module PPUnit_mydesign_2 ( X1, X2, NEG1, NEG2, Multiplicant, PP );
  input [15:0] Multiplicant;
  output [16:0] PP;
  input X1, X2, NEG1, NEG2;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115;
  wire   [16:0] Mul_Shift;
  wire   [16:0] Inv_Mul_Shift;

  Inverse17_mydesign_2 u_Inverse17 ( .in({Mul_Shift[16:1], n18}), .out(
        Inv_Mul_Shift) );
  NOR2X1 U2 ( .A(NEG2), .B(X2), .Y(n48) );
  NAND2X1 U3 ( .A(n112), .B(Inv_Mul_Shift[15]), .Y(n113) );
  INVX1 U4 ( .A(n75), .Y(Mul_Shift[4]) );
  AOI22X1 U5 ( .A0(n2), .A1(n37), .B0(n14), .B1(n26), .Y(n75) );
  AOI22X1 U6 ( .A0(n9), .A1(n37), .B0(n8), .B1(n26), .Y(n107) );
  AOI22X1 U7 ( .A0(n5), .A1(n31), .B0(n4), .B1(n27), .Y(n91) );
  AOI22X1 U8 ( .A0(n3), .A1(n16), .B0(n2), .B1(n21), .Y(n79) );
  INVX1 U9 ( .A(n54), .Y(Mul_Shift[14]) );
  INVX1 U10 ( .A(n66), .Y(Mul_Shift[2]) );
  INVX1 U11 ( .A(n25), .Y(n27) );
  AOI22X1 U12 ( .A0(n10), .A1(n16), .B0(n9), .B1(n21), .Y(n111) );
  INVX1 U13 ( .A(n25), .Y(n26) );
  INVX1 U14 ( .A(n71), .Y(Mul_Shift[3]) );
  INVX1 U15 ( .A(n35), .Y(n37) );
  AOI22X1 U16 ( .A0(n15), .A1(n45), .B0(n3), .B1(n39), .Y(n83) );
  AOI22X1 U17 ( .A0(n6), .A1(n44), .B0(n5), .B1(n41), .Y(n95) );
  INVX1 U18 ( .A(n115), .Y(Mul_Shift[15]) );
  AOI22X1 U19 ( .A0(n7), .A1(n46), .B0(n6), .B1(n42), .Y(n99) );
  INVX1 U20 ( .A(n20), .Y(n40) );
  INVX1 U21 ( .A(n51), .Y(n84) );
  AOI22X1 U22 ( .A0(n4), .A1(n34), .B0(n15), .B1(n24), .Y(n87) );
  INVX1 U23 ( .A(n19), .Y(n39) );
  AOI22X1 U24 ( .A0(n8), .A1(n33), .B0(n7), .B1(n23), .Y(n103) );
  INVX1 U25 ( .A(n30), .Y(n45) );
  INVX1 U26 ( .A(n49), .Y(n59) );
  INVX1 U27 ( .A(n72), .Y(n88) );
  INVX1 U28 ( .A(n28), .Y(n30) );
  BUFX2 U29 ( .A(n67), .Y(n38) );
  INVX1 U30 ( .A(n55), .Y(n72) );
  INVX1 U31 ( .A(n67), .Y(n22) );
  OAI21X1 U32 ( .A0(NEG1), .A1(X1), .B0(n48), .Y(n47) );
  INVX1 U33 ( .A(n107), .Y(Mul_Shift[12]) );
  INVX1 U34 ( .A(n91), .Y(Mul_Shift[8]) );
  INVX1 U35 ( .A(n111), .Y(Mul_Shift[13]) );
  INVX1 U36 ( .A(n79), .Y(Mul_Shift[5]) );
  AOI22X1 U37 ( .A0(n13), .A1(n36), .B0(n12), .B1(n40), .Y(n62) );
  INVX1 U38 ( .A(n83), .Y(Mul_Shift[6]) );
  INVX1 U39 ( .A(n99), .Y(Mul_Shift[10]) );
  INVX1 U40 ( .A(n95), .Y(Mul_Shift[9]) );
  INVX1 U41 ( .A(n42), .Y(n25) );
  INVX1 U42 ( .A(n87), .Y(Mul_Shift[7]) );
  INVX1 U43 ( .A(n103), .Y(Mul_Shift[11]) );
  INVX1 U44 ( .A(n20), .Y(n42) );
  INVX1 U45 ( .A(n43), .Y(n35) );
  INVX1 U46 ( .A(n38), .Y(n19) );
  INVX1 U47 ( .A(n60), .Y(n51) );
  INVX1 U48 ( .A(n38), .Y(n20) );
  INVX1 U49 ( .A(n29), .Y(n43) );
  INVX1 U50 ( .A(n28), .Y(n29) );
  INVX1 U51 ( .A(n49), .Y(n60) );
  INVX1 U52 ( .A(n31), .Y(n32) );
  INVX1 U53 ( .A(n55), .Y(n49) );
  INVX1 U54 ( .A(n47), .Y(n31) );
  INVX1 U55 ( .A(n48), .Y(n67) );
  INVX1 U56 ( .A(n52), .Y(n55) );
  NOR2X1 U57 ( .A(NEG2), .B(NEG1), .Y(n52) );
  INVX1 U58 ( .A(n35), .Y(n36) );
  INVXL U59 ( .A(n57), .Y(Mul_Shift[16]) );
  INVX1 U60 ( .A(n47), .Y(n28) );
  INVXL U61 ( .A(n88), .Y(n80) );
  INVXL U62 ( .A(n59), .Y(n92) );
  INVXL U63 ( .A(n88), .Y(n96) );
  INVXL U64 ( .A(n84), .Y(n89) );
  INVXL U65 ( .A(n84), .Y(n73) );
  INVXL U66 ( .A(n60), .Y(n68) );
  INVXL U67 ( .A(n59), .Y(n100) );
  INVXL U68 ( .A(n62), .Y(Mul_Shift[1]) );
  AOI22XL U69 ( .A0(n1), .A1(n46), .B0(n13), .B1(n41), .Y(n66) );
  INVXL U70 ( .A(n72), .Y(n65) );
  AND2XL U71 ( .A(n12), .B(n44), .Y(Mul_Shift[0]) );
  INVXL U72 ( .A(n51), .Y(n58) );
  INVXL U73 ( .A(n56), .Y(n70) );
  INVXL U74 ( .A(n96), .Y(n94) );
  INVXL U75 ( .A(n92), .Y(n97) );
  INVXL U76 ( .A(n89), .Y(n101) );
  INVXL U77 ( .A(n92), .Y(n104) );
  INVXL U78 ( .A(n96), .Y(n106) );
  INVXL U79 ( .A(n89), .Y(n108) );
  INVXL U80 ( .A(n100), .Y(n110) );
  AOI22XL U81 ( .A0(n11), .A1(n45), .B0(n10), .B1(n39), .Y(n54) );
  INVXL U82 ( .A(n73), .Y(n81) );
  AOI22XL U83 ( .A0(Multiplicant[15]), .A1(n34), .B0(n11), .B1(n24), .Y(n115)
         );
  INVXL U84 ( .A(n68), .Y(n112) );
  INVXL U85 ( .A(n100), .Y(n114) );
  NAND2XL U86 ( .A(n81), .B(Inv_Mul_Shift[6]), .Y(n82) );
  NAND2XL U87 ( .A(n101), .B(Inv_Mul_Shift[7]), .Y(n85) );
  NAND2XL U88 ( .A(n108), .B(Inv_Mul_Shift[8]), .Y(n90) );
  NAND2XL U89 ( .A(n104), .B(Inv_Mul_Shift[9]), .Y(n93) );
  NAND2XL U90 ( .A(n97), .B(Inv_Mul_Shift[10]), .Y(n98) );
  NAND2XL U91 ( .A(n101), .B(Inv_Mul_Shift[11]), .Y(n102) );
  NAND2XL U92 ( .A(n104), .B(Inv_Mul_Shift[12]), .Y(n105) );
  NAND2XL U93 ( .A(n108), .B(Inv_Mul_Shift[13]), .Y(n109) );
  NAND2XL U94 ( .A(n81), .B(Inv_Mul_Shift[14]), .Y(n50) );
  BUFX1 U95 ( .A(Multiplicant[2]), .Y(n1) );
  BUFX1 U96 ( .A(Multiplicant[4]), .Y(n2) );
  BUFX1 U97 ( .A(Multiplicant[5]), .Y(n3) );
  BUFX1 U98 ( .A(Multiplicant[7]), .Y(n4) );
  BUFX1 U99 ( .A(Multiplicant[8]), .Y(n5) );
  BUFX1 U100 ( .A(Multiplicant[9]), .Y(n6) );
  BUFX1 U101 ( .A(Multiplicant[10]), .Y(n7) );
  BUFX1 U102 ( .A(Multiplicant[11]), .Y(n8) );
  BUFX1 U103 ( .A(Multiplicant[12]), .Y(n9) );
  BUFX1 U104 ( .A(Multiplicant[13]), .Y(n10) );
  BUFX1 U105 ( .A(Multiplicant[14]), .Y(n11) );
  BUFX1 U106 ( .A(Multiplicant[0]), .Y(n12) );
  BUFX1 U107 ( .A(Multiplicant[1]), .Y(n13) );
  BUFX1 U108 ( .A(Multiplicant[3]), .Y(n14) );
  BUFX1 U109 ( .A(Multiplicant[6]), .Y(n15) );
  BUFX1 U110 ( .A(n43), .Y(n16) );
  INVXL U111 ( .A(Mul_Shift[0]), .Y(n17) );
  INVXL U112 ( .A(n17), .Y(n18) );
  BUFX1 U113 ( .A(n40), .Y(n21) );
  INVXL U114 ( .A(n22), .Y(n23) );
  INVXL U115 ( .A(n22), .Y(n24) );
  INVXL U116 ( .A(n32), .Y(n33) );
  INVXL U117 ( .A(n32), .Y(n34) );
  INVXL U118 ( .A(n19), .Y(n41) );
  INVXL U119 ( .A(n29), .Y(n44) );
  INVXL U120 ( .A(n30), .Y(n46) );
  OAI21XL U121 ( .A0(n54), .A1(n114), .B0(n50), .Y(PP[14]) );
  OAI21XL U122 ( .A0(n27), .A1(n36), .B0(Multiplicant[15]), .Y(n57) );
  AOI22XL U123 ( .A0(n52), .A1(Mul_Shift[0]), .B0(Inv_Mul_Shift[0]), .B1(n58), 
        .Y(n53) );
  INVXL U124 ( .A(n53), .Y(PP[0]) );
  INVXL U125 ( .A(n65), .Y(n56) );
  OAI2BB2X1 U126 ( .B0(n58), .B1(n57), .A0N(Inv_Mul_Shift[16]), .A1N(n70), .Y(
        PP[16]) );
  INVXL U127 ( .A(n68), .Y(n63) );
  NAND2XL U128 ( .A(n63), .B(Inv_Mul_Shift[1]), .Y(n61) );
  OAI21XL U129 ( .A0(n62), .A1(n97), .B0(n61), .Y(PP[1]) );
  NAND2XL U130 ( .A(n63), .B(Inv_Mul_Shift[2]), .Y(n64) );
  OAI21XL U131 ( .A0(n66), .A1(n65), .B0(n64), .Y(PP[2]) );
  AOI22XL U132 ( .A0(n14), .A1(n33), .B0(n1), .B1(n23), .Y(n71) );
  NAND2XL U133 ( .A(n112), .B(Inv_Mul_Shift[3]), .Y(n69) );
  OAI21XL U134 ( .A0(n71), .A1(n70), .B0(n69), .Y(PP[3]) );
  INVXL U135 ( .A(n80), .Y(n78) );
  INVXL U136 ( .A(n73), .Y(n76) );
  NAND2XL U137 ( .A(n76), .B(Inv_Mul_Shift[4]), .Y(n74) );
  OAI21XL U138 ( .A0(n75), .A1(n78), .B0(n74), .Y(PP[4]) );
  NAND2XL U139 ( .A(n76), .B(Inv_Mul_Shift[5]), .Y(n77) );
  OAI21XL U140 ( .A0(n79), .A1(n78), .B0(n77), .Y(PP[5]) );
  INVXL U141 ( .A(n80), .Y(n86) );
  OAI21XL U142 ( .A0(n83), .A1(n86), .B0(n82), .Y(PP[6]) );
  OAI21XL U143 ( .A0(n87), .A1(n86), .B0(n85), .Y(PP[7]) );
  OAI21XL U144 ( .A0(n91), .A1(n94), .B0(n90), .Y(PP[8]) );
  OAI21XL U145 ( .A0(n95), .A1(n94), .B0(n93), .Y(PP[9]) );
  OAI21XL U146 ( .A0(n99), .A1(n106), .B0(n98), .Y(PP[10]) );
  OAI21XL U147 ( .A0(n103), .A1(n110), .B0(n102), .Y(PP[11]) );
  OAI21XL U148 ( .A0(n107), .A1(n106), .B0(n105), .Y(PP[12]) );
  OAI21XL U149 ( .A0(n111), .A1(n110), .B0(n109), .Y(PP[13]) );
  OAI21XL U150 ( .A0(n115), .A1(n114), .B0(n113), .Y(PP[15]) );
endmodule


module Inverse17_mydesign_3 ( in, out );
  input [16:0] in;
  output [16:0] out;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29;

  BUFX1 U1 ( .A(in[0]), .Y(out[0]) );
  NOR2X1 U2 ( .A(in[15]), .B(n29), .Y(n28) );
  XNOR2X1 U3 ( .A(n28), .B(in[16]), .Y(out[16]) );
  INVX1 U4 ( .A(n13), .Y(n14) );
  INVX1 U5 ( .A(n11), .Y(n12) );
  INVX1 U6 ( .A(n3), .Y(n4) );
  INVX2 U7 ( .A(n27), .Y(n29) );
  NOR2X2 U8 ( .A(in[14]), .B(n26), .Y(n27) );
  INVX1 U9 ( .A(n23), .Y(n24) );
  INVX1 U10 ( .A(n21), .Y(n22) );
  INVX1 U11 ( .A(n19), .Y(n20) );
  INVX1 U12 ( .A(n15), .Y(n16) );
  NOR2X2 U13 ( .A(in[7]), .B(n12), .Y(n13) );
  NOR2X2 U14 ( .A(in[6]), .B(n10), .Y(n11) );
  INVX1 U15 ( .A(n9), .Y(n10) );
  INVX1 U16 ( .A(n7), .Y(n8) );
  NOR2X2 U17 ( .A(in[1]), .B(out[0]), .Y(n1) );
  NOR2X1 U18 ( .A(in[3]), .B(n4), .Y(n5) );
  NOR2X1 U19 ( .A(in[5]), .B(n8), .Y(n9) );
  INVX1 U20 ( .A(n25), .Y(n26) );
  NOR2X1 U21 ( .A(in[12]), .B(n22), .Y(n23) );
  NOR2X1 U22 ( .A(in[11]), .B(n20), .Y(n21) );
  NOR2X1 U23 ( .A(in[10]), .B(n18), .Y(n19) );
  INVX1 U24 ( .A(n17), .Y(n18) );
  NOR2X1 U25 ( .A(in[8]), .B(n14), .Y(n15) );
  NOR2X1 U26 ( .A(in[4]), .B(n6), .Y(n7) );
  INVX1 U27 ( .A(n5), .Y(n6) );
  INVXL U28 ( .A(n1), .Y(n2) );
  NOR2X1 U29 ( .A(in[2]), .B(n2), .Y(n3) );
  AOI21XL U30 ( .A0(in[3]), .A1(n4), .B0(n5), .Y(out[3]) );
  AOI21XL U31 ( .A0(in[5]), .A1(n8), .B0(n9), .Y(out[5]) );
  AOI21XL U32 ( .A0(in[14]), .A1(n26), .B0(n27), .Y(out[14]) );
  AOI21XL U33 ( .A0(in[13]), .A1(n24), .B0(n25), .Y(out[13]) );
  AOI21XL U34 ( .A0(in[12]), .A1(n22), .B0(n23), .Y(out[12]) );
  AOI21XL U35 ( .A0(in[11]), .A1(n20), .B0(n21), .Y(out[11]) );
  AOI21XL U36 ( .A0(in[10]), .A1(n18), .B0(n19), .Y(out[10]) );
  AOI21XL U37 ( .A0(in[9]), .A1(n16), .B0(n17), .Y(out[9]) );
  AOI21XL U38 ( .A0(in[8]), .A1(n14), .B0(n15), .Y(out[8]) );
  AOI21XL U39 ( .A0(in[7]), .A1(n12), .B0(n13), .Y(out[7]) );
  AOI21XL U40 ( .A0(in[4]), .A1(n6), .B0(n7), .Y(out[4]) );
  AOI21XL U41 ( .A0(in[6]), .A1(n10), .B0(n11), .Y(out[6]) );
  AOI21XL U42 ( .A0(in[0]), .A1(in[1]), .B0(n1), .Y(out[1]) );
  AOI21XL U43 ( .A0(in[2]), .A1(n2), .B0(n3), .Y(out[2]) );
  NOR2X2 U44 ( .A(in[9]), .B(n16), .Y(n17) );
  NOR2X2 U45 ( .A(in[13]), .B(n24), .Y(n25) );
  AOI21XL U46 ( .A0(in[15]), .A1(n29), .B0(n28), .Y(out[15]) );
endmodule


module PPUnit_mydesign_3 ( X1, X2, NEG1, NEG2, Multiplicant, PP );
  input [15:0] Multiplicant;
  output [16:0] PP;
  input X1, X2, NEG1, NEG2;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115;
  wire   [16:0] Mul_Shift;
  wire   [16:0] Inv_Mul_Shift;

  Inverse17_mydesign_3 u_Inverse17 ( .in({Mul_Shift[16:1], n40}), .out(
        Inv_Mul_Shift) );
  INVX1 U2 ( .A(n57), .Y(Mul_Shift[1]) );
  INVX1 U3 ( .A(n25), .Y(n26) );
  OAI2BB2X1 U4 ( .B0(n115), .B1(n114), .A0N(Inv_Mul_Shift[16]), .A1N(n113), 
        .Y(PP[16]) );
  NAND2X1 U5 ( .A(n109), .B(Inv_Mul_Shift[15]), .Y(n110) );
  NAND2X1 U6 ( .A(n78), .B(Inv_Mul_Shift[14]), .Y(n49) );
  INVX1 U7 ( .A(n112), .Y(Mul_Shift[15]) );
  INVX1 U8 ( .A(n68), .Y(Mul_Shift[3]) );
  AOI22X1 U9 ( .A0(n7), .A1(n32), .B0(n6), .B1(n27), .Y(n84) );
  AOI22X1 U10 ( .A0(n3), .A1(n31), .B0(n2), .B1(n26), .Y(n68) );
  INVX1 U11 ( .A(n30), .Y(n32) );
  INVX1 U12 ( .A(n25), .Y(n27) );
  INVX1 U13 ( .A(n80), .Y(Mul_Shift[6]) );
  INVX1 U14 ( .A(n76), .Y(Mul_Shift[5]) );
  INVX1 U15 ( .A(n72), .Y(Mul_Shift[4]) );
  AOI22X1 U16 ( .A0(n5), .A1(n45), .B0(n4), .B1(n24), .Y(n76) );
  AOI22X1 U17 ( .A0(n6), .A1(n21), .B0(n5), .B1(n18), .Y(n80) );
  AOI22X1 U18 ( .A0(n4), .A1(n34), .B0(n3), .B1(n39), .Y(n72) );
  AOI22X1 U19 ( .A0(n13), .A1(n34), .B0(n12), .B1(n36), .Y(n104) );
  AOI22X1 U20 ( .A0(n11), .A1(n45), .B0(n10), .B1(n39), .Y(n96) );
  AOI22X1 U21 ( .A0(n9), .A1(n21), .B0(n7), .B1(n18), .Y(n88) );
  INVX1 U22 ( .A(n33), .Y(n34) );
  INVX1 U23 ( .A(n19), .Y(n21) );
  INVX1 U24 ( .A(n16), .Y(n18) );
  INVX1 U25 ( .A(n33), .Y(n45) );
  AOI22X1 U26 ( .A0(n10), .A1(n44), .B0(n9), .B1(n38), .Y(n92) );
  AOI22X1 U27 ( .A0(n1), .A1(n29), .B0(n8), .B1(n37), .Y(n57) );
  INVX1 U28 ( .A(n22), .Y(n37) );
  INVX1 U29 ( .A(n50), .Y(n81) );
  INVX1 U30 ( .A(n35), .Y(n22) );
  BUFX2 U31 ( .A(n63), .Y(n28) );
  INVX1 U32 ( .A(n48), .Y(n54) );
  INVX1 U33 ( .A(n69), .Y(n85) );
  BUFX2 U34 ( .A(n62), .Y(n35) );
  INVX1 U35 ( .A(n58), .Y(n69) );
  INVX1 U36 ( .A(n100), .Y(Mul_Shift[11]) );
  INVX1 U37 ( .A(n84), .Y(Mul_Shift[7]) );
  AOI22X1 U38 ( .A0(n12), .A1(n31), .B0(n11), .B1(n26), .Y(n100) );
  INVX1 U39 ( .A(n30), .Y(n31) );
  INVX1 U40 ( .A(n104), .Y(Mul_Shift[12]) );
  INVX1 U41 ( .A(n108), .Y(Mul_Shift[13]) );
  INVX1 U42 ( .A(n88), .Y(Mul_Shift[8]) );
  INVX1 U43 ( .A(n53), .Y(Mul_Shift[14]) );
  INVX1 U44 ( .A(n96), .Y(Mul_Shift[10]) );
  INVX1 U45 ( .A(n20), .Y(n30) );
  INVX1 U46 ( .A(n17), .Y(n25) );
  INVX1 U47 ( .A(n92), .Y(Mul_Shift[9]) );
  INVX1 U48 ( .A(n16), .Y(n17) );
  INVX1 U49 ( .A(n19), .Y(n20) );
  INVX1 U50 ( .A(n43), .Y(n19) );
  INVX1 U51 ( .A(n36), .Y(n16) );
  INVX1 U52 ( .A(n42), .Y(n33) );
  INVX1 U53 ( .A(n28), .Y(n43) );
  INVX1 U54 ( .A(n23), .Y(n36) );
  INVX1 U55 ( .A(n28), .Y(n42) );
  INVX1 U56 ( .A(n55), .Y(n50) );
  INVX1 U57 ( .A(n35), .Y(n23) );
  INVX1 U58 ( .A(n48), .Y(n55) );
  INVX1 U59 ( .A(n58), .Y(n48) );
  BUFX2 U60 ( .A(n46), .Y(n63) );
  INVXL U61 ( .A(n46), .Y(n29) );
  OAI21X1 U62 ( .A0(NEG1), .A1(X1), .B0(n47), .Y(n46) );
  INVX1 U63 ( .A(n51), .Y(n58) );
  INVX1 U64 ( .A(n47), .Y(n62) );
  NOR2X1 U65 ( .A(NEG2), .B(NEG1), .Y(n51) );
  INVXL U66 ( .A(n114), .Y(Mul_Shift[16]) );
  AOI22XL U67 ( .A0(n2), .A1(n29), .B0(n1), .B1(n38), .Y(n61) );
  INVXL U68 ( .A(n54), .Y(n97) );
  INVXL U69 ( .A(n85), .Y(n93) );
  INVXL U70 ( .A(n81), .Y(n86) );
  INVXL U71 ( .A(n54), .Y(n89) );
  INVXL U72 ( .A(n55), .Y(n66) );
  INVXL U73 ( .A(n81), .Y(n70) );
  INVXL U74 ( .A(n85), .Y(n77) );
  INVXL U75 ( .A(n65), .Y(n113) );
  AOI22XL U76 ( .A0(Multiplicant[15]), .A1(n32), .B0(n15), .B1(n27), .Y(n112)
         );
  INVXL U77 ( .A(n66), .Y(n109) );
  AOI22XL U78 ( .A0(n15), .A1(n44), .B0(n14), .B1(n17), .Y(n53) );
  INVXL U79 ( .A(n97), .Y(n111) );
  AOI22XL U80 ( .A0(n14), .A1(n20), .B0(n13), .B1(n24), .Y(n108) );
  INVXL U81 ( .A(n97), .Y(n107) );
  INVXL U82 ( .A(n93), .Y(n103) );
  INVXL U83 ( .A(n89), .Y(n101) );
  INVXL U84 ( .A(n86), .Y(n105) );
  INVXL U85 ( .A(n93), .Y(n91) );
  INVXL U86 ( .A(n86), .Y(n98) );
  INVXL U87 ( .A(n70), .Y(n73) );
  INVXL U88 ( .A(n89), .Y(n94) );
  INVXL U89 ( .A(n50), .Y(n115) );
  INVXL U90 ( .A(n69), .Y(n64) );
  INVXL U91 ( .A(n70), .Y(n78) );
  INVXL U92 ( .A(n77), .Y(n83) );
  NAND2XL U93 ( .A(n73), .B(Inv_Mul_Shift[5]), .Y(n74) );
  NAND2XL U94 ( .A(n105), .B(Inv_Mul_Shift[13]), .Y(n106) );
  NAND2XL U95 ( .A(n101), .B(Inv_Mul_Shift[12]), .Y(n102) );
  NAND2XL U96 ( .A(n98), .B(Inv_Mul_Shift[11]), .Y(n99) );
  NAND2XL U97 ( .A(n94), .B(Inv_Mul_Shift[10]), .Y(n95) );
  NAND2XL U98 ( .A(n101), .B(Inv_Mul_Shift[9]), .Y(n90) );
  NAND2XL U99 ( .A(n105), .B(Inv_Mul_Shift[8]), .Y(n87) );
  NAND2XL U100 ( .A(n98), .B(Inv_Mul_Shift[7]), .Y(n82) );
  NAND2XL U101 ( .A(n73), .B(Inv_Mul_Shift[4]), .Y(n71) );
  NAND2XL U102 ( .A(n78), .B(Inv_Mul_Shift[6]), .Y(n79) );
  BUFX1 U103 ( .A(Multiplicant[1]), .Y(n1) );
  BUFX1 U104 ( .A(Multiplicant[2]), .Y(n2) );
  BUFX1 U105 ( .A(Multiplicant[3]), .Y(n3) );
  BUFX1 U106 ( .A(Multiplicant[4]), .Y(n4) );
  BUFX1 U107 ( .A(Multiplicant[5]), .Y(n5) );
  BUFX1 U108 ( .A(Multiplicant[6]), .Y(n6) );
  BUFX1 U109 ( .A(Multiplicant[7]), .Y(n7) );
  BUFX1 U110 ( .A(Multiplicant[0]), .Y(n8) );
  BUFX1 U111 ( .A(Multiplicant[8]), .Y(n9) );
  BUFX1 U112 ( .A(Multiplicant[9]), .Y(n10) );
  BUFX1 U113 ( .A(Multiplicant[10]), .Y(n11) );
  BUFX1 U114 ( .A(Multiplicant[11]), .Y(n12) );
  BUFX1 U115 ( .A(Multiplicant[12]), .Y(n13) );
  BUFX1 U116 ( .A(Multiplicant[13]), .Y(n14) );
  BUFX1 U117 ( .A(Multiplicant[14]), .Y(n15) );
  BUFX1 U118 ( .A(n37), .Y(n24) );
  INVXL U119 ( .A(n22), .Y(n38) );
  INVXL U120 ( .A(n23), .Y(n39) );
  NAND2XL U121 ( .A(n8), .B(n42), .Y(Mul_Shift[0]) );
  INVXL U122 ( .A(Mul_Shift[0]), .Y(n40) );
  INVXL U123 ( .A(Mul_Shift[0]), .Y(n41) );
  INVXL U124 ( .A(n63), .Y(n44) );
  OAI21XL U125 ( .A0(n53), .A1(n111), .B0(n49), .Y(PP[14]) );
  NOR2X1 U126 ( .A(NEG2), .B(X2), .Y(n47) );
  OAI21XL U127 ( .A0(n62), .A1(n43), .B0(Multiplicant[15]), .Y(n114) );
  AOI22XL U128 ( .A0(n51), .A1(n41), .B0(Inv_Mul_Shift[0]), .B1(n115), .Y(n52)
         );
  INVXL U129 ( .A(n52), .Y(PP[0]) );
  INVXL U130 ( .A(n66), .Y(n59) );
  NAND2XL U131 ( .A(n59), .B(Inv_Mul_Shift[1]), .Y(n56) );
  OAI21XL U132 ( .A0(n94), .A1(n57), .B0(n56), .Y(PP[1]) );
  NAND2XL U133 ( .A(n59), .B(Inv_Mul_Shift[2]), .Y(n60) );
  OAI21XL U134 ( .A0(n61), .A1(n64), .B0(n60), .Y(PP[2]) );
  INVXL U135 ( .A(n61), .Y(Mul_Shift[2]) );
  INVXL U136 ( .A(n64), .Y(n65) );
  NAND2XL U137 ( .A(n109), .B(Inv_Mul_Shift[3]), .Y(n67) );
  OAI21XL U138 ( .A0(n68), .A1(n113), .B0(n67), .Y(PP[3]) );
  INVXL U139 ( .A(n77), .Y(n75) );
  OAI21XL U140 ( .A0(n72), .A1(n75), .B0(n71), .Y(PP[4]) );
  OAI21XL U141 ( .A0(n76), .A1(n75), .B0(n74), .Y(PP[5]) );
  OAI21XL U142 ( .A0(n80), .A1(n83), .B0(n79), .Y(PP[6]) );
  OAI21XL U143 ( .A0(n84), .A1(n83), .B0(n82), .Y(PP[7]) );
  OAI21XL U144 ( .A0(n88), .A1(n91), .B0(n87), .Y(PP[8]) );
  OAI21XL U145 ( .A0(n92), .A1(n91), .B0(n90), .Y(PP[9]) );
  OAI21XL U146 ( .A0(n96), .A1(n103), .B0(n95), .Y(PP[10]) );
  OAI21XL U147 ( .A0(n100), .A1(n107), .B0(n99), .Y(PP[11]) );
  OAI21XL U148 ( .A0(n104), .A1(n103), .B0(n102), .Y(PP[12]) );
  OAI21XL U149 ( .A0(n108), .A1(n107), .B0(n106), .Y(PP[13]) );
  OAI21XL U150 ( .A0(n112), .A1(n111), .B0(n110), .Y(PP[15]) );
endmodule


module Inverse17_mydesign_4 ( in, out );
  input [16:0] in;
  output [16:0] out;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29;

  NOR2X1 U1 ( .A(in[6]), .B(n10), .Y(n11) );
  XNOR2X1 U2 ( .A(n28), .B(in[16]), .Y(out[16]) );
  NOR2X2 U3 ( .A(in[7]), .B(n12), .Y(n13) );
  INVX2 U4 ( .A(n11), .Y(n12) );
  INVX2 U5 ( .A(n9), .Y(n10) );
  INVX2 U6 ( .A(n7), .Y(n8) );
  NOR2X2 U7 ( .A(in[15]), .B(n29), .Y(n28) );
  INVX1 U8 ( .A(n27), .Y(n29) );
  INVX1 U9 ( .A(n25), .Y(n26) );
  INVX1 U10 ( .A(n23), .Y(n24) );
  INVX1 U11 ( .A(n21), .Y(n22) );
  INVX1 U12 ( .A(n17), .Y(n18) );
  NOR2X2 U13 ( .A(in[5]), .B(n8), .Y(n9) );
  NOR2X2 U14 ( .A(in[4]), .B(n6), .Y(n7) );
  INVX1 U15 ( .A(n5), .Y(n6) );
  NOR2X1 U16 ( .A(in[10]), .B(n18), .Y(n19) );
  NOR2X1 U17 ( .A(in[13]), .B(n24), .Y(n25) );
  NOR2X1 U18 ( .A(in[12]), .B(n22), .Y(n23) );
  NOR2X1 U19 ( .A(in[11]), .B(n20), .Y(n21) );
  INVX1 U20 ( .A(n19), .Y(n20) );
  NOR2X1 U21 ( .A(in[9]), .B(n16), .Y(n17) );
  INVX1 U22 ( .A(n15), .Y(n16) );
  NOR2X1 U23 ( .A(in[8]), .B(n14), .Y(n15) );
  INVX1 U24 ( .A(n13), .Y(n14) );
  NOR2X1 U25 ( .A(in[3]), .B(n4), .Y(n5) );
  NOR2X1 U26 ( .A(in[14]), .B(n26), .Y(n27) );
  INVXL U27 ( .A(n3), .Y(n4) );
  INVXL U28 ( .A(n1), .Y(n2) );
  NOR2X1 U29 ( .A(in[2]), .B(n2), .Y(n3) );
  NOR2X1 U30 ( .A(in[1]), .B(out[0]), .Y(n1) );
  AOI21XL U31 ( .A0(in[10]), .A1(n18), .B0(n19), .Y(out[10]) );
  AOI21XL U32 ( .A0(in[13]), .A1(n24), .B0(n25), .Y(out[13]) );
  AOI21XL U33 ( .A0(in[12]), .A1(n22), .B0(n23), .Y(out[12]) );
  AOI21XL U34 ( .A0(in[11]), .A1(n20), .B0(n21), .Y(out[11]) );
  AOI21XL U35 ( .A0(in[9]), .A1(n16), .B0(n17), .Y(out[9]) );
  AOI21XL U36 ( .A0(in[8]), .A1(n14), .B0(n15), .Y(out[8]) );
  AOI21XL U37 ( .A0(in[7]), .A1(n12), .B0(n13), .Y(out[7]) );
  AOI21XL U38 ( .A0(in[6]), .A1(n10), .B0(n11), .Y(out[6]) );
  AOI21XL U39 ( .A0(in[5]), .A1(n8), .B0(n9), .Y(out[5]) );
  AOI21XL U40 ( .A0(in[14]), .A1(n26), .B0(n27), .Y(out[14]) );
  BUFX1 U41 ( .A(in[0]), .Y(out[0]) );
  AOI21XL U42 ( .A0(in[0]), .A1(in[1]), .B0(n1), .Y(out[1]) );
  AOI21XL U43 ( .A0(in[2]), .A1(n2), .B0(n3), .Y(out[2]) );
  AOI21XL U44 ( .A0(in[3]), .A1(n4), .B0(n5), .Y(out[3]) );
  AOI21XL U45 ( .A0(in[4]), .A1(n6), .B0(n7), .Y(out[4]) );
  AOI21XL U46 ( .A0(in[15]), .A1(n29), .B0(n28), .Y(out[15]) );
endmodule


module PPUnit_mydesign_4 ( X1, X2, NEG1, NEG2, Multiplicant, PP );
  input [15:0] Multiplicant;
  output [16:0] PP;
  input X1, X2, NEG1, NEG2;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115;
  wire   [16:0] Mul_Shift;
  wire   [16:0] Inv_Mul_Shift;

  Inverse17_mydesign_4 u_Inverse17 ( .in({Mul_Shift[16:1], n40}), .out(
        Inv_Mul_Shift) );
  NAND2X1 U2 ( .A(n112), .B(Inv_Mul_Shift[15]), .Y(n113) );
  INVX1 U3 ( .A(n83), .Y(Mul_Shift[6]) );
  INVX1 U4 ( .A(n75), .Y(Mul_Shift[4]) );
  AOI22X1 U5 ( .A0(n13), .A1(n44), .B0(n12), .B1(n36), .Y(n53) );
  AOI22X1 U6 ( .A0(n11), .A1(n34), .B0(n10), .B1(n26), .Y(n107) );
  AOI22X1 U7 ( .A0(n6), .A1(n44), .B0(n5), .B1(n36), .Y(n83) );
  INVX1 U8 ( .A(n115), .Y(Mul_Shift[15]) );
  INVX1 U9 ( .A(n33), .Y(n44) );
  INVX1 U10 ( .A(n79), .Y(Mul_Shift[5]) );
  INVX1 U11 ( .A(n33), .Y(n34) );
  AOI22X1 U12 ( .A0(n10), .A1(n31), .B0(n9), .B1(n23), .Y(n103) );
  AOI22X1 U13 ( .A0(n12), .A1(n18), .B0(n11), .B1(n21), .Y(n111) );
  AOI22X1 U14 ( .A0(n7), .A1(n29), .B0(n15), .B1(n27), .Y(n91) );
  AOI22X1 U15 ( .A0(n15), .A1(n32), .B0(n6), .B1(n24), .Y(n87) );
  INVX1 U16 ( .A(n30), .Y(n31) );
  INVX1 U17 ( .A(n25), .Y(n27) );
  INVX1 U18 ( .A(n30), .Y(n32) );
  INVX1 U19 ( .A(n50), .Y(n84) );
  AOI22X1 U20 ( .A0(n9), .A1(n45), .B0(n8), .B1(n39), .Y(n99) );
  AOI22X1 U21 ( .A0(n8), .A1(n43), .B0(n7), .B1(n38), .Y(n95) );
  INVX1 U22 ( .A(n72), .Y(n88) );
  INVX1 U23 ( .A(n48), .Y(n58) );
  INVX1 U24 ( .A(n35), .Y(n19) );
  BUFX2 U25 ( .A(n67), .Y(n28) );
  INVX1 U26 ( .A(n54), .Y(n72) );
  INVX1 U27 ( .A(n66), .Y(n22) );
  BUFX2 U28 ( .A(n46), .Y(n67) );
  BUFX2 U29 ( .A(n66), .Y(n35) );
  INVX1 U30 ( .A(n53), .Y(Mul_Shift[14]) );
  INVX1 U31 ( .A(n107), .Y(Mul_Shift[12]) );
  INVX1 U32 ( .A(n103), .Y(Mul_Shift[11]) );
  INVX1 U33 ( .A(n87), .Y(Mul_Shift[7]) );
  INVX1 U34 ( .A(n111), .Y(Mul_Shift[13]) );
  INVX1 U35 ( .A(n91), .Y(Mul_Shift[8]) );
  INVX1 U36 ( .A(n17), .Y(n33) );
  INVX1 U37 ( .A(n95), .Y(Mul_Shift[9]) );
  INVX1 U38 ( .A(n16), .Y(n17) );
  INVX1 U39 ( .A(n99), .Y(Mul_Shift[10]) );
  INVX1 U40 ( .A(n43), .Y(n30) );
  INVX1 U41 ( .A(n28), .Y(n43) );
  INVX1 U42 ( .A(n39), .Y(n25) );
  INVX1 U43 ( .A(n28), .Y(n42) );
  INVX1 U44 ( .A(n59), .Y(n50) );
  INVX1 U45 ( .A(n48), .Y(n59) );
  INVX1 U46 ( .A(n20), .Y(n39) );
  INVX1 U47 ( .A(n54), .Y(n48) );
  INVX1 U48 ( .A(n35), .Y(n20) );
  INVXL U49 ( .A(n46), .Y(n29) );
  INVX1 U50 ( .A(n51), .Y(n54) );
  NOR2X1 U51 ( .A(NEG2), .B(NEG1), .Y(n51) );
  INVX1 U52 ( .A(n47), .Y(n66) );
  NOR2X2 U53 ( .A(NEG2), .B(X2), .Y(n47) );
  OAI21X2 U54 ( .A0(NEG1), .A1(X1), .B0(n47), .Y(n46) );
  AOI22XL U55 ( .A0(n5), .A1(n18), .B0(n14), .B1(n21), .Y(n79) );
  AOI22XL U56 ( .A0(n14), .A1(n34), .B0(n4), .B1(n26), .Y(n75) );
  OAI2BB2X1 U57 ( .B0(n57), .B1(n56), .A0N(Inv_Mul_Shift[16]), .A1N(n70), .Y(
        PP[16]) );
  INVXL U58 ( .A(n56), .Y(Mul_Shift[16]) );
  INVX1 U59 ( .A(n42), .Y(n16) );
  INVXL U60 ( .A(n88), .Y(n96) );
  INVXL U61 ( .A(n84), .Y(n89) );
  INVXL U62 ( .A(n88), .Y(n80) );
  INVXL U63 ( .A(n58), .Y(n92) );
  INVXL U64 ( .A(n84), .Y(n73) );
  INVXL U65 ( .A(n59), .Y(n68) );
  INVXL U66 ( .A(n58), .Y(n100) );
  INVXL U67 ( .A(n96), .Y(n106) );
  INVXL U68 ( .A(n100), .Y(n110) );
  INVXL U69 ( .A(n92), .Y(n104) );
  INVXL U70 ( .A(n89), .Y(n108) );
  INVXL U71 ( .A(n96), .Y(n94) );
  INVXL U72 ( .A(n89), .Y(n101) );
  INVXL U73 ( .A(n55), .Y(n70) );
  AOI22XL U74 ( .A0(n3), .A1(n45), .B0(n2), .B1(n38), .Y(n65) );
  INVXL U75 ( .A(n72), .Y(n64) );
  AOI22X1 U76 ( .A0(n2), .A1(n42), .B0(n1), .B1(n37), .Y(n61) );
  INVXL U77 ( .A(n61), .Y(Mul_Shift[1]) );
  INVXL U78 ( .A(n92), .Y(n97) );
  INVXL U79 ( .A(n73), .Y(n81) );
  INVXL U80 ( .A(n50), .Y(n57) );
  AOI22XL U81 ( .A0(Multiplicant[15]), .A1(n32), .B0(n13), .B1(n24), .Y(n115)
         );
  INVXL U82 ( .A(n68), .Y(n112) );
  INVXL U83 ( .A(n100), .Y(n114) );
  NAND2XL U84 ( .A(n97), .B(Inv_Mul_Shift[10]), .Y(n98) );
  NAND2XL U85 ( .A(n108), .B(Inv_Mul_Shift[13]), .Y(n109) );
  NAND2XL U86 ( .A(n104), .B(Inv_Mul_Shift[12]), .Y(n105) );
  NAND2XL U87 ( .A(n101), .B(Inv_Mul_Shift[11]), .Y(n102) );
  NAND2XL U88 ( .A(n104), .B(Inv_Mul_Shift[9]), .Y(n93) );
  NAND2XL U89 ( .A(n108), .B(Inv_Mul_Shift[8]), .Y(n90) );
  NAND2XL U90 ( .A(n101), .B(Inv_Mul_Shift[7]), .Y(n85) );
  NAND2XL U91 ( .A(n81), .B(Inv_Mul_Shift[6]), .Y(n82) );
  NAND2XL U92 ( .A(n81), .B(Inv_Mul_Shift[14]), .Y(n49) );
  BUFX1 U93 ( .A(Multiplicant[0]), .Y(n1) );
  BUFX1 U94 ( .A(Multiplicant[1]), .Y(n2) );
  BUFX1 U95 ( .A(Multiplicant[2]), .Y(n3) );
  BUFX1 U96 ( .A(Multiplicant[3]), .Y(n4) );
  BUFX1 U97 ( .A(Multiplicant[5]), .Y(n5) );
  BUFX1 U98 ( .A(Multiplicant[6]), .Y(n6) );
  BUFX1 U99 ( .A(Multiplicant[8]), .Y(n7) );
  BUFX1 U100 ( .A(Multiplicant[9]), .Y(n8) );
  BUFX1 U101 ( .A(Multiplicant[10]), .Y(n9) );
  BUFX1 U102 ( .A(Multiplicant[11]), .Y(n10) );
  BUFX1 U103 ( .A(Multiplicant[12]), .Y(n11) );
  BUFX1 U104 ( .A(Multiplicant[13]), .Y(n12) );
  BUFX1 U105 ( .A(Multiplicant[14]), .Y(n13) );
  BUFX1 U106 ( .A(Multiplicant[4]), .Y(n14) );
  BUFX1 U107 ( .A(Multiplicant[7]), .Y(n15) );
  INVXL U108 ( .A(n16), .Y(n18) );
  BUFX1 U109 ( .A(n37), .Y(n21) );
  INVXL U110 ( .A(n22), .Y(n23) );
  INVXL U111 ( .A(n22), .Y(n24) );
  INVXL U112 ( .A(n25), .Y(n26) );
  INVXL U113 ( .A(n19), .Y(n36) );
  INVXL U114 ( .A(n20), .Y(n37) );
  INVXL U115 ( .A(n19), .Y(n38) );
  NAND2XL U116 ( .A(n1), .B(n29), .Y(Mul_Shift[0]) );
  INVXL U117 ( .A(Mul_Shift[0]), .Y(n40) );
  INVXL U118 ( .A(Mul_Shift[0]), .Y(n41) );
  INVXL U119 ( .A(n67), .Y(n45) );
  OAI21XL U120 ( .A0(n53), .A1(n114), .B0(n49), .Y(PP[14]) );
  OAI21XL U121 ( .A0(n27), .A1(n17), .B0(Multiplicant[15]), .Y(n56) );
  AOI22XL U122 ( .A0(n51), .A1(n41), .B0(Inv_Mul_Shift[0]), .B1(n57), .Y(n52)
         );
  INVXL U123 ( .A(n52), .Y(PP[0]) );
  INVXL U124 ( .A(n64), .Y(n55) );
  INVXL U125 ( .A(n68), .Y(n62) );
  NAND2XL U126 ( .A(n62), .B(Inv_Mul_Shift[1]), .Y(n60) );
  OAI21XL U127 ( .A0(n61), .A1(n97), .B0(n60), .Y(PP[1]) );
  NAND2XL U128 ( .A(n62), .B(Inv_Mul_Shift[2]), .Y(n63) );
  OAI21XL U129 ( .A0(n65), .A1(n64), .B0(n63), .Y(PP[2]) );
  INVXL U130 ( .A(n65), .Y(Mul_Shift[2]) );
  AOI22XL U131 ( .A0(n4), .A1(n31), .B0(n3), .B1(n23), .Y(n71) );
  NAND2XL U132 ( .A(n112), .B(Inv_Mul_Shift[3]), .Y(n69) );
  OAI21XL U133 ( .A0(n71), .A1(n70), .B0(n69), .Y(PP[3]) );
  INVXL U134 ( .A(n71), .Y(Mul_Shift[3]) );
  INVXL U135 ( .A(n80), .Y(n78) );
  INVXL U136 ( .A(n73), .Y(n76) );
  NAND2XL U137 ( .A(n76), .B(Inv_Mul_Shift[4]), .Y(n74) );
  OAI21XL U138 ( .A0(n75), .A1(n78), .B0(n74), .Y(PP[4]) );
  NAND2XL U139 ( .A(n76), .B(Inv_Mul_Shift[5]), .Y(n77) );
  OAI21XL U140 ( .A0(n79), .A1(n78), .B0(n77), .Y(PP[5]) );
  INVXL U141 ( .A(n80), .Y(n86) );
  OAI21XL U142 ( .A0(n83), .A1(n86), .B0(n82), .Y(PP[6]) );
  OAI21XL U143 ( .A0(n87), .A1(n86), .B0(n85), .Y(PP[7]) );
  OAI21XL U144 ( .A0(n91), .A1(n94), .B0(n90), .Y(PP[8]) );
  OAI21XL U145 ( .A0(n95), .A1(n94), .B0(n93), .Y(PP[9]) );
  OAI21XL U146 ( .A0(n99), .A1(n106), .B0(n98), .Y(PP[10]) );
  OAI21XL U147 ( .A0(n103), .A1(n110), .B0(n102), .Y(PP[11]) );
  OAI21XL U148 ( .A0(n107), .A1(n106), .B0(n105), .Y(PP[12]) );
  OAI21XL U149 ( .A0(n111), .A1(n110), .B0(n109), .Y(PP[13]) );
  OAI21XL U150 ( .A0(n115), .A1(n114), .B0(n113), .Y(PP[15]) );
endmodule


module Inverse17_mydesign_5 ( in, out );
  input [16:0] in;
  output [16:0] out;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29;

  NOR2X1 U1 ( .A(in[9]), .B(n16), .Y(n17) );
  INVX1 U2 ( .A(n17), .Y(n18) );
  INVX1 U3 ( .A(n1), .Y(n2) );
  NOR2X1 U4 ( .A(in[1]), .B(out[0]), .Y(n1) );
  INVX1 U5 ( .A(n27), .Y(n29) );
  INVX1 U6 ( .A(n25), .Y(n26) );
  INVX1 U7 ( .A(n23), .Y(n24) );
  INVX1 U8 ( .A(n21), .Y(n22) );
  INVX1 U9 ( .A(n19), .Y(n20) );
  INVX1 U10 ( .A(n15), .Y(n16) );
  NOR2X2 U11 ( .A(in[5]), .B(n8), .Y(n9) );
  NOR2X2 U12 ( .A(in[2]), .B(n2), .Y(n3) );
  NOR2X1 U13 ( .A(in[3]), .B(n4), .Y(n5) );
  INVX1 U14 ( .A(n3), .Y(n4) );
  INVX1 U15 ( .A(n5), .Y(n6) );
  AOI21XL U16 ( .A0(in[6]), .A1(n10), .B0(n11), .Y(out[6]) );
  AOI21XL U17 ( .A0(in[7]), .A1(n12), .B0(n13), .Y(out[7]) );
  AOI21XL U18 ( .A0(in[8]), .A1(n14), .B0(n15), .Y(out[8]) );
  AOI21XL U19 ( .A0(in[9]), .A1(n16), .B0(n17), .Y(out[9]) );
  AOI21XL U20 ( .A0(in[10]), .A1(n18), .B0(n19), .Y(out[10]) );
  AOI21XL U21 ( .A0(in[11]), .A1(n20), .B0(n21), .Y(out[11]) );
  AOI21XL U22 ( .A0(in[13]), .A1(n24), .B0(n25), .Y(out[13]) );
  AOI21XL U23 ( .A0(in[14]), .A1(n26), .B0(n27), .Y(out[14]) );
  AOI21XL U24 ( .A0(in[12]), .A1(n22), .B0(n23), .Y(out[12]) );
  NOR2X2 U25 ( .A(in[13]), .B(n24), .Y(n25) );
  BUFX1 U26 ( .A(in[0]), .Y(out[0]) );
  AOI21XL U27 ( .A0(in[0]), .A1(in[1]), .B0(n1), .Y(out[1]) );
  AOI21XL U28 ( .A0(in[2]), .A1(n2), .B0(n3), .Y(out[2]) );
  AOI21XL U29 ( .A0(in[3]), .A1(n4), .B0(n5), .Y(out[3]) );
  NOR2X2 U30 ( .A(in[4]), .B(n6), .Y(n7) );
  AOI21XL U31 ( .A0(in[4]), .A1(n6), .B0(n7), .Y(out[4]) );
  INVX1 U32 ( .A(n7), .Y(n8) );
  AOI21XL U33 ( .A0(in[5]), .A1(n8), .B0(n9), .Y(out[5]) );
  INVX1 U34 ( .A(n9), .Y(n10) );
  NOR2X1 U35 ( .A(in[6]), .B(n10), .Y(n11) );
  INVX1 U36 ( .A(n11), .Y(n12) );
  NOR2X1 U37 ( .A(in[7]), .B(n12), .Y(n13) );
  INVX1 U38 ( .A(n13), .Y(n14) );
  NOR2X2 U39 ( .A(in[8]), .B(n14), .Y(n15) );
  NOR2X2 U40 ( .A(in[10]), .B(n18), .Y(n19) );
  NOR2X2 U41 ( .A(in[11]), .B(n20), .Y(n21) );
  NOR2X2 U42 ( .A(in[12]), .B(n22), .Y(n23) );
  NOR2X2 U43 ( .A(in[14]), .B(n26), .Y(n27) );
  NOR2X2 U44 ( .A(in[15]), .B(n29), .Y(n28) );
  XNOR2X1 U45 ( .A(n28), .B(in[16]), .Y(out[16]) );
  AOI21XL U46 ( .A0(in[15]), .A1(n29), .B0(n28), .Y(out[15]) );
endmodule


module PPUnit_mydesign_5 ( X1, X2, NEG1, NEG2, Multiplicant, PP );
  input [15:0] Multiplicant;
  output [16:0] PP;
  input X1, X2, NEG1, NEG2;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116;
  wire   [16:0] Mul_Shift;
  wire   [16:0] Inv_Mul_Shift;

  Inverse17_mydesign_5 u_Inverse17 ( .in({Mul_Shift[16:1], n41}), .out(
        Inv_Mul_Shift) );
  INVX1 U2 ( .A(n19), .Y(n21) );
  AOI22X1 U3 ( .A0(n2), .A1(n21), .B0(n1), .B1(n38), .Y(n58) );
  NAND2X1 U4 ( .A(n110), .B(Inv_Mul_Shift[15]), .Y(n111) );
  INVX1 U5 ( .A(n69), .Y(Mul_Shift[3]) );
  INVX1 U6 ( .A(n113), .Y(Mul_Shift[15]) );
  AOI22X1 U7 ( .A0(n12), .A1(n32), .B0(n11), .B1(n26), .Y(n101) );
  AOI22X1 U8 ( .A0(n8), .A1(n33), .B0(n7), .B1(n27), .Y(n85) );
  INVX1 U9 ( .A(n31), .Y(n33) );
  INVX1 U10 ( .A(n25), .Y(n27) );
  INVX1 U11 ( .A(n81), .Y(Mul_Shift[6]) );
  INVX1 U12 ( .A(n25), .Y(n26) );
  AOI22X1 U13 ( .A0(n9), .A1(n34), .B0(n8), .B1(n18), .Y(n89) );
  AOI22X1 U14 ( .A0(n7), .A1(n21), .B0(n6), .B1(n18), .Y(n81) );
  INVX1 U15 ( .A(n77), .Y(Mul_Shift[5]) );
  INVX1 U16 ( .A(n73), .Y(Mul_Shift[4]) );
  AOI22X1 U17 ( .A0(n6), .A1(n46), .B0(n5), .B1(n24), .Y(n77) );
  INVX1 U18 ( .A(n16), .Y(n18) );
  INVX1 U19 ( .A(n51), .Y(n82) );
  AOI22X1 U20 ( .A0(n10), .A1(n45), .B0(n9), .B1(n39), .Y(n93) );
  AOI22X1 U21 ( .A0(n11), .A1(n46), .B0(n10), .B1(n40), .Y(n97) );
  INVX1 U22 ( .A(n30), .Y(n46) );
  INVX1 U23 ( .A(n22), .Y(n38) );
  INVX1 U24 ( .A(n70), .Y(n86) );
  INVX1 U25 ( .A(n49), .Y(n55) );
  INVX1 U26 ( .A(n36), .Y(n22) );
  INVX1 U27 ( .A(n59), .Y(n70) );
  INVX1 U28 ( .A(n64), .Y(n28) );
  BUFX2 U29 ( .A(n63), .Y(n36) );
  INVX1 U30 ( .A(n85), .Y(Mul_Shift[7]) );
  INVX1 U31 ( .A(n101), .Y(Mul_Shift[11]) );
  INVX1 U32 ( .A(n89), .Y(Mul_Shift[8]) );
  INVX1 U33 ( .A(n54), .Y(Mul_Shift[14]) );
  INVX1 U34 ( .A(n109), .Y(Mul_Shift[13]) );
  INVX1 U35 ( .A(n17), .Y(n25) );
  INVX1 U36 ( .A(n20), .Y(n31) );
  INVX1 U37 ( .A(n19), .Y(n20) );
  INVX1 U38 ( .A(n16), .Y(n17) );
  INVX1 U39 ( .A(n93), .Y(Mul_Shift[9]) );
  INVX1 U40 ( .A(n97), .Y(Mul_Shift[10]) );
  INVX1 U41 ( .A(n105), .Y(Mul_Shift[12]) );
  INVX1 U42 ( .A(n37), .Y(n16) );
  INVX1 U43 ( .A(n44), .Y(n19) );
  INVX1 U44 ( .A(n29), .Y(n44) );
  INVX1 U45 ( .A(n23), .Y(n37) );
  INVX1 U46 ( .A(n56), .Y(n51) );
  INVX1 U47 ( .A(n49), .Y(n56) );
  INVX1 U48 ( .A(n28), .Y(n30) );
  INVX1 U49 ( .A(n36), .Y(n23) );
  INVX2 U50 ( .A(n28), .Y(n29) );
  INVX1 U51 ( .A(n59), .Y(n49) );
  INVX1 U52 ( .A(n52), .Y(n59) );
  BUFX2 U53 ( .A(n47), .Y(n64) );
  INVX1 U54 ( .A(n48), .Y(n63) );
  NOR2X1 U55 ( .A(NEG2), .B(NEG1), .Y(n52) );
  AOI22X1 U56 ( .A0(n4), .A1(n32), .B0(n3), .B1(n26), .Y(n69) );
  INVX1 U57 ( .A(n31), .Y(n32) );
  INVXL U58 ( .A(n115), .Y(Mul_Shift[16]) );
  NOR2X1 U59 ( .A(NEG2), .B(X2), .Y(n48) );
  INVXL U60 ( .A(n86), .Y(n78) );
  INVXL U61 ( .A(n82), .Y(n87) );
  INVXL U62 ( .A(n82), .Y(n71) );
  INVXL U63 ( .A(n55), .Y(n98) );
  INVXL U64 ( .A(n86), .Y(n94) );
  INVXL U65 ( .A(n55), .Y(n90) );
  INVXL U66 ( .A(n56), .Y(n67) );
  INVXL U67 ( .A(n66), .Y(n114) );
  AOI22XL U68 ( .A0(n5), .A1(n35), .B0(n4), .B1(n40), .Y(n73) );
  INVXL U69 ( .A(n94), .Y(n92) );
  INVXL U70 ( .A(n87), .Y(n99) );
  AOI22XL U71 ( .A0(n14), .A1(n20), .B0(n13), .B1(n24), .Y(n109) );
  INVXL U72 ( .A(n87), .Y(n106) );
  INVXL U73 ( .A(n98), .Y(n108) );
  AOI22XL U74 ( .A0(n15), .A1(n44), .B0(n14), .B1(n17), .Y(n54) );
  INVXL U75 ( .A(n71), .Y(n79) );
  AOI22XL U76 ( .A0(Multiplicant[15]), .A1(n33), .B0(n15), .B1(n27), .Y(n113)
         );
  INVXL U77 ( .A(n67), .Y(n110) );
  INVXL U78 ( .A(n98), .Y(n112) );
  AOI22XL U79 ( .A0(n3), .A1(n45), .B0(n2), .B1(n39), .Y(n62) );
  AOI22XL U80 ( .A0(n13), .A1(n35), .B0(n12), .B1(n37), .Y(n105) );
  INVXL U81 ( .A(n90), .Y(n102) );
  INVXL U82 ( .A(n94), .Y(n104) );
  INVXL U83 ( .A(n29), .Y(n43) );
  INVXL U84 ( .A(n51), .Y(n116) );
  INVXL U85 ( .A(n58), .Y(Mul_Shift[1]) );
  INVXL U86 ( .A(n90), .Y(n95) );
  NAND2XL U87 ( .A(n79), .B(Inv_Mul_Shift[6]), .Y(n80) );
  NAND2XL U88 ( .A(n99), .B(Inv_Mul_Shift[7]), .Y(n83) );
  NAND2XL U89 ( .A(n106), .B(Inv_Mul_Shift[8]), .Y(n88) );
  NAND2XL U90 ( .A(n102), .B(Inv_Mul_Shift[9]), .Y(n91) );
  NAND2XL U91 ( .A(n95), .B(Inv_Mul_Shift[10]), .Y(n96) );
  NAND2XL U92 ( .A(n99), .B(Inv_Mul_Shift[11]), .Y(n100) );
  NAND2XL U93 ( .A(n106), .B(Inv_Mul_Shift[13]), .Y(n107) );
  OAI21XL U94 ( .A0(n54), .A1(n112), .B0(n50), .Y(PP[14]) );
  NAND2XL U95 ( .A(n79), .B(Inv_Mul_Shift[14]), .Y(n50) );
  NAND2XL U96 ( .A(n102), .B(Inv_Mul_Shift[12]), .Y(n103) );
  BUFX1 U97 ( .A(Multiplicant[0]), .Y(n1) );
  BUFX1 U98 ( .A(Multiplicant[1]), .Y(n2) );
  BUFX1 U99 ( .A(Multiplicant[2]), .Y(n3) );
  BUFX1 U100 ( .A(Multiplicant[3]), .Y(n4) );
  BUFX1 U101 ( .A(Multiplicant[4]), .Y(n5) );
  BUFX1 U102 ( .A(Multiplicant[5]), .Y(n6) );
  BUFX1 U103 ( .A(Multiplicant[6]), .Y(n7) );
  BUFX1 U104 ( .A(Multiplicant[7]), .Y(n8) );
  BUFX1 U105 ( .A(Multiplicant[8]), .Y(n9) );
  BUFX1 U106 ( .A(Multiplicant[9]), .Y(n10) );
  BUFX1 U107 ( .A(Multiplicant[10]), .Y(n11) );
  BUFX1 U108 ( .A(Multiplicant[11]), .Y(n12) );
  BUFX1 U109 ( .A(Multiplicant[12]), .Y(n13) );
  BUFX1 U110 ( .A(Multiplicant[13]), .Y(n14) );
  BUFX1 U111 ( .A(Multiplicant[14]), .Y(n15) );
  BUFX1 U112 ( .A(n38), .Y(n24) );
  INVXL U113 ( .A(n47), .Y(n34) );
  INVXL U114 ( .A(n64), .Y(n35) );
  INVXL U115 ( .A(n22), .Y(n39) );
  INVXL U116 ( .A(n23), .Y(n40) );
  NAND2XL U117 ( .A(n1), .B(n43), .Y(Mul_Shift[0]) );
  INVXL U118 ( .A(Mul_Shift[0]), .Y(n41) );
  INVXL U119 ( .A(Mul_Shift[0]), .Y(n42) );
  INVXL U120 ( .A(n30), .Y(n45) );
  OAI21XL U121 ( .A0(NEG1), .A1(X1), .B0(n48), .Y(n47) );
  OAI21XL U122 ( .A0(n63), .A1(n34), .B0(Multiplicant[15]), .Y(n115) );
  AOI22XL U123 ( .A0(n52), .A1(n42), .B0(Inv_Mul_Shift[0]), .B1(n116), .Y(n53)
         );
  INVXL U124 ( .A(n53), .Y(PP[0]) );
  INVXL U125 ( .A(n67), .Y(n60) );
  NAND2XL U126 ( .A(n60), .B(Inv_Mul_Shift[1]), .Y(n57) );
  OAI21XL U127 ( .A0(n95), .A1(n58), .B0(n57), .Y(PP[1]) );
  INVXL U128 ( .A(n70), .Y(n65) );
  NAND2XL U129 ( .A(n60), .B(Inv_Mul_Shift[2]), .Y(n61) );
  OAI21XL U130 ( .A0(n62), .A1(n65), .B0(n61), .Y(PP[2]) );
  INVXL U131 ( .A(n62), .Y(Mul_Shift[2]) );
  INVXL U132 ( .A(n65), .Y(n66) );
  NAND2XL U133 ( .A(n110), .B(Inv_Mul_Shift[3]), .Y(n68) );
  OAI21XL U134 ( .A0(n69), .A1(n114), .B0(n68), .Y(PP[3]) );
  INVXL U135 ( .A(n78), .Y(n76) );
  INVXL U136 ( .A(n71), .Y(n74) );
  NAND2XL U137 ( .A(n74), .B(Inv_Mul_Shift[4]), .Y(n72) );
  OAI21XL U138 ( .A0(n73), .A1(n76), .B0(n72), .Y(PP[4]) );
  NAND2XL U139 ( .A(n74), .B(Inv_Mul_Shift[5]), .Y(n75) );
  OAI21XL U140 ( .A0(n77), .A1(n76), .B0(n75), .Y(PP[5]) );
  INVXL U141 ( .A(n78), .Y(n84) );
  OAI21XL U142 ( .A0(n81), .A1(n84), .B0(n80), .Y(PP[6]) );
  OAI21XL U143 ( .A0(n85), .A1(n84), .B0(n83), .Y(PP[7]) );
  OAI21XL U144 ( .A0(n89), .A1(n92), .B0(n88), .Y(PP[8]) );
  OAI21XL U145 ( .A0(n93), .A1(n92), .B0(n91), .Y(PP[9]) );
  OAI21XL U146 ( .A0(n97), .A1(n104), .B0(n96), .Y(PP[10]) );
  OAI21XL U147 ( .A0(n101), .A1(n108), .B0(n100), .Y(PP[11]) );
  OAI21XL U148 ( .A0(n105), .A1(n104), .B0(n103), .Y(PP[12]) );
  OAI21XL U149 ( .A0(n109), .A1(n108), .B0(n107), .Y(PP[13]) );
  OAI21XL U150 ( .A0(n113), .A1(n112), .B0(n111), .Y(PP[15]) );
  OAI2BB2X1 U151 ( .B0(n116), .B1(n115), .A0N(Inv_Mul_Shift[16]), .A1N(n114), 
        .Y(PP[16]) );
endmodule


module Inverse17_mydesign_6 ( in, out );
  input [16:0] in;
  output [16:0] out;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29;

  XNOR2XL U1 ( .A(n28), .B(in[16]), .Y(out[16]) );
  INVX2 U2 ( .A(n27), .Y(n29) );
  INVX1 U3 ( .A(n5), .Y(n6) );
  INVX1 U4 ( .A(n3), .Y(n4) );
  NOR2X2 U5 ( .A(in[15]), .B(n29), .Y(n28) );
  NOR2X2 U6 ( .A(in[14]), .B(n26), .Y(n27) );
  NOR2X2 U7 ( .A(in[13]), .B(n24), .Y(n25) );
  INVX1 U8 ( .A(n21), .Y(n22) );
  INVX1 U9 ( .A(n17), .Y(n18) );
  INVX1 U10 ( .A(n13), .Y(n14) );
  INVX1 U11 ( .A(n11), .Y(n12) );
  NOR2X2 U12 ( .A(in[1]), .B(out[0]), .Y(n1) );
  INVX1 U13 ( .A(n23), .Y(n24) );
  INVX1 U14 ( .A(n25), .Y(n26) );
  NOR2X1 U15 ( .A(in[10]), .B(n18), .Y(n19) );
  NOR2X1 U16 ( .A(in[4]), .B(n6), .Y(n7) );
  NOR2X1 U17 ( .A(in[5]), .B(n8), .Y(n9) );
  INVX1 U18 ( .A(n7), .Y(n8) );
  NOR2X1 U19 ( .A(in[6]), .B(n10), .Y(n11) );
  INVX1 U20 ( .A(n9), .Y(n10) );
  NOR2X1 U21 ( .A(in[7]), .B(n12), .Y(n13) );
  NOR2X1 U22 ( .A(in[8]), .B(n14), .Y(n15) );
  NOR2X1 U23 ( .A(in[9]), .B(n16), .Y(n17) );
  INVX1 U24 ( .A(n15), .Y(n16) );
  NOR2X1 U25 ( .A(in[11]), .B(n20), .Y(n21) );
  INVX1 U26 ( .A(n19), .Y(n20) );
  NOR2X1 U27 ( .A(in[12]), .B(n22), .Y(n23) );
  INVX1 U28 ( .A(n1), .Y(n2) );
  NOR2X1 U29 ( .A(in[2]), .B(n2), .Y(n3) );
  NOR2X1 U30 ( .A(in[3]), .B(n4), .Y(n5) );
  AOI21XL U31 ( .A0(in[10]), .A1(n18), .B0(n19), .Y(out[10]) );
  AOI21XL U32 ( .A0(in[6]), .A1(n10), .B0(n11), .Y(out[6]) );
  AOI21XL U33 ( .A0(in[7]), .A1(n12), .B0(n13), .Y(out[7]) );
  AOI21XL U34 ( .A0(in[8]), .A1(n14), .B0(n15), .Y(out[8]) );
  AOI21XL U35 ( .A0(in[9]), .A1(n16), .B0(n17), .Y(out[9]) );
  AOI21XL U36 ( .A0(in[11]), .A1(n20), .B0(n21), .Y(out[11]) );
  AOI21XL U37 ( .A0(in[12]), .A1(n22), .B0(n23), .Y(out[12]) );
  AOI21XL U38 ( .A0(in[13]), .A1(n24), .B0(n25), .Y(out[13]) );
  AOI21XL U39 ( .A0(in[14]), .A1(n26), .B0(n27), .Y(out[14]) );
  BUFX1 U40 ( .A(in[0]), .Y(out[0]) );
  AOI21XL U41 ( .A0(in[0]), .A1(in[1]), .B0(n1), .Y(out[1]) );
  AOI21XL U42 ( .A0(in[2]), .A1(n2), .B0(n3), .Y(out[2]) );
  AOI21XL U43 ( .A0(in[3]), .A1(n4), .B0(n5), .Y(out[3]) );
  AOI21XL U44 ( .A0(in[4]), .A1(n6), .B0(n7), .Y(out[4]) );
  AOI21XL U45 ( .A0(in[5]), .A1(n8), .B0(n9), .Y(out[5]) );
  AOI21XL U46 ( .A0(in[15]), .A1(n29), .B0(n28), .Y(out[15]) );
endmodule


module PPUnit_mydesign_6 ( X1, X2, NEG1, NEG2, Multiplicant, PP );
  input [15:0] Multiplicant;
  output [16:0] PP;
  input X1, X2, NEG1, NEG2;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115;
  wire   [16:0] Mul_Shift;
  wire   [16:0] Inv_Mul_Shift;

  Inverse17_mydesign_6 u_Inverse17 ( .in({Mul_Shift[16:1], n40}), .out(
        Inv_Mul_Shift) );
  INVX1 U2 ( .A(n33), .Y(n34) );
  INVX1 U3 ( .A(n28), .Y(n42) );
  INVX1 U4 ( .A(n35), .Y(n19) );
  NOR2XL U5 ( .A(NEG2), .B(X2), .Y(n47) );
  NAND2X1 U6 ( .A(n112), .B(Inv_Mul_Shift[15]), .Y(n113) );
  NAND2X1 U7 ( .A(n81), .B(Inv_Mul_Shift[14]), .Y(n49) );
  INVX1 U8 ( .A(n75), .Y(Mul_Shift[4]) );
  INVX1 U9 ( .A(n71), .Y(Mul_Shift[3]) );
  AOI22X1 U10 ( .A0(n13), .A1(n34), .B0(n12), .B1(n26), .Y(n107) );
  INVX1 U11 ( .A(n115), .Y(Mul_Shift[15]) );
  AOI22X1 U12 ( .A0(n7), .A1(n44), .B0(n6), .B1(n36), .Y(n83) );
  AOI22X1 U13 ( .A0(n5), .A1(n34), .B0(n4), .B1(n26), .Y(n75) );
  INVX1 U14 ( .A(n79), .Y(Mul_Shift[5]) );
  AOI22X1 U15 ( .A0(n8), .A1(n32), .B0(n7), .B1(n24), .Y(n87) );
  AOI22X1 U16 ( .A0(n4), .A1(n31), .B0(n3), .B1(n23), .Y(n71) );
  INVX1 U17 ( .A(n33), .Y(n44) );
  AOI22X1 U18 ( .A0(n9), .A1(n29), .B0(n8), .B1(n27), .Y(n91) );
  AOI22X1 U19 ( .A0(n12), .A1(n31), .B0(n11), .B1(n23), .Y(n103) );
  INVX1 U20 ( .A(n25), .Y(n27) );
  AOI22X1 U21 ( .A0(n14), .A1(n18), .B0(n13), .B1(n21), .Y(n111) );
  INVX1 U22 ( .A(n22), .Y(n24) );
  INVX1 U23 ( .A(n25), .Y(n26) );
  INVX2 U24 ( .A(n61), .Y(Mul_Shift[1]) );
  INVX1 U25 ( .A(n22), .Y(n23) );
  AOI22X1 U26 ( .A0(n6), .A1(n18), .B0(n5), .B1(n21), .Y(n79) );
  INVX1 U27 ( .A(n65), .Y(Mul_Shift[2]) );
  INVX1 U28 ( .A(n50), .Y(n84) );
  INVX1 U29 ( .A(n30), .Y(n31) );
  AOI22X1 U30 ( .A0(n3), .A1(n45), .B0(n2), .B1(n38), .Y(n65) );
  AOI22X1 U31 ( .A0(n10), .A1(n43), .B0(n9), .B1(n38), .Y(n95) );
  AOI22X1 U32 ( .A0(n11), .A1(n45), .B0(n10), .B1(n39), .Y(n99) );
  INVX1 U33 ( .A(n30), .Y(n32) );
  INVX1 U34 ( .A(n19), .Y(n37) );
  INVX1 U35 ( .A(n19), .Y(n38) );
  INVX1 U36 ( .A(n48), .Y(n58) );
  INVX1 U37 ( .A(n72), .Y(n88) );
  INVX1 U38 ( .A(n54), .Y(n72) );
  BUFX2 U39 ( .A(n66), .Y(n35) );
  BUFX2 U40 ( .A(n46), .Y(n67) );
  INVX1 U41 ( .A(n107), .Y(Mul_Shift[12]) );
  INVX1 U42 ( .A(n53), .Y(Mul_Shift[14]) );
  INVX1 U43 ( .A(n83), .Y(Mul_Shift[6]) );
  INVX1 U44 ( .A(n87), .Y(Mul_Shift[7]) );
  INVX1 U45 ( .A(n103), .Y(Mul_Shift[11]) );
  INVX1 U46 ( .A(n111), .Y(Mul_Shift[13]) );
  INVX1 U47 ( .A(n17), .Y(n33) );
  INVX1 U48 ( .A(n91), .Y(Mul_Shift[8]) );
  INVX1 U49 ( .A(n16), .Y(n17) );
  INVX1 U50 ( .A(n95), .Y(Mul_Shift[9]) );
  AOI22X2 U51 ( .A0(n2), .A1(n42), .B0(n1), .B1(n37), .Y(n61) );
  INVX1 U52 ( .A(n43), .Y(n30) );
  INVX1 U53 ( .A(n99), .Y(Mul_Shift[10]) );
  INVX1 U54 ( .A(n39), .Y(n25) );
  INVX1 U55 ( .A(n36), .Y(n22) );
  INVX1 U56 ( .A(n59), .Y(n50) );
  INVX1 U57 ( .A(n28), .Y(n43) );
  INVX1 U58 ( .A(n20), .Y(n39) );
  INVX1 U59 ( .A(n48), .Y(n59) );
  INVX1 U60 ( .A(n20), .Y(n36) );
  BUFX2 U61 ( .A(n67), .Y(n28) );
  INVX1 U62 ( .A(n35), .Y(n20) );
  INVX1 U63 ( .A(n54), .Y(n48) );
  INVX1 U64 ( .A(n51), .Y(n54) );
  NOR2X1 U65 ( .A(NEG2), .B(NEG1), .Y(n51) );
  INVX1 U66 ( .A(n47), .Y(n66) );
  INVX1 U67 ( .A(n46), .Y(n29) );
  OAI21X2 U68 ( .A0(NEG1), .A1(X1), .B0(n47), .Y(n46) );
  OAI2BB2X1 U69 ( .B0(n57), .B1(n56), .A0N(Inv_Mul_Shift[16]), .A1N(n70), .Y(
        PP[16]) );
  INVXL U70 ( .A(n56), .Y(Mul_Shift[16]) );
  INVX1 U71 ( .A(n42), .Y(n16) );
  INVXL U72 ( .A(n88), .Y(n80) );
  INVXL U73 ( .A(n58), .Y(n92) );
  INVXL U74 ( .A(n88), .Y(n96) );
  INVXL U75 ( .A(n84), .Y(n89) );
  INVXL U76 ( .A(n84), .Y(n73) );
  INVXL U77 ( .A(n59), .Y(n68) );
  INVXL U78 ( .A(n58), .Y(n100) );
  INVXL U79 ( .A(n50), .Y(n57) );
  INVXL U80 ( .A(n92), .Y(n97) );
  INVXL U81 ( .A(n72), .Y(n64) );
  INVXL U82 ( .A(n55), .Y(n70) );
  INVXL U83 ( .A(n89), .Y(n101) );
  INVXL U84 ( .A(n92), .Y(n104) );
  INVXL U85 ( .A(n96), .Y(n106) );
  INVXL U86 ( .A(n89), .Y(n108) );
  INVXL U87 ( .A(n100), .Y(n110) );
  AOI22XL U88 ( .A0(n15), .A1(n44), .B0(n14), .B1(n66), .Y(n53) );
  INVXL U89 ( .A(n73), .Y(n81) );
  AOI22XL U90 ( .A0(Multiplicant[15]), .A1(n32), .B0(n15), .B1(n24), .Y(n115)
         );
  INVXL U91 ( .A(n68), .Y(n112) );
  INVXL U92 ( .A(n100), .Y(n114) );
  NAND2XL U93 ( .A(n97), .B(Inv_Mul_Shift[10]), .Y(n98) );
  NAND2XL U94 ( .A(n81), .B(Inv_Mul_Shift[6]), .Y(n82) );
  NAND2XL U95 ( .A(n101), .B(Inv_Mul_Shift[7]), .Y(n85) );
  NAND2XL U96 ( .A(n108), .B(Inv_Mul_Shift[8]), .Y(n90) );
  NAND2XL U97 ( .A(n104), .B(Inv_Mul_Shift[9]), .Y(n93) );
  NAND2XL U98 ( .A(n101), .B(Inv_Mul_Shift[11]), .Y(n102) );
  NAND2XL U99 ( .A(n104), .B(Inv_Mul_Shift[12]), .Y(n105) );
  NAND2XL U100 ( .A(n108), .B(Inv_Mul_Shift[13]), .Y(n109) );
  BUFX1 U101 ( .A(Multiplicant[0]), .Y(n1) );
  BUFX1 U102 ( .A(Multiplicant[1]), .Y(n2) );
  BUFX1 U103 ( .A(Multiplicant[2]), .Y(n3) );
  BUFX1 U104 ( .A(Multiplicant[3]), .Y(n4) );
  BUFX1 U105 ( .A(Multiplicant[4]), .Y(n5) );
  BUFX1 U106 ( .A(Multiplicant[5]), .Y(n6) );
  BUFX1 U107 ( .A(Multiplicant[6]), .Y(n7) );
  BUFX1 U108 ( .A(Multiplicant[7]), .Y(n8) );
  BUFX1 U109 ( .A(Multiplicant[8]), .Y(n9) );
  BUFX1 U110 ( .A(Multiplicant[9]), .Y(n10) );
  BUFX1 U111 ( .A(Multiplicant[10]), .Y(n11) );
  BUFX1 U112 ( .A(Multiplicant[11]), .Y(n12) );
  BUFX1 U113 ( .A(Multiplicant[12]), .Y(n13) );
  BUFX1 U114 ( .A(Multiplicant[13]), .Y(n14) );
  BUFX1 U115 ( .A(Multiplicant[14]), .Y(n15) );
  INVXL U116 ( .A(n16), .Y(n18) );
  BUFX1 U117 ( .A(n37), .Y(n21) );
  NAND2XL U118 ( .A(n1), .B(n29), .Y(Mul_Shift[0]) );
  INVXL U119 ( .A(Mul_Shift[0]), .Y(n40) );
  INVXL U120 ( .A(Mul_Shift[0]), .Y(n41) );
  INVXL U121 ( .A(n67), .Y(n45) );
  OAI21XL U122 ( .A0(n53), .A1(n114), .B0(n49), .Y(PP[14]) );
  OAI21XL U123 ( .A0(n27), .A1(n17), .B0(Multiplicant[15]), .Y(n56) );
  AOI22XL U124 ( .A0(n51), .A1(n41), .B0(Inv_Mul_Shift[0]), .B1(n57), .Y(n52)
         );
  INVXL U125 ( .A(n52), .Y(PP[0]) );
  INVXL U126 ( .A(n64), .Y(n55) );
  INVXL U127 ( .A(n68), .Y(n62) );
  NAND2XL U128 ( .A(n62), .B(Inv_Mul_Shift[1]), .Y(n60) );
  OAI21XL U129 ( .A0(n61), .A1(n97), .B0(n60), .Y(PP[1]) );
  NAND2XL U130 ( .A(n62), .B(Inv_Mul_Shift[2]), .Y(n63) );
  OAI21XL U131 ( .A0(n65), .A1(n64), .B0(n63), .Y(PP[2]) );
  NAND2XL U132 ( .A(n112), .B(Inv_Mul_Shift[3]), .Y(n69) );
  OAI21XL U133 ( .A0(n71), .A1(n70), .B0(n69), .Y(PP[3]) );
  INVXL U134 ( .A(n80), .Y(n78) );
  INVXL U135 ( .A(n73), .Y(n76) );
  NAND2XL U136 ( .A(n76), .B(Inv_Mul_Shift[4]), .Y(n74) );
  OAI21XL U137 ( .A0(n75), .A1(n78), .B0(n74), .Y(PP[4]) );
  NAND2XL U138 ( .A(n76), .B(Inv_Mul_Shift[5]), .Y(n77) );
  OAI21XL U139 ( .A0(n79), .A1(n78), .B0(n77), .Y(PP[5]) );
  INVXL U140 ( .A(n80), .Y(n86) );
  OAI21XL U141 ( .A0(n83), .A1(n86), .B0(n82), .Y(PP[6]) );
  OAI21XL U142 ( .A0(n87), .A1(n86), .B0(n85), .Y(PP[7]) );
  INVXL U143 ( .A(n96), .Y(n94) );
  OAI21XL U144 ( .A0(n91), .A1(n94), .B0(n90), .Y(PP[8]) );
  OAI21XL U145 ( .A0(n95), .A1(n94), .B0(n93), .Y(PP[9]) );
  OAI21XL U146 ( .A0(n99), .A1(n106), .B0(n98), .Y(PP[10]) );
  OAI21XL U147 ( .A0(n103), .A1(n110), .B0(n102), .Y(PP[11]) );
  OAI21XL U148 ( .A0(n107), .A1(n106), .B0(n105), .Y(PP[12]) );
  OAI21XL U149 ( .A0(n111), .A1(n110), .B0(n109), .Y(PP[13]) );
  OAI21XL U150 ( .A0(n115), .A1(n114), .B0(n113), .Y(PP[15]) );
endmodule


module BoothEndecode_mydesign_0 ( MultiplierBits, X1, X2, NEG1, NEG2 );
  input [2:0] MultiplierBits;
  output X1, X2, NEG1, NEG2;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;

  CLKINVX2 U1 ( .A(MultiplierBits[0]), .Y(n1) );
  INVX1 U2 ( .A(MultiplierBits[1]), .Y(n3) );
  INVX1 U3 ( .A(MultiplierBits[2]), .Y(n6) );
  INVX1 U4 ( .A(n1), .Y(n2) );
  NOR2X1 U5 ( .A(n8), .B(n10), .Y(X1) );
  INVX1 U6 ( .A(n3), .Y(n4) );
  NOR2X1 U7 ( .A(n8), .B(n9), .Y(X2) );
  INVX1 U8 ( .A(n3), .Y(n5) );
  INVX1 U9 ( .A(n6), .Y(n8) );
  NOR3X1 U10 ( .A(n5), .B(n2), .C(n11), .Y(NEG2) );
  OAI21X1 U11 ( .A0(n5), .A1(n2), .B0(n9), .Y(n10) );
  NOR2X1 U12 ( .A(n11), .B(n10), .Y(NEG1) );
  INVX1 U13 ( .A(n6), .Y(n7) );
  NAND2X1 U14 ( .A(n4), .B(MultiplierBits[0]), .Y(n9) );
  INVX1 U15 ( .A(n7), .Y(n11) );
endmodule


module BoothEndecode_mydesign_1 ( MultiplierBits, X1, X2, NEG1, NEG2 );
  input [2:0] MultiplierBits;
  output X1, X2, NEG1, NEG2;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;

  NOR2X1 U1 ( .A(n2), .B(n7), .Y(X1) );
  BUFX2 U2 ( .A(MultiplierBits[0]), .Y(n1) );
  BUFX2 U3 ( .A(MultiplierBits[2]), .Y(n2) );
  INVX1 U4 ( .A(n3), .Y(n4) );
  NOR2X1 U5 ( .A(n8), .B(n7), .Y(NEG1) );
  OAI21X1 U6 ( .A0(n5), .A1(n1), .B0(n6), .Y(n7) );
  NOR2X1 U7 ( .A(n2), .B(n6), .Y(X2) );
  INVX1 U8 ( .A(MultiplierBits[2]), .Y(n8) );
  INVX1 U9 ( .A(n3), .Y(n5) );
  INVX1 U10 ( .A(MultiplierBits[1]), .Y(n3) );
  NOR3X1 U11 ( .A(n5), .B(n1), .C(n8), .Y(NEG2) );
  NAND2X1 U12 ( .A(n4), .B(MultiplierBits[0]), .Y(n6) );
endmodule


module BoothEndecode_mydesign_2 ( MultiplierBits, X1, X2, NEG1, NEG2 );
  input [2:0] MultiplierBits;
  output X1, X2, NEG1, NEG2;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;

  OAI21X1 U1 ( .A0(n5), .A1(n1), .B0(n6), .Y(n7) );
  BUFX2 U2 ( .A(MultiplierBits[2]), .Y(n2) );
  NOR2X1 U3 ( .A(n8), .B(n7), .Y(NEG1) );
  NOR2X1 U4 ( .A(n2), .B(n7), .Y(X1) );
  NOR3X1 U5 ( .A(n5), .B(n1), .C(n8), .Y(NEG2) );
  NOR2X1 U6 ( .A(n2), .B(n6), .Y(X2) );
  BUFX2 U7 ( .A(MultiplierBits[0]), .Y(n1) );
  INVX1 U8 ( .A(MultiplierBits[2]), .Y(n8) );
  INVX1 U9 ( .A(n3), .Y(n4) );
  INVX1 U10 ( .A(MultiplierBits[1]), .Y(n3) );
  INVX1 U11 ( .A(n3), .Y(n5) );
  NAND2X1 U12 ( .A(n4), .B(MultiplierBits[0]), .Y(n6) );
endmodule


module BoothEndecode_mydesign_3 ( MultiplierBits, X1, X2, NEG1, NEG2 );
  input [2:0] MultiplierBits;
  output X1, X2, NEG1, NEG2;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  NOR2X1 U1 ( .A(n3), .B(n8), .Y(X1) );
  INVX1 U2 ( .A(n4), .Y(n5) );
  NOR3X1 U3 ( .A(n6), .B(n1), .C(n9), .Y(NEG2) );
  NOR2X1 U4 ( .A(n3), .B(n7), .Y(X2) );
  NAND2X1 U5 ( .A(n5), .B(MultiplierBits[0]), .Y(n7) );
  INVX1 U6 ( .A(MultiplierBits[2]), .Y(n2) );
  INVX1 U7 ( .A(MultiplierBits[2]), .Y(n9) );
  BUFX2 U8 ( .A(MultiplierBits[0]), .Y(n1) );
  INVX1 U9 ( .A(n4), .Y(n6) );
  NOR2X1 U10 ( .A(n9), .B(n8), .Y(NEG1) );
  OAI21X1 U11 ( .A0(n6), .A1(n1), .B0(n7), .Y(n8) );
  INVX1 U12 ( .A(n2), .Y(n3) );
  INVX1 U13 ( .A(MultiplierBits[1]), .Y(n4) );
endmodule


module BoothEndecode_mydesign_4 ( MultiplierBits, X1, X2, NEG1, NEG2 );
  input [2:0] MultiplierBits;
  output X1, X2, NEG1, NEG2;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;

  NOR3X1 U1 ( .A(n5), .B(n1), .C(n8), .Y(NEG2) );
  NAND2X1 U2 ( .A(n5), .B(n1), .Y(n6) );
  BUFX2 U3 ( .A(MultiplierBits[2]), .Y(n2) );
  NOR2X1 U4 ( .A(n8), .B(n7), .Y(NEG1) );
  OAI21X1 U5 ( .A0(n4), .A1(MultiplierBits[0]), .B0(n6), .Y(n7) );
  BUFX3 U6 ( .A(MultiplierBits[0]), .Y(n1) );
  INVXL U7 ( .A(n3), .Y(n4) );
  INVX1 U8 ( .A(MultiplierBits[2]), .Y(n8) );
  NOR2X1 U9 ( .A(n2), .B(n6), .Y(X2) );
  NOR2X1 U10 ( .A(n2), .B(n7), .Y(X1) );
  INVX1 U11 ( .A(MultiplierBits[1]), .Y(n3) );
  INVX1 U12 ( .A(n3), .Y(n5) );
endmodule


module BoothEndecode_mydesign_5 ( MultiplierBits, X1, X2, NEG1, NEG2 );
  input [2:0] MultiplierBits;
  output X1, X2, NEG1, NEG2;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;

  BUFX3 U1 ( .A(MultiplierBits[0]), .Y(n1) );
  NOR2X1 U2 ( .A(n2), .B(n7), .Y(X1) );
  BUFX2 U3 ( .A(MultiplierBits[2]), .Y(n2) );
  INVX1 U4 ( .A(n3), .Y(n4) );
  NOR2X1 U5 ( .A(n8), .B(n7), .Y(NEG1) );
  NOR2X1 U6 ( .A(n2), .B(n6), .Y(X2) );
  INVX1 U7 ( .A(n3), .Y(n5) );
  INVX1 U8 ( .A(MultiplierBits[1]), .Y(n3) );
  NOR3X1 U9 ( .A(n5), .B(n1), .C(n8), .Y(NEG2) );
  OAI21XL U10 ( .A0(n5), .A1(n1), .B0(n6), .Y(n7) );
  NAND2X1 U11 ( .A(n4), .B(MultiplierBits[0]), .Y(n6) );
  INVX1 U12 ( .A(MultiplierBits[2]), .Y(n8) );
endmodule


module BoothEndecode_mydesign_6 ( MultiplierBits, X1, X2, NEG1, NEG2 );
  input [2:0] MultiplierBits;
  output X1, X2, NEG1, NEG2;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;

  OAI21XL U1 ( .A0(n4), .A1(MultiplierBits[0]), .B0(n6), .Y(n7) );
  BUFX3 U2 ( .A(MultiplierBits[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n8), .B(n7), .Y(NEG1) );
  NOR2X1 U4 ( .A(n2), .B(n6), .Y(X2) );
  NAND2X1 U5 ( .A(n5), .B(n1), .Y(n6) );
  BUFX2 U6 ( .A(MultiplierBits[2]), .Y(n2) );
  INVXL U7 ( .A(n3), .Y(n4) );
  NOR3X1 U8 ( .A(n5), .B(n1), .C(n8), .Y(NEG2) );
  NOR2X1 U9 ( .A(n2), .B(n7), .Y(X1) );
  INVX1 U10 ( .A(n3), .Y(n5) );
  INVX1 U11 ( .A(MultiplierBits[1]), .Y(n3) );
  INVX1 U12 ( .A(MultiplierBits[2]), .Y(n8) );
endmodule


module CaculateE_mydesign_0 ( MultiplierBits, PP_sign_bit, 
        Multiplicat_sign_bit, E );
  input [2:0] MultiplierBits;
  input PP_sign_bit, Multiplicat_sign_bit;
  output E;
  wire   n1, n2;

  NAND2X1 U2 ( .A(PP_sign_bit), .B(n2), .Y(E) );
  NAND3XL U3 ( .A(n1), .B(MultiplierBits[2]), .C(Multiplicat_sign_bit), .Y(n2)
         );
  NAND2XL U4 ( .A(MultiplierBits[0]), .B(MultiplierBits[1]), .Y(n1) );
endmodule


module CaculateE_mydesign_1 ( MultiplierBits, PP_sign_bit, 
        Multiplicat_sign_bit, E );
  input [2:0] MultiplierBits;
  input PP_sign_bit, Multiplicat_sign_bit;
  output E;
  wire   n1, n2;

  NAND2X1 U2 ( .A(PP_sign_bit), .B(n2), .Y(E) );
  NAND3XL U3 ( .A(n1), .B(MultiplierBits[2]), .C(Multiplicat_sign_bit), .Y(n2)
         );
  NAND2XL U4 ( .A(MultiplierBits[0]), .B(MultiplierBits[1]), .Y(n1) );
endmodule


module CaculateE_mydesign_2 ( MultiplierBits, PP_sign_bit, 
        Multiplicat_sign_bit, E );
  input [2:0] MultiplierBits;
  input PP_sign_bit, Multiplicat_sign_bit;
  output E;
  wire   n1, n2;

  NAND2X1 U2 ( .A(PP_sign_bit), .B(n2), .Y(E) );
  NAND3XL U3 ( .A(n1), .B(MultiplierBits[2]), .C(Multiplicat_sign_bit), .Y(n2)
         );
  NAND2XL U4 ( .A(MultiplierBits[0]), .B(MultiplierBits[1]), .Y(n1) );
endmodule


module CaculateE_mydesign_3 ( MultiplierBits, PP_sign_bit, 
        Multiplicat_sign_bit, E );
  input [2:0] MultiplierBits;
  input PP_sign_bit, Multiplicat_sign_bit;
  output E;
  wire   n1, n2;

  NAND2X1 U2 ( .A(PP_sign_bit), .B(n2), .Y(E) );
  NAND3XL U3 ( .A(n1), .B(MultiplierBits[2]), .C(Multiplicat_sign_bit), .Y(n2)
         );
  NAND2XL U4 ( .A(MultiplierBits[0]), .B(MultiplierBits[1]), .Y(n1) );
endmodule


module CaculateE_mydesign_4 ( MultiplierBits, PP_sign_bit, 
        Multiplicat_sign_bit, E );
  input [2:0] MultiplierBits;
  input PP_sign_bit, Multiplicat_sign_bit;
  output E;
  wire   n1, n2;

  NAND2X1 U2 ( .A(PP_sign_bit), .B(n2), .Y(E) );
  NAND3XL U3 ( .A(n1), .B(MultiplierBits[2]), .C(Multiplicat_sign_bit), .Y(n2)
         );
  NAND2XL U4 ( .A(MultiplierBits[0]), .B(MultiplierBits[1]), .Y(n1) );
endmodule


module CaculateE_mydesign_5 ( MultiplierBits, PP_sign_bit, 
        Multiplicat_sign_bit, E );
  input [2:0] MultiplierBits;
  input PP_sign_bit, Multiplicat_sign_bit;
  output E;
  wire   n1, n2;

  NAND2X1 U2 ( .A(PP_sign_bit), .B(n2), .Y(E) );
  NAND3XL U3 ( .A(n1), .B(MultiplierBits[2]), .C(Multiplicat_sign_bit), .Y(n2)
         );
  NAND2XL U4 ( .A(MultiplierBits[0]), .B(MultiplierBits[1]), .Y(n1) );
endmodule


module CaculateE_mydesign_6 ( MultiplierBits, PP_sign_bit, 
        Multiplicat_sign_bit, E );
  input [2:0] MultiplierBits;
  input PP_sign_bit, Multiplicat_sign_bit;
  output E;
  wire   n1, n2;

  NAND2X1 U2 ( .A(PP_sign_bit), .B(n2), .Y(E) );
  NAND3XL U3 ( .A(n1), .B(MultiplierBits[2]), .C(Multiplicat_sign_bit), .Y(n2)
         );
  NAND2XL U4 ( .A(MultiplierBits[0]), .B(MultiplierBits[1]), .Y(n1) );
endmodule


module PP_top ( Multiplicant, Multiplier, PP0_19_, PP0_18_, PP0_17_, PP0_16_, 
        PP0_15_, PP0_14_, PP0_13_, PP0_12_, PP0_11_, PP0_10_, PP0_9_, PP0_8_, 
        PP0_7_, PP0_6_, PP0_5_, PP0_4_, PP0_3_, PP0_2_, PP0_1_, PP0_0_, 
        PP1_19_, PP1_18_, PP1_17_, PP1_16_, PP1_15_, PP1_14_, PP1_13_, PP1_12_, 
        PP1_11_, PP1_10_, PP1_9_, PP1_8_, PP1_7_, PP1_6_, PP1_5_, PP1_4_, 
        PP1_3_, PP1_2_, PP2_21_, PP2_20_, PP2_19_, PP2_18_, PP2_17_, PP2_16_, 
        PP2_15_, PP2_14_, PP2_13_, PP2_12_, PP2_11_, PP2_10_, PP2_9_, PP2_8_, 
        PP2_7_, PP2_6_, PP2_5_, PP2_4_, PP3_23_, PP3_22_, PP3_21_, PP3_20_, 
        PP3_19_, PP3_18_, PP3_17_, PP3_16_, PP3_15_, PP3_14_, PP3_13_, PP3_12_, 
        PP3_11_, PP3_10_, PP3_9_, PP3_8_, PP3_7_, PP3_6_, PP4_25_, PP4_24_, 
        PP4_23_, PP4_22_, PP4_21_, PP4_20_, PP4_19_, PP4_18_, PP4_17_, PP4_16_, 
        PP4_15_, PP4_14_, PP4_13_, PP4_12_, PP4_11_, PP4_10_, PP4_9_, PP4_8_, 
        PP5_27_, PP5_26_, PP5_25_, PP5_24_, PP5_23_, PP5_22_, PP5_21_, PP5_20_, 
        PP5_19_, PP5_18_, PP5_17_, PP5_16_, PP5_15_, PP5_14_, PP5_13_, PP5_12_, 
        PP5_11_, PP5_10_, PP6_29_, PP6_28_, PP6_27_, PP6_26_, PP6_25_, PP6_24_, 
        PP6_23_, PP6_22_, PP6_21_, PP6_20_, PP6_19_, PP6_18_, PP6_17_, PP6_16_, 
        PP6_15_, PP6_14_, PP6_13_, PP6_12_, PP7_31_, PP7_30_, PP7_29_, PP7_28_, 
        PP7_27_, PP7_26_, PP7_25_, PP7_24_, PP7_23_, PP7_22_, PP7_21_, PP7_20_, 
        PP7_19_, PP7_18_, PP7_17_, PP7_16_, PP7_15_, PP7_14_ );
  input [15:0] Multiplicant;
  input [15:0] Multiplier;
  output PP0_19_, PP0_18_, PP0_17_, PP0_16_, PP0_15_, PP0_14_, PP0_13_,
         PP0_12_, PP0_11_, PP0_10_, PP0_9_, PP0_8_, PP0_7_, PP0_6_, PP0_5_,
         PP0_4_, PP0_3_, PP0_2_, PP0_1_, PP0_0_, PP1_19_, PP1_18_, PP1_17_,
         PP1_16_, PP1_15_, PP1_14_, PP1_13_, PP1_12_, PP1_11_, PP1_10_, PP1_9_,
         PP1_8_, PP1_7_, PP1_6_, PP1_5_, PP1_4_, PP1_3_, PP1_2_, PP2_21_,
         PP2_20_, PP2_19_, PP2_18_, PP2_17_, PP2_16_, PP2_15_, PP2_14_,
         PP2_13_, PP2_12_, PP2_11_, PP2_10_, PP2_9_, PP2_8_, PP2_7_, PP2_6_,
         PP2_5_, PP2_4_, PP3_23_, PP3_22_, PP3_21_, PP3_20_, PP3_19_, PP3_18_,
         PP3_17_, PP3_16_, PP3_15_, PP3_14_, PP3_13_, PP3_12_, PP3_11_,
         PP3_10_, PP3_9_, PP3_8_, PP3_7_, PP3_6_, PP4_25_, PP4_24_, PP4_23_,
         PP4_22_, PP4_21_, PP4_20_, PP4_19_, PP4_18_, PP4_17_, PP4_16_,
         PP4_15_, PP4_14_, PP4_13_, PP4_12_, PP4_11_, PP4_10_, PP4_9_, PP4_8_,
         PP5_27_, PP5_26_, PP5_25_, PP5_24_, PP5_23_, PP5_22_, PP5_21_,
         PP5_20_, PP5_19_, PP5_18_, PP5_17_, PP5_16_, PP5_15_, PP5_14_,
         PP5_13_, PP5_12_, PP5_11_, PP5_10_, PP6_29_, PP6_28_, PP6_27_,
         PP6_26_, PP6_25_, PP6_24_, PP6_23_, PP6_22_, PP6_21_, PP6_20_,
         PP6_19_, PP6_18_, PP6_17_, PP6_16_, PP6_15_, PP6_14_, PP6_13_,
         PP6_12_, PP7_31_, PP7_30_, PP7_29_, PP7_28_, PP7_27_, PP7_26_,
         PP7_25_, PP7_24_, PP7_23_, PP7_22_, PP7_21_, PP7_20_, PP7_19_,
         PP7_18_, PP7_17_, PP7_16_, PP7_15_, PP7_14_;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143;
  wire   [7:0] X1;
  wire   [7:1] X2;
  wire   [7:0] NEG1;
  wire   [7:0] NEG2;

  BoothEndecode_mydesign_7 gen_PP_tmp_0__U_BoothEndecode ( .X1(X1[0]), .NEG1(
        NEG1[0]), .NEG2(NEG2[0]), .MultiplierBits_2_(n46), .MultiplierBits_1_(
        Multiplier[0]) );
  PPUnit_mydesign_7 gen_PP_tmp_0__u_PPUint ( .X1(X1[0]), .NEG1(NEG1[0]), 
        .NEG2(NEG2[0]), .Multiplicant({n128, n118, n115, n111, n107, n103, n96, 
        n92, n88, n86, n80, n76, n74, n68, n65, n63}), .PP({PP0_16_, PP0_15_, 
        PP0_14_, PP0_13_, PP0_12_, PP0_11_, PP0_10_, PP0_9_, PP0_8_, PP0_7_, 
        PP0_6_, PP0_5_, PP0_4_, PP0_3_, PP0_2_, PP0_1_, PP0_0_}) );
  CaculateE_mydesign_7 gen_PP_tmp_0__u_Caculate ( .PP_sign_bit(PP0_16_), 
        .Multiplicat_sign_bit(n132), .E(PP0_19_), .MultiplierBits_2_(n3) );
  BoothEndecode_mydesign_6 gen_PP_tmp_1__U_BoothEndecode ( .MultiplierBits({
        n48, Multiplier[2], n47}), .X1(X1[1]), .X2(X2[1]), .NEG1(NEG1[1]), 
        .NEG2(NEG2[1]) );
  PPUnit_mydesign_6 gen_PP_tmp_1__u_PPUint ( .X1(X1[1]), .X2(X2[1]), .NEG1(
        NEG1[1]), .NEG2(NEG2[1]), .Multiplicant({n127, n117, n114, n110, n106, 
        n102, n99, n95, n91, n87, n83, n78, n75, n71, n67, n63}), .PP({PP1_18_, 
        PP1_17_, PP1_16_, PP1_15_, PP1_14_, PP1_13_, PP1_12_, PP1_11_, PP1_10_, 
        PP1_9_, PP1_8_, PP1_7_, PP1_6_, PP1_5_, PP1_4_, PP1_3_, PP1_2_}) );
  CaculateE_mydesign_6 gen_PP_tmp_1__u_Caculate ( .MultiplierBits({n5, 
        Multiplier[2], n3}), .PP_sign_bit(PP1_18_), .Multiplicat_sign_bit(n132), .E(PP1_19_) );
  BoothEndecode_mydesign_5 gen_PP_tmp_2__U_BoothEndecode ( .MultiplierBits({
        n51, Multiplier[4], n49}), .X1(X1[2]), .X2(X2[2]), .NEG1(NEG1[2]), 
        .NEG2(NEG2[2]) );
  PPUnit_mydesign_5 gen_PP_tmp_2__u_PPUint ( .X1(X1[2]), .X2(X2[2]), .NEG1(
        NEG1[2]), .NEG2(NEG2[2]), .Multiplicant({n126, n119, n113, n109, n105, 
        n101, n98, n94, n90, n85, n82, n79, n73, n70, n66, n62}), .PP({PP2_20_, 
        PP2_19_, PP2_18_, PP2_17_, PP2_16_, PP2_15_, PP2_14_, PP2_13_, PP2_12_, 
        PP2_11_, PP2_10_, PP2_9_, PP2_8_, PP2_7_, PP2_6_, PP2_5_, PP2_4_}) );
  CaculateE_mydesign_5 gen_PP_tmp_2__u_Caculate ( .MultiplierBits({n7, 
        Multiplier[4], n5}), .PP_sign_bit(PP2_20_), .Multiplicat_sign_bit(n131), .E(PP2_21_) );
  BoothEndecode_mydesign_4 gen_PP_tmp_3__U_BoothEndecode ( .MultiplierBits({
        n52, Multiplier[6], n50}), .X1(X1[3]), .X2(X2[3]), .NEG1(NEG1[3]), 
        .NEG2(NEG2[3]) );
  PPUnit_mydesign_4 gen_PP_tmp_3__u_PPUint ( .X1(X1[3]), .X2(X2[3]), .NEG1(
        NEG1[3]), .NEG2(NEG2[3]), .Multiplicant({n125, n117, n114, n109, n106, 
        n102, n98, n94, n89, n85, n82, n77, n74, n70, n66, n62}), .PP({PP3_22_, 
        PP3_21_, PP3_20_, PP3_19_, PP3_18_, PP3_17_, PP3_16_, PP3_15_, PP3_14_, 
        PP3_13_, PP3_12_, PP3_11_, PP3_10_, PP3_9_, PP3_8_, PP3_7_, PP3_6_})
         );
  CaculateE_mydesign_4 gen_PP_tmp_3__u_Caculate ( .MultiplierBits({n9, 
        Multiplier[6], n7}), .PP_sign_bit(PP3_22_), .Multiplicat_sign_bit(n131), .E(PP3_23_) );
  BoothEndecode_mydesign_3 gen_PP_tmp_4__U_BoothEndecode ( .MultiplierBits({
        n55, Multiplier[8], n53}), .X1(X1[4]), .X2(X2[4]), .NEG1(NEG1[4]), 
        .NEG2(NEG2[4]) );
  PPUnit_mydesign_3 gen_PP_tmp_4__u_PPUint ( .X1(X1[4]), .X2(X2[4]), .NEG1(
        NEG1[4]), .NEG2(NEG2[4]), .Multiplicant({n124, n116, n112, n108, n104, 
        n100, n97, n93, n88, n87, n80, n79, n75, n71, n67, n60}), .PP({PP4_24_, 
        PP4_23_, PP4_22_, PP4_21_, PP4_20_, PP4_19_, PP4_18_, PP4_17_, PP4_16_, 
        PP4_15_, PP4_14_, PP4_13_, PP4_12_, PP4_11_, PP4_10_, PP4_9_, PP4_8_})
         );
  CaculateE_mydesign_3 gen_PP_tmp_4__u_Caculate ( .MultiplierBits({n11, 
        Multiplier[8], n9}), .PP_sign_bit(PP4_24_), .Multiplicat_sign_bit(n130), .E(PP4_25_) );
  BoothEndecode_mydesign_2 gen_PP_tmp_5__U_BoothEndecode ( .MultiplierBits({
        n56, Multiplier[10], n54}), .X1(X1[5]), .X2(X2[5]), .NEG1(NEG1[5]), 
        .NEG2(NEG2[5]) );
  PPUnit_mydesign_2 gen_PP_tmp_5__u_PPUint ( .X1(X1[5]), .X2(X2[5]), .NEG1(
        NEG1[5]), .NEG2(NEG2[5]), .Multiplicant({n123, n118, n115, n110, n105, 
        n101, n96, n92, n91, n84, n83, n77, n72, n68, n64, n61}), .PP({PP5_26_, 
        PP5_25_, PP5_24_, PP5_23_, PP5_22_, PP5_21_, PP5_20_, PP5_19_, PP5_18_, 
        PP5_17_, PP5_16_, PP5_15_, PP5_14_, PP5_13_, PP5_12_, PP5_11_, PP5_10_}) );
  CaculateE_mydesign_2 gen_PP_tmp_5__u_Caculate ( .MultiplierBits({n13, 
        Multiplier[10], n11}), .PP_sign_bit(PP5_26_), .Multiplicat_sign_bit(
        n130), .E(PP5_27_) );
  BoothEndecode_mydesign_1 gen_PP_tmp_6__U_BoothEndecode ( .MultiplierBits({
        n59, Multiplier[12], n57}), .X1(X1[6]), .X2(X2[6]), .NEG1(NEG1[6]), 
        .NEG2(NEG2[6]) );
  PPUnit_mydesign_1 gen_PP_tmp_6__u_PPUint ( .X1(X1[6]), .X2(X2[6]), .NEG1(
        NEG1[6]), .NEG2(NEG2[6]), .Multiplicant({n122, n119, n113, n111, n107, 
        n103, n99, n95, n90, n86, n81, n76, n73, n69, n65, n61}), .PP({PP6_28_, 
        PP6_27_, PP6_26_, PP6_25_, PP6_24_, PP6_23_, PP6_22_, PP6_21_, PP6_20_, 
        PP6_19_, PP6_18_, PP6_17_, PP6_16_, PP6_15_, PP6_14_, PP6_13_, PP6_12_}) );
  CaculateE_mydesign_1 gen_PP_tmp_6__u_Caculate ( .MultiplierBits({n15, 
        Multiplier[12], n13}), .PP_sign_bit(PP6_28_), .Multiplicat_sign_bit(
        n129), .E(PP6_29_) );
  BoothEndecode_mydesign_0 gen_PP_tmp_7__U_BoothEndecode ( .MultiplierBits({
        Multiplier[15:14], n58}), .X1(X1[7]), .X2(X2[7]), .NEG1(NEG1[7]), 
        .NEG2(NEG2[7]) );
  PPUnit_mydesign_0 gen_PP_tmp_7__u_PPUint ( .X1(X1[7]), .X2(X2[7]), .NEG1(
        NEG1[7]), .NEG2(NEG2[7]), .Multiplicant({n121, n116, n112, n108, n104, 
        n100, n97, n93, n89, n84, n81, n78, n72, n69, n64, n60}), .PP({PP7_30_, 
        PP7_29_, PP7_28_, PP7_27_, PP7_26_, PP7_25_, PP7_24_, PP7_23_, PP7_22_, 
        PP7_21_, PP7_20_, PP7_19_, PP7_18_, PP7_17_, PP7_16_, PP7_15_, PP7_14_}) );
  CaculateE_mydesign_0 gen_PP_tmp_7__u_Caculate ( .MultiplierBits({
        Multiplier[15:14], n15}), .PP_sign_bit(PP7_30_), 
        .Multiplicat_sign_bit(n129), .E(PP7_31_) );
  INVX1 U3 ( .A(PP0_19_), .Y(PP0_17_) );
  BUFX3 U5 ( .A(n14), .Y(n58) );
  BUFX3 U6 ( .A(n4), .Y(n49) );
  BUFX3 U7 ( .A(PP0_17_), .Y(PP0_18_) );
  INVX1 U8 ( .A(n140), .Y(n135) );
  BUFX3 U9 ( .A(n10), .Y(n55) );
  BUFX3 U10 ( .A(n2), .Y(n46) );
  BUFX3 U11 ( .A(Multiplier[5]), .Y(n6) );
  BUFX2 U12 ( .A(Multiplicant[5]), .Y(n26) );
  BUFX2 U13 ( .A(Multiplicant[10]), .Y(n37) );
  BUFX2 U14 ( .A(Multiplicant[9]), .Y(n35) );
  BUFX2 U15 ( .A(Multiplicant[11]), .Y(n39) );
  BUFX3 U16 ( .A(Multiplier[9]), .Y(n10) );
  BUFX3 U17 ( .A(Multiplier[1]), .Y(n2) );
  BUFX3 U18 ( .A(Multiplier[7]), .Y(n8) );
  BUFX2 U19 ( .A(Multiplicant[5]), .Y(n27) );
  BUFX2 U20 ( .A(Multiplicant[6]), .Y(n28) );
  BUFX2 U21 ( .A(Multiplicant[11]), .Y(n38) );
  BUFX2 U22 ( .A(Multiplicant[10]), .Y(n36) );
  BUFX2 U23 ( .A(Multiplicant[9]), .Y(n34) );
  BUFX2 U24 ( .A(Multiplicant[8]), .Y(n32) );
  BUFX2 U25 ( .A(Multiplicant[7]), .Y(n30) );
  BUFX2 U26 ( .A(Multiplicant[6]), .Y(n29) );
  BUFX2 U27 ( .A(Multiplicant[8]), .Y(n33) );
  BUFX2 U28 ( .A(Multiplicant[7]), .Y(n31) );
  BUFX3 U29 ( .A(Multiplier[13]), .Y(n14) );
  INVX1 U30 ( .A(n143), .Y(n139) );
  BUFX2 U31 ( .A(n8), .Y(n53) );
  BUFX2 U32 ( .A(n12), .Y(n57) );
  BUFX2 U33 ( .A(n14), .Y(n59) );
  BUFX2 U34 ( .A(n4), .Y(n48) );
  BUFX2 U35 ( .A(n6), .Y(n50) );
  BUFX2 U36 ( .A(n12), .Y(n56) );
  BUFX2 U37 ( .A(n6), .Y(n51) );
  INVX1 U38 ( .A(n142), .Y(n140) );
  BUFX2 U39 ( .A(n8), .Y(n52) );
  BUFX2 U40 ( .A(n2), .Y(n47) );
  BUFX2 U41 ( .A(n10), .Y(n54) );
  INVX1 U42 ( .A(Multiplicant[15]), .Y(n142) );
  BUFX3 U43 ( .A(Multiplier[11]), .Y(n12) );
  BUFX3 U44 ( .A(Multiplier[3]), .Y(n4) );
  INVXL U45 ( .A(Multiplicant[15]), .Y(n143) );
  INVXL U46 ( .A(n142), .Y(n141) );
  INVXL U47 ( .A(n139), .Y(n137) );
  INVXL U48 ( .A(n140), .Y(n136) );
  INVXL U49 ( .A(n139), .Y(n138) );
  INVXL U50 ( .A(n135), .Y(n128) );
  INVXL U51 ( .A(n137), .Y(n124) );
  INVXL U52 ( .A(n141), .Y(n133) );
  INVXL U53 ( .A(n137), .Y(n123) );
  INVXL U54 ( .A(n136), .Y(n125) );
  INVXL U55 ( .A(n136), .Y(n126) );
  INVXL U56 ( .A(n135), .Y(n127) );
  INVXL U57 ( .A(n138), .Y(n121) );
  INVXL U58 ( .A(n138), .Y(n122) );
  INVXL U59 ( .A(n133), .Y(n132) );
  INVXL U60 ( .A(n134), .Y(n130) );
  INVXL U61 ( .A(n134), .Y(n129) );
  INVXL U62 ( .A(n133), .Y(n131) );
  BUFX1 U63 ( .A(Multiplier[1]), .Y(n3) );
  BUFX1 U64 ( .A(Multiplier[3]), .Y(n5) );
  BUFX1 U65 ( .A(Multiplier[5]), .Y(n7) );
  BUFX1 U66 ( .A(Multiplier[7]), .Y(n9) );
  BUFX1 U67 ( .A(Multiplier[9]), .Y(n11) );
  BUFX1 U68 ( .A(Multiplier[11]), .Y(n13) );
  BUFX1 U69 ( .A(Multiplier[13]), .Y(n15) );
  BUFX1 U70 ( .A(Multiplicant[0]), .Y(n16) );
  BUFX1 U71 ( .A(Multiplicant[0]), .Y(n17) );
  BUFX1 U72 ( .A(Multiplicant[1]), .Y(n18) );
  BUFX1 U73 ( .A(Multiplicant[1]), .Y(n19) );
  BUFX1 U74 ( .A(Multiplicant[2]), .Y(n20) );
  BUFX1 U75 ( .A(Multiplicant[2]), .Y(n21) );
  BUFX1 U76 ( .A(Multiplicant[3]), .Y(n22) );
  BUFX1 U77 ( .A(Multiplicant[3]), .Y(n23) );
  BUFX1 U78 ( .A(Multiplicant[4]), .Y(n24) );
  BUFX1 U79 ( .A(Multiplicant[4]), .Y(n25) );
  BUFX1 U80 ( .A(Multiplicant[12]), .Y(n40) );
  BUFX1 U81 ( .A(Multiplicant[12]), .Y(n41) );
  BUFX1 U82 ( .A(Multiplicant[13]), .Y(n42) );
  BUFX1 U83 ( .A(Multiplicant[13]), .Y(n43) );
  BUFX1 U84 ( .A(Multiplicant[14]), .Y(n44) );
  BUFX1 U85 ( .A(Multiplicant[14]), .Y(n45) );
  BUFX1 U86 ( .A(n17), .Y(n60) );
  BUFX1 U87 ( .A(n16), .Y(n61) );
  BUFX1 U88 ( .A(n16), .Y(n62) );
  BUFX1 U89 ( .A(n17), .Y(n63) );
  BUFX1 U90 ( .A(n18), .Y(n64) );
  BUFX1 U91 ( .A(n19), .Y(n65) );
  BUFX1 U92 ( .A(n18), .Y(n66) );
  BUFX1 U93 ( .A(n19), .Y(n67) );
  BUFX1 U94 ( .A(n20), .Y(n68) );
  BUFX1 U95 ( .A(n21), .Y(n69) );
  BUFX1 U96 ( .A(n20), .Y(n70) );
  BUFX1 U97 ( .A(n21), .Y(n71) );
  BUFX1 U98 ( .A(n22), .Y(n72) );
  BUFX1 U99 ( .A(n23), .Y(n73) );
  BUFX1 U100 ( .A(n22), .Y(n74) );
  BUFX1 U101 ( .A(n23), .Y(n75) );
  BUFX1 U102 ( .A(n24), .Y(n76) );
  BUFX1 U103 ( .A(n25), .Y(n77) );
  BUFX1 U104 ( .A(n24), .Y(n78) );
  BUFX1 U105 ( .A(n25), .Y(n79) );
  BUFX1 U106 ( .A(n26), .Y(n80) );
  BUFX1 U107 ( .A(n27), .Y(n81) );
  BUFX1 U108 ( .A(n26), .Y(n82) );
  BUFX1 U109 ( .A(n27), .Y(n83) );
  BUFX1 U110 ( .A(n28), .Y(n84) );
  BUFX1 U111 ( .A(n29), .Y(n85) );
  BUFX1 U112 ( .A(n28), .Y(n86) );
  BUFX1 U113 ( .A(n29), .Y(n87) );
  BUFX1 U114 ( .A(n30), .Y(n88) );
  BUFX1 U115 ( .A(n30), .Y(n89) );
  BUFX1 U116 ( .A(n31), .Y(n90) );
  BUFX1 U117 ( .A(n31), .Y(n91) );
  BUFX1 U118 ( .A(n32), .Y(n92) );
  BUFX1 U119 ( .A(n33), .Y(n93) );
  BUFX1 U120 ( .A(n32), .Y(n94) );
  BUFX1 U121 ( .A(n33), .Y(n95) );
  BUFX1 U122 ( .A(n34), .Y(n96) );
  BUFX1 U123 ( .A(n35), .Y(n97) );
  BUFX1 U124 ( .A(n34), .Y(n98) );
  BUFX1 U125 ( .A(n35), .Y(n99) );
  BUFX1 U126 ( .A(n37), .Y(n100) );
  BUFX1 U127 ( .A(n36), .Y(n101) );
  BUFX1 U128 ( .A(n37), .Y(n102) );
  BUFX1 U129 ( .A(n36), .Y(n103) );
  BUFX1 U130 ( .A(n39), .Y(n104) );
  BUFX1 U131 ( .A(n38), .Y(n105) );
  BUFX1 U132 ( .A(n39), .Y(n106) );
  BUFX1 U133 ( .A(n38), .Y(n107) );
  BUFX1 U134 ( .A(n41), .Y(n108) );
  BUFX1 U135 ( .A(n40), .Y(n109) );
  BUFX1 U136 ( .A(n41), .Y(n110) );
  BUFX1 U137 ( .A(n40), .Y(n111) );
  BUFX1 U138 ( .A(n42), .Y(n112) );
  BUFX1 U139 ( .A(n43), .Y(n113) );
  BUFX1 U140 ( .A(n43), .Y(n114) );
  BUFX1 U141 ( .A(n42), .Y(n115) );
  BUFX1 U142 ( .A(n44), .Y(n116) );
  BUFX1 U143 ( .A(n45), .Y(n117) );
  BUFX1 U144 ( .A(n44), .Y(n118) );
  BUFX1 U145 ( .A(n45), .Y(n119) );
  INVXL U146 ( .A(n141), .Y(n134) );
endmodule


module CSA32_mydesign_5 ( X1, X2, X3, Carry, Sum );
  input X1, X2, X3;
  output Carry, Sum;


  ADDFXL U1 ( .A(X2), .B(X1), .CI(X3), .CO(Carry), .S(Sum) );
endmodule


module CSA42_mydesign_44 ( X1, X2, X3, X4, Cout, Sum, Carry );
  input X1, X2, X3, X4;
  output Cout, Sum, Carry;
  wire   n1;

  ADDFXL U1 ( .A(X2), .B(X3), .CI(X4), .CO(Cout), .S(n1) );
  AND2XL U2 ( .A(n1), .B(X1), .Y(Carry) );
  AOI2BB1XL U3 ( .A0N(n1), .A1N(X1), .B0(Carry), .Y(Sum) );
endmodule


module CSA42_mydesign_30 ( X2, X3, X4, Cin, Cout, Sum, Carry );
  input X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1;

  ADDFXL U1 ( .A(X2), .B(X3), .CI(X4), .CO(Cout), .S(n1) );
  AND2XL U2 ( .A(n1), .B(Cin), .Y(Carry) );
  AOI2BB1XL U3 ( .A0N(n1), .A1N(Cin), .B0(Carry), .Y(Sum) );
endmodule


module CSA42_mydesign_31 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  BUFX1 U1 ( .A(Cin), .Y(n1) );
  BUFX1 U2 ( .A(X3), .Y(n2) );
  INVXL U3 ( .A(n14), .Y(n3) );
  INVXL U4 ( .A(n3), .Y(n4) );
  INVXL U5 ( .A(X2), .Y(n5) );
  INVXL U6 ( .A(X2), .Y(n6) );
  BUFX1 U7 ( .A(X1), .Y(n7) );
  BUFX1 U8 ( .A(X4), .Y(n8) );
  NOR2XL U9 ( .A(X4), .B(X3), .Y(n10) );
  NAND2XL U10 ( .A(n8), .B(n2), .Y(n9) );
  OAI21XL U11 ( .A0(n10), .A1(n5), .B0(n9), .Y(Cout) );
  AOI21XL U12 ( .A0(n2), .A1(n8), .B0(n10), .Y(n13) );
  AOI2BB2XL U13 ( .B0(n7), .B1(n6), .A0N(n5), .A1N(X1), .Y(n12) );
  NAND2XL U14 ( .A(n13), .B(n12), .Y(n11) );
  OAI21XL U15 ( .A0(n13), .A1(n12), .B0(n11), .Y(n14) );
  MX2X1 U16 ( .A(n7), .B(n1), .S0(n14), .Y(Carry) );
  AOI2BB2XL U17 ( .B0(n4), .B1(n1), .A0N(Cin), .A1N(n4), .Y(Sum) );
endmodule


module CSA42_mydesign_32 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  BUFX1 U1 ( .A(Cin), .Y(n1) );
  BUFX1 U2 ( .A(X3), .Y(n2) );
  INVXL U3 ( .A(n14), .Y(n3) );
  INVXL U4 ( .A(n3), .Y(n4) );
  INVXL U5 ( .A(X2), .Y(n5) );
  BUFX1 U6 ( .A(X1), .Y(n6) );
  BUFX1 U7 ( .A(X4), .Y(n7) );
  NOR2XL U8 ( .A(X4), .B(X3), .Y(n9) );
  INVXL U9 ( .A(X2), .Y(n10) );
  NAND2XL U10 ( .A(n7), .B(n2), .Y(n8) );
  OAI21XL U11 ( .A0(n9), .A1(n5), .B0(n8), .Y(Cout) );
  AOI21XL U12 ( .A0(n2), .A1(n7), .B0(n9), .Y(n13) );
  AOI2BB2XL U13 ( .B0(n6), .B1(n10), .A0N(n5), .A1N(X1), .Y(n12) );
  NAND2XL U14 ( .A(n13), .B(n12), .Y(n11) );
  OAI21XL U15 ( .A0(n13), .A1(n12), .B0(n11), .Y(n14) );
  MX2X1 U16 ( .A(n6), .B(n1), .S0(n14), .Y(Carry) );
  AOI2BB2XL U17 ( .B0(n4), .B1(n1), .A0N(Cin), .A1N(n4), .Y(Sum) );
endmodule


module CSA42_mydesign_33 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  BUFX1 U1 ( .A(Cin), .Y(n1) );
  BUFX1 U2 ( .A(X3), .Y(n2) );
  INVXL U3 ( .A(n14), .Y(n3) );
  INVXL U4 ( .A(n3), .Y(n4) );
  INVXL U5 ( .A(X2), .Y(n5) );
  BUFX1 U6 ( .A(X4), .Y(n6) );
  BUFX1 U7 ( .A(X1), .Y(n7) );
  NOR2XL U8 ( .A(X4), .B(X3), .Y(n9) );
  INVXL U9 ( .A(X2), .Y(n10) );
  NAND2XL U10 ( .A(n6), .B(n2), .Y(n8) );
  OAI21XL U11 ( .A0(n9), .A1(n5), .B0(n8), .Y(Cout) );
  AOI21XL U12 ( .A0(n2), .A1(n6), .B0(n9), .Y(n13) );
  AOI2BB2XL U13 ( .B0(n7), .B1(n10), .A0N(n5), .A1N(X1), .Y(n12) );
  NAND2XL U14 ( .A(n13), .B(n12), .Y(n11) );
  OAI21XL U15 ( .A0(n13), .A1(n12), .B0(n11), .Y(n14) );
  MX2X1 U16 ( .A(n7), .B(n1), .S0(n14), .Y(Carry) );
  AOI2BB2XL U17 ( .B0(n4), .B1(n1), .A0N(Cin), .A1N(n4), .Y(Sum) );
endmodule


module CSA42_mydesign_34 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  BUFX1 U1 ( .A(Cin), .Y(n1) );
  BUFX1 U2 ( .A(X4), .Y(n2) );
  INVXL U3 ( .A(n14), .Y(n3) );
  INVXL U4 ( .A(n3), .Y(n4) );
  INVXL U5 ( .A(X2), .Y(n5) );
  BUFX1 U6 ( .A(X1), .Y(n6) );
  BUFX1 U7 ( .A(X3), .Y(n7) );
  NOR2XL U8 ( .A(X4), .B(X3), .Y(n9) );
  INVXL U9 ( .A(X2), .Y(n10) );
  NAND2XL U10 ( .A(n2), .B(n7), .Y(n8) );
  OAI21XL U11 ( .A0(n9), .A1(n5), .B0(n8), .Y(Cout) );
  AOI21XL U12 ( .A0(n7), .A1(n2), .B0(n9), .Y(n13) );
  AOI2BB2XL U13 ( .B0(n6), .B1(n10), .A0N(n5), .A1N(X1), .Y(n12) );
  NAND2XL U14 ( .A(n13), .B(n12), .Y(n11) );
  OAI21XL U15 ( .A0(n13), .A1(n12), .B0(n11), .Y(n14) );
  MX2X1 U16 ( .A(n6), .B(n1), .S0(n14), .Y(Carry) );
  AOI2BB2XL U17 ( .B0(n4), .B1(n1), .A0N(Cin), .A1N(n4), .Y(Sum) );
endmodule


module CSA42_mydesign_35 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  BUFX1 U1 ( .A(Cin), .Y(n1) );
  BUFX1 U2 ( .A(X3), .Y(n2) );
  INVXL U3 ( .A(n14), .Y(n3) );
  INVXL U4 ( .A(n3), .Y(n4) );
  INVXL U5 ( .A(X2), .Y(n5) );
  BUFX1 U6 ( .A(X1), .Y(n6) );
  BUFX1 U7 ( .A(X4), .Y(n7) );
  NOR2XL U8 ( .A(X4), .B(X3), .Y(n9) );
  INVXL U9 ( .A(X2), .Y(n10) );
  NAND2XL U10 ( .A(n7), .B(n2), .Y(n8) );
  OAI21XL U11 ( .A0(n9), .A1(n5), .B0(n8), .Y(Cout) );
  AOI21XL U12 ( .A0(n2), .A1(n7), .B0(n9), .Y(n13) );
  AOI2BB2XL U13 ( .B0(n6), .B1(n10), .A0N(n5), .A1N(X1), .Y(n12) );
  NAND2XL U14 ( .A(n13), .B(n12), .Y(n11) );
  OAI21XL U15 ( .A0(n13), .A1(n12), .B0(n11), .Y(n14) );
  MX2X1 U16 ( .A(n6), .B(n1), .S0(n14), .Y(Carry) );
  AOI2BB2XL U17 ( .B0(n4), .B1(n1), .A0N(Cin), .A1N(n4), .Y(Sum) );
endmodule


module CSA42_mydesign_36 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  BUFX1 U1 ( .A(Cin), .Y(n1) );
  BUFX1 U2 ( .A(X3), .Y(n2) );
  INVXL U3 ( .A(n14), .Y(n3) );
  INVXL U4 ( .A(n3), .Y(n4) );
  INVXL U5 ( .A(X2), .Y(n5) );
  BUFX1 U6 ( .A(X1), .Y(n6) );
  BUFX1 U7 ( .A(X4), .Y(n7) );
  NOR2XL U8 ( .A(X4), .B(X3), .Y(n9) );
  INVXL U9 ( .A(X2), .Y(n10) );
  NAND2XL U10 ( .A(n7), .B(n2), .Y(n8) );
  OAI21XL U11 ( .A0(n9), .A1(n5), .B0(n8), .Y(Cout) );
  AOI21XL U12 ( .A0(n2), .A1(n7), .B0(n9), .Y(n13) );
  AOI2BB2XL U13 ( .B0(n6), .B1(n10), .A0N(n5), .A1N(X1), .Y(n12) );
  NAND2XL U14 ( .A(n13), .B(n12), .Y(n11) );
  OAI21XL U15 ( .A0(n13), .A1(n12), .B0(n11), .Y(n14) );
  MX2X1 U16 ( .A(n6), .B(n1), .S0(n14), .Y(Carry) );
  AOI2BB2XL U17 ( .B0(n4), .B1(n1), .A0N(Cin), .A1N(n4), .Y(Sum) );
endmodule


module CSA42_mydesign_37 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  BUFX1 U1 ( .A(Cin), .Y(n1) );
  BUFX1 U2 ( .A(X3), .Y(n2) );
  INVXL U3 ( .A(n14), .Y(n3) );
  INVXL U4 ( .A(n3), .Y(n4) );
  INVXL U5 ( .A(X2), .Y(n5) );
  BUFX1 U6 ( .A(X1), .Y(n6) );
  BUFX1 U7 ( .A(X4), .Y(n7) );
  NOR2XL U8 ( .A(X4), .B(X3), .Y(n9) );
  INVXL U9 ( .A(X2), .Y(n10) );
  NAND2XL U10 ( .A(n7), .B(n2), .Y(n8) );
  OAI21XL U11 ( .A0(n9), .A1(n5), .B0(n8), .Y(Cout) );
  AOI21XL U12 ( .A0(n2), .A1(n7), .B0(n9), .Y(n13) );
  AOI2BB2XL U13 ( .B0(n6), .B1(n10), .A0N(n5), .A1N(X1), .Y(n12) );
  NAND2XL U14 ( .A(n13), .B(n12), .Y(n11) );
  OAI21XL U15 ( .A0(n13), .A1(n12), .B0(n11), .Y(n14) );
  MX2X1 U16 ( .A(n6), .B(n1), .S0(n14), .Y(Carry) );
  AOI2BB2XL U17 ( .B0(n4), .B1(n1), .A0N(Cin), .A1N(n4), .Y(Sum) );
endmodule


module CSA42_mydesign_38 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  BUFX1 U1 ( .A(Cin), .Y(n1) );
  BUFX1 U2 ( .A(X3), .Y(n2) );
  INVXL U3 ( .A(n14), .Y(n3) );
  INVXL U4 ( .A(n3), .Y(n4) );
  INVXL U5 ( .A(X2), .Y(n5) );
  INVXL U6 ( .A(X2), .Y(n6) );
  BUFX1 U7 ( .A(X1), .Y(n7) );
  BUFX1 U8 ( .A(X4), .Y(n8) );
  NOR2XL U9 ( .A(X4), .B(X3), .Y(n10) );
  NAND2XL U10 ( .A(n8), .B(n2), .Y(n9) );
  OAI21XL U11 ( .A0(n10), .A1(n5), .B0(n9), .Y(Cout) );
  AOI21XL U12 ( .A0(n2), .A1(n8), .B0(n10), .Y(n13) );
  AOI2BB2XL U13 ( .B0(n7), .B1(n6), .A0N(n5), .A1N(X1), .Y(n12) );
  NAND2XL U14 ( .A(n13), .B(n12), .Y(n11) );
  OAI21XL U15 ( .A0(n13), .A1(n12), .B0(n11), .Y(n14) );
  MX2X1 U16 ( .A(n7), .B(n1), .S0(n14), .Y(Carry) );
  AOI2BB2XL U17 ( .B0(n4), .B1(n1), .A0N(Cin), .A1N(n4), .Y(Sum) );
endmodule


module CSA42_mydesign_39 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  BUFX1 U1 ( .A(Cin), .Y(n1) );
  BUFX1 U2 ( .A(X3), .Y(n2) );
  INVXL U3 ( .A(n14), .Y(n3) );
  INVXL U4 ( .A(n3), .Y(n4) );
  INVXL U5 ( .A(X2), .Y(n5) );
  BUFX1 U6 ( .A(X1), .Y(n6) );
  BUFX1 U7 ( .A(X4), .Y(n7) );
  NOR2XL U8 ( .A(X4), .B(X3), .Y(n9) );
  INVXL U9 ( .A(X2), .Y(n10) );
  NAND2XL U10 ( .A(n7), .B(n2), .Y(n8) );
  OAI21XL U11 ( .A0(n9), .A1(n5), .B0(n8), .Y(Cout) );
  AOI21XL U12 ( .A0(n2), .A1(n7), .B0(n9), .Y(n13) );
  AOI2BB2XL U13 ( .B0(n6), .B1(n10), .A0N(n5), .A1N(X1), .Y(n12) );
  NAND2XL U14 ( .A(n13), .B(n12), .Y(n11) );
  OAI21XL U15 ( .A0(n13), .A1(n12), .B0(n11), .Y(n14) );
  MX2X1 U16 ( .A(n6), .B(n1), .S0(n14), .Y(Carry) );
  AOI2BB2XL U17 ( .B0(n4), .B1(n1), .A0N(Cin), .A1N(n4), .Y(Sum) );
endmodule


module CSA42_mydesign_40 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  BUFX1 U1 ( .A(Cin), .Y(n1) );
  BUFX1 U2 ( .A(X3), .Y(n2) );
  INVXL U3 ( .A(n14), .Y(n3) );
  INVXL U4 ( .A(n3), .Y(n4) );
  INVXL U5 ( .A(X2), .Y(n5) );
  BUFX1 U6 ( .A(X1), .Y(n6) );
  BUFX1 U7 ( .A(X4), .Y(n7) );
  NOR2XL U8 ( .A(X4), .B(X3), .Y(n9) );
  INVXL U9 ( .A(X2), .Y(n10) );
  NAND2XL U10 ( .A(n7), .B(n2), .Y(n8) );
  OAI21XL U11 ( .A0(n9), .A1(n5), .B0(n8), .Y(Cout) );
  AOI21XL U12 ( .A0(n2), .A1(n7), .B0(n9), .Y(n13) );
  AOI2BB2XL U13 ( .B0(n6), .B1(n5), .A0N(n10), .A1N(X1), .Y(n12) );
  NAND2XL U14 ( .A(n13), .B(n12), .Y(n11) );
  OAI21XL U15 ( .A0(n13), .A1(n12), .B0(n11), .Y(n14) );
  MX2X1 U16 ( .A(n6), .B(Cin), .S0(n4), .Y(Carry) );
  AOI2BB2XL U17 ( .B0(n14), .B1(n1), .A0N(n1), .A1N(n4), .Y(Sum) );
endmodule


module CSA42_mydesign_41 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  BUFX1 U1 ( .A(Cin), .Y(n1) );
  BUFX1 U2 ( .A(X3), .Y(n2) );
  INVXL U3 ( .A(n14), .Y(n3) );
  INVXL U4 ( .A(n3), .Y(n4) );
  INVXL U5 ( .A(X2), .Y(n5) );
  BUFX1 U6 ( .A(X1), .Y(n6) );
  BUFX1 U7 ( .A(X4), .Y(n7) );
  NOR2XL U8 ( .A(X4), .B(X3), .Y(n9) );
  INVXL U9 ( .A(X2), .Y(n10) );
  NAND2XL U10 ( .A(n7), .B(n2), .Y(n8) );
  OAI21XL U11 ( .A0(n9), .A1(n5), .B0(n8), .Y(Cout) );
  AOI21XL U12 ( .A0(n2), .A1(n7), .B0(n9), .Y(n13) );
  AOI2BB2XL U13 ( .B0(n6), .B1(n10), .A0N(n5), .A1N(X1), .Y(n12) );
  NAND2XL U14 ( .A(n13), .B(n12), .Y(n11) );
  OAI21XL U15 ( .A0(n13), .A1(n12), .B0(n11), .Y(n14) );
  MX2X1 U16 ( .A(n6), .B(Cin), .S0(n4), .Y(Carry) );
  AOI2BB2XL U17 ( .B0(n14), .B1(n1), .A0N(n1), .A1N(n4), .Y(Sum) );
endmodule


module CSA42_mydesign_42 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  BUFX1 U1 ( .A(Cin), .Y(n1) );
  BUFX1 U2 ( .A(X3), .Y(n2) );
  INVXL U3 ( .A(n14), .Y(n3) );
  INVXL U4 ( .A(n3), .Y(n4) );
  INVXL U5 ( .A(X2), .Y(n5) );
  BUFX1 U6 ( .A(X4), .Y(n6) );
  BUFX1 U7 ( .A(X1), .Y(n7) );
  NOR2XL U8 ( .A(X4), .B(X3), .Y(n9) );
  INVXL U9 ( .A(X2), .Y(n10) );
  NAND2XL U10 ( .A(n6), .B(n2), .Y(n8) );
  OAI21XL U11 ( .A0(n9), .A1(n5), .B0(n8), .Y(Cout) );
  AOI21XL U12 ( .A0(n2), .A1(n6), .B0(n9), .Y(n13) );
  AOI2BB2XL U13 ( .B0(n7), .B1(n5), .A0N(n10), .A1N(X1), .Y(n12) );
  NAND2XL U14 ( .A(n13), .B(n12), .Y(n11) );
  OAI21XL U15 ( .A0(n13), .A1(n12), .B0(n11), .Y(n14) );
  MX2X1 U16 ( .A(n7), .B(n1), .S0(n4), .Y(Carry) );
  AOI2BB2XL U17 ( .B0(n4), .B1(Cin), .A0N(n1), .A1N(n14), .Y(Sum) );
endmodule


module CSA42_mydesign_43 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  BUFX1 U1 ( .A(Cin), .Y(n1) );
  BUFX1 U2 ( .A(X3), .Y(n2) );
  INVXL U3 ( .A(n14), .Y(n3) );
  INVXL U4 ( .A(n3), .Y(n4) );
  INVXL U5 ( .A(X2), .Y(n5) );
  BUFX1 U6 ( .A(X1), .Y(n6) );
  BUFX1 U7 ( .A(X4), .Y(n7) );
  NOR2XL U8 ( .A(X4), .B(X3), .Y(n9) );
  INVXL U9 ( .A(X2), .Y(n10) );
  NAND2XL U10 ( .A(n7), .B(n2), .Y(n8) );
  OAI21XL U11 ( .A0(n9), .A1(n5), .B0(n8), .Y(Cout) );
  AOI21XL U12 ( .A0(n2), .A1(n7), .B0(n9), .Y(n13) );
  AOI2BB2XL U13 ( .B0(n6), .B1(n5), .A0N(n10), .A1N(X1), .Y(n12) );
  NAND2XL U14 ( .A(n13), .B(n12), .Y(n11) );
  OAI21XL U15 ( .A0(n13), .A1(n12), .B0(n11), .Y(n14) );
  MX2X1 U16 ( .A(n6), .B(Cin), .S0(n4), .Y(Carry) );
  AOI2BB2XL U17 ( .B0(n4), .B1(n1), .A0N(n1), .A1N(n14), .Y(Sum) );
endmodule


module CSA32_mydesign_4 ( X1, X2, X3, Carry, Sum );
  input X1, X2, X3;
  output Carry, Sum;


  ADDFXL U1 ( .A(X2), .B(X1), .CI(X3), .CO(Carry), .S(Sum) );
endmodule


module HalfAdder_mydesign_4 ( X1, X2, Sum, Carry );
  input X1, X2;
  output Sum, Carry;
  wire   n3, n1;

  INVXL U1 ( .A(n3), .Y(n1) );
  INVXL U2 ( .A(n1), .Y(Carry) );
  AND2XL U3 ( .A(X2), .B(X1), .Y(n3) );
  AOI2BB1XL U4 ( .A0N(X2), .A1N(X1), .B0(n3), .Y(Sum) );
endmodule


module HalfAdder_mydesign_5 ( X1, X2, Sum, Carry );
  input X1, X2;
  output Sum, Carry;


  AND2XL U1 ( .A(X2), .B(X1), .Y(Carry) );
  AOI2BB1XL U2 ( .A0N(X2), .A1N(X1), .B0(Carry), .Y(Sum) );
endmodule


module WallaceTree_mydesign_2 ( in_2, out_0, out_1, Cout, in_0_15_, in_0_14_, 
        in_0_13_, in_0_12_, in_0_11_, in_0_10_, in_0_9_, in_0_8_, in_0_7_, 
        in_0_6_, in_0_5_, in_0_4_, in_0_3_, in_0_2_, in_0_1_, in_0_0_, 
        in_1_16_, in_1_15_, in_1_14_, in_1_13_, in_1_12_, in_1_11_, in_1_10_, 
        in_1_9_, in_1_8_, in_1_7_, in_1_6_, in_1_5_, in_1_4_, in_1_3_, in_1_2_, 
        in_1_1_, in_1_0_, in_3_18_, in_3_17_, in_3_16_, in_3_15_, in_3_14_, 
        in_3_13_, in_3_12_, in_3_11_, in_3_10_, in_3_9_, in_3_8_, in_3_7_, 
        in_3_6_, in_3_5_, in_3_4_, in_3_3_, in_3_2_ );
  input [18:0] in_2;
  output [18:0] out_0;
  output [18:0] out_1;
  input in_0_15_, in_0_14_, in_0_13_, in_0_12_, in_0_11_, in_0_10_, in_0_9_,
         in_0_8_, in_0_7_, in_0_6_, in_0_5_, in_0_4_, in_0_3_, in_0_2_,
         in_0_1_, in_0_0_, in_1_16_, in_1_15_, in_1_14_, in_1_13_, in_1_12_,
         in_1_11_, in_1_10_, in_1_9_, in_1_8_, in_1_7_, in_1_6_, in_1_5_,
         in_1_4_, in_1_3_, in_1_2_, in_1_1_, in_1_0_, in_3_18_, in_3_17_,
         in_3_16_, in_3_15_, in_3_14_, in_3_13_, in_3_12_, in_3_11_, in_3_10_,
         in_3_9_, in_3_8_, in_3_7_, in_3_6_, in_3_5_, in_3_4_, in_3_3_,
         in_3_2_;
  output Cout;

  wire   [15:1] Carry_tmp;

  HalfAdder_mydesign_5 u_HalfAdder_0 ( .X1(in_0_0_), .X2(in_1_0_), .Sum(
        out_0[0]), .Carry(out_1[1]) );
  CSA32_mydesign_5 u_CSA32_0 ( .X1(in_0_1_), .X2(in_1_1_), .X3(in_2[1]), 
        .Carry(out_1[2]), .Sum(out_0[1]) );
  CSA42_mydesign_44 gen_CSA42_0__u_CSA42 ( .X1(in_0_2_), .X2(in_1_2_), .X3(
        in_2[2]), .X4(in_3_2_), .Cout(Carry_tmp[1]), .Sum(out_0[2]), .Carry(
        out_1[3]) );
  CSA42_mydesign_43 gen_CSA42_1__u_CSA42 ( .X1(in_0_3_), .X2(in_1_3_), .X3(
        in_2[3]), .X4(in_3_3_), .Cin(Carry_tmp[1]), .Cout(Carry_tmp[2]), .Sum(
        out_0[3]), .Carry(out_1[4]) );
  CSA42_mydesign_42 gen_CSA42_2__u_CSA42 ( .X1(in_0_4_), .X2(in_1_4_), .X3(
        in_2[4]), .X4(in_3_4_), .Cin(Carry_tmp[2]), .Cout(Carry_tmp[3]), .Sum(
        out_0[4]), .Carry(out_1[5]) );
  CSA42_mydesign_41 gen_CSA42_3__u_CSA42 ( .X1(in_0_5_), .X2(in_1_5_), .X3(
        in_2[5]), .X4(in_3_5_), .Cin(Carry_tmp[3]), .Cout(Carry_tmp[4]), .Sum(
        out_0[5]), .Carry(out_1[6]) );
  CSA42_mydesign_40 gen_CSA42_4__u_CSA42 ( .X1(in_0_6_), .X2(in_1_6_), .X3(
        in_2[6]), .X4(in_3_6_), .Cin(Carry_tmp[4]), .Cout(Carry_tmp[5]), .Sum(
        out_0[6]), .Carry(out_1[7]) );
  CSA42_mydesign_39 gen_CSA42_5__u_CSA42 ( .X1(in_0_7_), .X2(in_1_7_), .X3(
        in_2[7]), .X4(in_3_7_), .Cin(Carry_tmp[5]), .Cout(Carry_tmp[6]), .Sum(
        out_0[7]), .Carry(out_1[8]) );
  CSA42_mydesign_38 gen_CSA42_6__u_CSA42 ( .X1(in_0_8_), .X2(in_1_8_), .X3(
        in_2[8]), .X4(in_3_8_), .Cin(Carry_tmp[6]), .Cout(Carry_tmp[7]), .Sum(
        out_0[8]), .Carry(out_1[9]) );
  CSA42_mydesign_37 gen_CSA42_7__u_CSA42 ( .X1(in_0_9_), .X2(in_1_9_), .X3(
        in_2[9]), .X4(in_3_9_), .Cin(Carry_tmp[7]), .Cout(Carry_tmp[8]), .Sum(
        out_0[9]), .Carry(out_1[10]) );
  CSA42_mydesign_36 gen_CSA42_8__u_CSA42 ( .X1(in_0_10_), .X2(in_1_10_), .X3(
        in_2[10]), .X4(in_3_10_), .Cin(Carry_tmp[8]), .Cout(Carry_tmp[9]), 
        .Sum(out_0[10]), .Carry(out_1[11]) );
  CSA42_mydesign_35 gen_CSA42_9__u_CSA42 ( .X1(in_0_11_), .X2(in_1_11_), .X3(
        in_2[11]), .X4(in_3_11_), .Cin(Carry_tmp[9]), .Cout(Carry_tmp[10]), 
        .Sum(out_0[11]), .Carry(out_1[12]) );
  CSA42_mydesign_34 gen_CSA42_10__u_CSA42 ( .X1(in_0_12_), .X2(in_1_12_), .X3(
        in_2[12]), .X4(in_3_12_), .Cin(Carry_tmp[10]), .Cout(Carry_tmp[11]), 
        .Sum(out_0[12]), .Carry(out_1[13]) );
  CSA42_mydesign_33 gen_CSA42_11__u_CSA42 ( .X1(in_0_13_), .X2(in_1_13_), .X3(
        in_2[13]), .X4(in_3_13_), .Cin(Carry_tmp[11]), .Cout(Carry_tmp[12]), 
        .Sum(out_0[13]), .Carry(out_1[14]) );
  CSA42_mydesign_32 gen_CSA42_12__u_CSA42 ( .X1(in_0_14_), .X2(in_1_14_), .X3(
        in_2[14]), .X4(in_3_14_), .Cin(Carry_tmp[12]), .Cout(Carry_tmp[13]), 
        .Sum(out_0[14]), .Carry(out_1[15]) );
  CSA42_mydesign_31 gen_CSA42_13__u_CSA42 ( .X1(in_0_15_), .X2(in_1_15_), .X3(
        in_2[15]), .X4(in_3_15_), .Cin(Carry_tmp[13]), .Cout(Carry_tmp[14]), 
        .Sum(out_0[15]), .Carry(out_1[16]) );
  CSA42_mydesign_30 gen_CSA42_14__u_CSA42 ( .X2(in_1_16_), .X3(in_2[16]), .X4(
        in_3_16_), .Cin(Carry_tmp[14]), .Cout(Carry_tmp[15]), .Sum(out_0[16]), 
        .Carry(out_1[17]) );
  CSA32_mydesign_4 u_CSA32_1 ( .X1(Carry_tmp[15]), .X2(in_2[17]), .X3(in_3_17_), .Carry(out_1[18]), .Sum(out_0[17]) );
  HalfAdder_mydesign_4 u_HalfAdder_1 ( .X1(in_2[18]), .X2(in_3_18_), .Sum(
        out_0[18]), .Carry(Cout) );
  BUFX1 U3 ( .A(in_2[0]), .Y(out_1[0]) );
endmodule


module HalfAdder_mydesign_10 ( X1, X2, Sum, Carry );
  input X1, X2;
  output Sum, Carry;


  AND2XL U1 ( .A(X2), .B(X1), .Y(Carry) );
  AOI2BB1XL U2 ( .A0N(X2), .A1N(X1), .B0(Carry), .Y(Sum) );
endmodule


module CSA42_mydesign_0 ( X2, X3, X4, Cin, Cout, Sum, Carry );
  input X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1;

  ADDFXL U1 ( .A(X2), .B(X3), .CI(X4), .CO(Cout), .S(n1) );
  AND2XL U2 ( .A(n1), .B(Cin), .Y(Carry) );
  AOI2BB1XL U3 ( .A0N(n1), .A1N(Cin), .B0(Carry), .Y(Sum) );
endmodule


module CSA42_mydesign_1 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  BUFX1 U1 ( .A(Cin), .Y(n1) );
  BUFX1 U2 ( .A(X4), .Y(n2) );
  BUFX1 U3 ( .A(X1), .Y(n3) );
  INVXL U4 ( .A(n14), .Y(n4) );
  INVXL U5 ( .A(n4), .Y(n5) );
  INVXL U6 ( .A(X2), .Y(n6) );
  BUFX1 U7 ( .A(X3), .Y(n7) );
  NOR2XL U8 ( .A(X4), .B(X3), .Y(n9) );
  INVXL U9 ( .A(X2), .Y(n10) );
  NAND2XL U10 ( .A(n2), .B(n7), .Y(n8) );
  OAI21XL U11 ( .A0(n9), .A1(n10), .B0(n8), .Y(Cout) );
  AOI21XL U12 ( .A0(n7), .A1(n2), .B0(n9), .Y(n13) );
  AOI2BB2XL U13 ( .B0(n3), .B1(n10), .A0N(n6), .A1N(X1), .Y(n12) );
  NAND2XL U14 ( .A(n13), .B(n12), .Y(n11) );
  OAI21XL U15 ( .A0(n13), .A1(n12), .B0(n11), .Y(n14) );
  MX2X1 U16 ( .A(n3), .B(n1), .S0(n14), .Y(Carry) );
  AOI2BB2XL U17 ( .B0(n5), .B1(n1), .A0N(Cin), .A1N(n5), .Y(Sum) );
endmodule


module CSA42_mydesign_2 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  BUFX1 U1 ( .A(Cin), .Y(n1) );
  BUFX1 U2 ( .A(X4), .Y(n2) );
  BUFX1 U3 ( .A(X1), .Y(n3) );
  INVXL U4 ( .A(n14), .Y(n4) );
  INVXL U5 ( .A(n4), .Y(n5) );
  INVXL U6 ( .A(X2), .Y(n6) );
  BUFX1 U7 ( .A(X3), .Y(n7) );
  NOR2XL U8 ( .A(X4), .B(X3), .Y(n9) );
  INVXL U9 ( .A(X2), .Y(n10) );
  NAND2XL U10 ( .A(n2), .B(n7), .Y(n8) );
  OAI21XL U11 ( .A0(n9), .A1(n10), .B0(n8), .Y(Cout) );
  AOI21XL U12 ( .A0(n7), .A1(n2), .B0(n9), .Y(n13) );
  AOI2BB2XL U13 ( .B0(n3), .B1(n10), .A0N(n6), .A1N(X1), .Y(n12) );
  NAND2XL U14 ( .A(n13), .B(n12), .Y(n11) );
  OAI21XL U15 ( .A0(n13), .A1(n12), .B0(n11), .Y(n14) );
  MX2X1 U16 ( .A(n3), .B(n1), .S0(n14), .Y(Carry) );
  AOI2BB2XL U17 ( .B0(n5), .B1(n1), .A0N(Cin), .A1N(n5), .Y(Sum) );
endmodule


module CSA42_mydesign_3 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  BUFX1 U1 ( .A(Cin), .Y(n1) );
  BUFX1 U2 ( .A(X4), .Y(n2) );
  BUFX1 U3 ( .A(X1), .Y(n3) );
  INVXL U4 ( .A(n14), .Y(n4) );
  INVXL U5 ( .A(n4), .Y(n5) );
  BUFX1 U6 ( .A(n10), .Y(n6) );
  BUFX1 U7 ( .A(X3), .Y(n7) );
  NOR2XL U8 ( .A(X4), .B(X3), .Y(n9) );
  INVXL U9 ( .A(X2), .Y(n10) );
  NAND2XL U10 ( .A(n2), .B(n7), .Y(n8) );
  OAI21XL U11 ( .A0(n9), .A1(n6), .B0(n8), .Y(Cout) );
  AOI21XL U12 ( .A0(n7), .A1(n2), .B0(n9), .Y(n13) );
  AOI2BB2XL U13 ( .B0(X1), .B1(n10), .A0N(n6), .A1N(n3), .Y(n12) );
  NAND2XL U14 ( .A(n13), .B(n12), .Y(n11) );
  OAI21XL U15 ( .A0(n13), .A1(n12), .B0(n11), .Y(n14) );
  MX2X1 U16 ( .A(n3), .B(n1), .S0(n5), .Y(Carry) );
  AOI2BB2XL U17 ( .B0(n5), .B1(n1), .A0N(Cin), .A1N(n14), .Y(Sum) );
endmodule


module CSA42_mydesign_4 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  BUFX1 U1 ( .A(Cin), .Y(n1) );
  BUFX1 U2 ( .A(X4), .Y(n2) );
  BUFX1 U3 ( .A(X1), .Y(n3) );
  INVXL U4 ( .A(n14), .Y(n4) );
  INVXL U5 ( .A(n4), .Y(n5) );
  INVXL U6 ( .A(X2), .Y(n6) );
  BUFX1 U7 ( .A(X3), .Y(n7) );
  NOR2XL U8 ( .A(X4), .B(X3), .Y(n9) );
  INVXL U9 ( .A(X2), .Y(n10) );
  NAND2XL U10 ( .A(n2), .B(n7), .Y(n8) );
  OAI21XL U11 ( .A0(n9), .A1(n6), .B0(n8), .Y(Cout) );
  AOI21XL U12 ( .A0(n7), .A1(n2), .B0(n9), .Y(n13) );
  AOI2BB2XL U13 ( .B0(n3), .B1(n10), .A0N(n6), .A1N(X1), .Y(n12) );
  NAND2XL U14 ( .A(n13), .B(n12), .Y(n11) );
  OAI21XL U15 ( .A0(n13), .A1(n12), .B0(n11), .Y(n14) );
  MX2X1 U16 ( .A(n3), .B(n1), .S0(n14), .Y(Carry) );
  AOI2BB2XL U17 ( .B0(n5), .B1(n1), .A0N(Cin), .A1N(n5), .Y(Sum) );
endmodule


module CSA42_mydesign_5 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  BUFX1 U1 ( .A(Cin), .Y(n1) );
  BUFX1 U2 ( .A(X4), .Y(n2) );
  INVXL U3 ( .A(n14), .Y(n3) );
  INVXL U4 ( .A(n3), .Y(n4) );
  INVXL U5 ( .A(X2), .Y(n5) );
  BUFX1 U6 ( .A(X1), .Y(n6) );
  BUFX1 U7 ( .A(X3), .Y(n7) );
  NOR2XL U8 ( .A(X4), .B(X3), .Y(n9) );
  INVXL U9 ( .A(X2), .Y(n10) );
  NAND2XL U10 ( .A(n2), .B(n7), .Y(n8) );
  OAI21XL U11 ( .A0(n9), .A1(n5), .B0(n8), .Y(Cout) );
  AOI21XL U12 ( .A0(n7), .A1(n2), .B0(n9), .Y(n13) );
  AOI2BB2XL U13 ( .B0(n6), .B1(n5), .A0N(n10), .A1N(X1), .Y(n12) );
  NAND2XL U14 ( .A(n13), .B(n12), .Y(n11) );
  OAI21XL U15 ( .A0(n13), .A1(n12), .B0(n11), .Y(n14) );
  MX2X1 U16 ( .A(n6), .B(n1), .S0(n14), .Y(Carry) );
  AOI2BB2XL U17 ( .B0(n4), .B1(n1), .A0N(Cin), .A1N(n4), .Y(Sum) );
endmodule


module CSA42_mydesign_6 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  BUFX1 U1 ( .A(Cin), .Y(n1) );
  BUFX1 U2 ( .A(X4), .Y(n2) );
  INVXL U3 ( .A(n14), .Y(n3) );
  INVXL U4 ( .A(n3), .Y(n4) );
  INVXL U5 ( .A(X2), .Y(n5) );
  BUFX1 U6 ( .A(X1), .Y(n6) );
  BUFX1 U7 ( .A(X3), .Y(n7) );
  NOR2XL U8 ( .A(X4), .B(X3), .Y(n9) );
  INVXL U9 ( .A(X2), .Y(n10) );
  NAND2XL U10 ( .A(n2), .B(n7), .Y(n8) );
  OAI21XL U11 ( .A0(n9), .A1(n5), .B0(n8), .Y(Cout) );
  AOI21XL U12 ( .A0(n7), .A1(n2), .B0(n9), .Y(n13) );
  AOI2BB2XL U13 ( .B0(n6), .B1(n5), .A0N(n10), .A1N(X1), .Y(n12) );
  NAND2XL U14 ( .A(n13), .B(n12), .Y(n11) );
  OAI21XL U15 ( .A0(n13), .A1(n12), .B0(n11), .Y(n14) );
  MX2X1 U16 ( .A(n6), .B(n1), .S0(n14), .Y(Carry) );
  AOI2BB2XL U17 ( .B0(n4), .B1(n1), .A0N(Cin), .A1N(n4), .Y(Sum) );
endmodule


module CSA42_mydesign_7 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  BUFX1 U1 ( .A(Cin), .Y(n1) );
  BUFX1 U2 ( .A(X4), .Y(n2) );
  INVXL U3 ( .A(n14), .Y(n3) );
  INVXL U4 ( .A(n3), .Y(n4) );
  INVXL U5 ( .A(X2), .Y(n5) );
  BUFX1 U6 ( .A(X1), .Y(n6) );
  BUFX1 U7 ( .A(X3), .Y(n7) );
  NOR2XL U8 ( .A(X4), .B(X3), .Y(n9) );
  INVXL U9 ( .A(X2), .Y(n10) );
  NAND2XL U10 ( .A(n2), .B(n7), .Y(n8) );
  OAI21XL U11 ( .A0(n9), .A1(n5), .B0(n8), .Y(Cout) );
  AOI21XL U12 ( .A0(n7), .A1(n2), .B0(n9), .Y(n13) );
  AOI2BB2XL U13 ( .B0(n6), .B1(n5), .A0N(n10), .A1N(X1), .Y(n12) );
  NAND2XL U14 ( .A(n13), .B(n12), .Y(n11) );
  OAI21XL U15 ( .A0(n13), .A1(n12), .B0(n11), .Y(n14) );
  MX2X1 U16 ( .A(n6), .B(n1), .S0(n14), .Y(Carry) );
  AOI2BB2XL U17 ( .B0(n4), .B1(n1), .A0N(Cin), .A1N(n4), .Y(Sum) );
endmodule


module CSA42_mydesign_8 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  BUFX1 U1 ( .A(Cin), .Y(n1) );
  BUFX1 U2 ( .A(X4), .Y(n2) );
  INVXL U3 ( .A(n14), .Y(n3) );
  INVXL U4 ( .A(n3), .Y(n4) );
  INVXL U5 ( .A(X2), .Y(n5) );
  BUFX1 U6 ( .A(X1), .Y(n6) );
  BUFX1 U7 ( .A(X3), .Y(n7) );
  NOR2XL U8 ( .A(X4), .B(X3), .Y(n9) );
  INVXL U9 ( .A(X2), .Y(n10) );
  NAND2XL U10 ( .A(n2), .B(n7), .Y(n8) );
  OAI21XL U11 ( .A0(n9), .A1(n5), .B0(n8), .Y(Cout) );
  AOI21XL U12 ( .A0(n7), .A1(n2), .B0(n9), .Y(n13) );
  AOI2BB2XL U13 ( .B0(n6), .B1(n5), .A0N(n10), .A1N(X1), .Y(n12) );
  NAND2XL U14 ( .A(n13), .B(n12), .Y(n11) );
  OAI21XL U15 ( .A0(n13), .A1(n12), .B0(n11), .Y(n14) );
  MX2X1 U16 ( .A(n6), .B(n1), .S0(n14), .Y(Carry) );
  AOI2BB2XL U17 ( .B0(n4), .B1(n1), .A0N(Cin), .A1N(n4), .Y(Sum) );
endmodule


module CSA42_mydesign_9 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  BUFX1 U1 ( .A(Cin), .Y(n1) );
  BUFX1 U2 ( .A(X4), .Y(n2) );
  BUFX1 U3 ( .A(X3), .Y(n3) );
  INVXL U4 ( .A(n14), .Y(n4) );
  INVXL U5 ( .A(n4), .Y(n5) );
  INVXL U6 ( .A(X2), .Y(n6) );
  BUFX1 U7 ( .A(X1), .Y(n7) );
  NOR2XL U8 ( .A(X4), .B(X3), .Y(n9) );
  INVXL U9 ( .A(X2), .Y(n10) );
  NAND2XL U10 ( .A(n2), .B(n3), .Y(n8) );
  OAI21XL U11 ( .A0(n9), .A1(n6), .B0(n8), .Y(Cout) );
  AOI21XL U12 ( .A0(n3), .A1(n2), .B0(n9), .Y(n13) );
  AOI2BB2XL U13 ( .B0(n7), .B1(n6), .A0N(n10), .A1N(X1), .Y(n12) );
  NAND2XL U14 ( .A(n13), .B(n12), .Y(n11) );
  OAI21XL U15 ( .A0(n13), .A1(n12), .B0(n11), .Y(n14) );
  MX2X1 U16 ( .A(n7), .B(n1), .S0(n14), .Y(Carry) );
  AOI2BB2XL U17 ( .B0(n5), .B1(n1), .A0N(Cin), .A1N(n5), .Y(Sum) );
endmodule


module CSA42_mydesign_10 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  BUFX1 U1 ( .A(Cin), .Y(n1) );
  BUFX1 U2 ( .A(X3), .Y(n2) );
  INVXL U3 ( .A(n14), .Y(n3) );
  INVXL U4 ( .A(n3), .Y(n4) );
  INVXL U5 ( .A(X2), .Y(n5) );
  BUFX1 U6 ( .A(X1), .Y(n6) );
  BUFX1 U7 ( .A(X4), .Y(n7) );
  NOR2XL U8 ( .A(X4), .B(X3), .Y(n9) );
  INVXL U9 ( .A(X2), .Y(n10) );
  NAND2XL U10 ( .A(n7), .B(n2), .Y(n8) );
  OAI21XL U11 ( .A0(n9), .A1(n5), .B0(n8), .Y(Cout) );
  AOI21XL U12 ( .A0(n2), .A1(n7), .B0(n9), .Y(n13) );
  AOI2BB2XL U13 ( .B0(n6), .B1(n5), .A0N(n10), .A1N(X1), .Y(n12) );
  NAND2XL U14 ( .A(n13), .B(n12), .Y(n11) );
  OAI21XL U15 ( .A0(n13), .A1(n12), .B0(n11), .Y(n14) );
  MX2X1 U16 ( .A(n6), .B(n1), .S0(n14), .Y(Carry) );
  AOI2BB2XL U17 ( .B0(n4), .B1(n1), .A0N(Cin), .A1N(n4), .Y(Sum) );
endmodule


module CSA42_mydesign_11 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  BUFX1 U1 ( .A(Cin), .Y(n1) );
  BUFX1 U2 ( .A(X4), .Y(n2) );
  BUFX1 U3 ( .A(X3), .Y(n3) );
  INVXL U4 ( .A(n14), .Y(n4) );
  INVXL U5 ( .A(n4), .Y(n5) );
  INVXL U6 ( .A(X2), .Y(n6) );
  BUFX1 U7 ( .A(X1), .Y(n7) );
  NOR2XL U8 ( .A(X4), .B(X3), .Y(n9) );
  INVXL U9 ( .A(X2), .Y(n10) );
  NAND2XL U10 ( .A(n2), .B(n3), .Y(n8) );
  OAI21XL U11 ( .A0(n9), .A1(n6), .B0(n8), .Y(Cout) );
  AOI21XL U12 ( .A0(n3), .A1(n2), .B0(n9), .Y(n13) );
  AOI2BB2XL U13 ( .B0(n7), .B1(n6), .A0N(n10), .A1N(X1), .Y(n12) );
  NAND2XL U14 ( .A(n13), .B(n12), .Y(n11) );
  OAI21XL U15 ( .A0(n13), .A1(n12), .B0(n11), .Y(n14) );
  MX2X1 U16 ( .A(n7), .B(n1), .S0(n14), .Y(Carry) );
  AOI2BB2XL U17 ( .B0(n5), .B1(n1), .A0N(Cin), .A1N(n5), .Y(Sum) );
endmodule


module CSA42_mydesign_12 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  BUFX1 U1 ( .A(Cin), .Y(n1) );
  BUFX1 U2 ( .A(X3), .Y(n2) );
  INVXL U3 ( .A(n14), .Y(n3) );
  INVXL U4 ( .A(n3), .Y(n4) );
  INVXL U5 ( .A(X2), .Y(n5) );
  BUFX1 U6 ( .A(X1), .Y(n6) );
  BUFX1 U7 ( .A(X4), .Y(n7) );
  NOR2XL U8 ( .A(X4), .B(X3), .Y(n9) );
  INVXL U9 ( .A(X2), .Y(n10) );
  NAND2XL U10 ( .A(n7), .B(n2), .Y(n8) );
  OAI21XL U11 ( .A0(n9), .A1(n5), .B0(n8), .Y(Cout) );
  AOI21XL U12 ( .A0(n2), .A1(n7), .B0(n9), .Y(n13) );
  AOI2BB2XL U13 ( .B0(n6), .B1(n5), .A0N(n10), .A1N(X1), .Y(n12) );
  NAND2XL U14 ( .A(n13), .B(n12), .Y(n11) );
  OAI21XL U15 ( .A0(n13), .A1(n12), .B0(n11), .Y(n14) );
  MX2X1 U16 ( .A(n6), .B(n1), .S0(n14), .Y(Carry) );
  AOI2BB2XL U17 ( .B0(n4), .B1(n1), .A0N(Cin), .A1N(n4), .Y(Sum) );
endmodule


module CSA42_mydesign_13 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  BUFX1 U1 ( .A(Cin), .Y(n1) );
  BUFX1 U2 ( .A(X3), .Y(n2) );
  INVXL U3 ( .A(n14), .Y(n3) );
  INVXL U4 ( .A(n3), .Y(n4) );
  INVXL U5 ( .A(X2), .Y(n5) );
  BUFX1 U6 ( .A(X1), .Y(n6) );
  BUFX1 U7 ( .A(X4), .Y(n7) );
  NOR2XL U8 ( .A(X4), .B(X3), .Y(n9) );
  INVXL U9 ( .A(X2), .Y(n10) );
  NAND2XL U10 ( .A(n7), .B(n2), .Y(n8) );
  OAI21XL U11 ( .A0(n9), .A1(n5), .B0(n8), .Y(Cout) );
  AOI21XL U12 ( .A0(n2), .A1(n7), .B0(n9), .Y(n13) );
  AOI2BB2XL U13 ( .B0(n6), .B1(n5), .A0N(n10), .A1N(X1), .Y(n12) );
  NAND2XL U14 ( .A(n13), .B(n12), .Y(n11) );
  OAI21XL U15 ( .A0(n13), .A1(n12), .B0(n11), .Y(n14) );
  MX2X1 U16 ( .A(n6), .B(n1), .S0(n14), .Y(Carry) );
  AOI2BB2XL U17 ( .B0(n4), .B1(n1), .A0N(Cin), .A1N(n4), .Y(Sum) );
endmodule


module CSA42_mydesign_14 ( X1, X2, X3, X4, Cout, Sum, Carry );
  input X1, X2, X3, X4;
  output Cout, Sum, Carry;
  wire   n1;

  ADDFXL U1 ( .A(X2), .B(X3), .CI(X4), .CO(Cout), .S(n1) );
  AND2XL U2 ( .A(n1), .B(X1), .Y(Carry) );
  AOI2BB1XL U3 ( .A0N(n1), .A1N(X1), .B0(Carry), .Y(Sum) );
endmodule


module CSA32_mydesign_0 ( X1, X2, X3, Carry, Sum );
  input X1, X2, X3;
  output Carry, Sum;


  ADDFXL U1 ( .A(X2), .B(X1), .CI(X3), .CO(Carry), .S(Sum) );
endmodule


module CSA32_mydesign_1 ( X1, X2, X3, Carry, Sum );
  input X1, X2, X3;
  output Carry, Sum;


  ADDFXL U1 ( .A(X2), .B(X1), .CI(X3), .CO(Carry), .S(Sum) );
endmodule


module HalfAdder_mydesign_0 ( X1, X2, Sum, Carry );
  input X1, X2;
  output Sum, Carry;


  AND2XL U1 ( .A(X2), .B(X1), .Y(Carry) );
  AOI2BB1XL U2 ( .A0N(X2), .A1N(X1), .B0(Carry), .Y(Sum) );
endmodule


module HalfAdder_mydesign_1 ( X1, X2, Sum, Carry );
  input X1, X2;
  output Sum, Carry;


  AND2XL U1 ( .A(X2), .B(X1), .Y(Carry) );
  AOI2BB1XL U2 ( .A0N(X2), .A1N(X1), .B0(Carry), .Y(Sum) );
endmodule


module WallaceTree_mydesign_0 ( in_2, out_0, out_1, Cout, in_0_15_, in_0_14_, 
        in_0_13_, in_0_12_, in_0_11_, in_0_10_, in_0_9_, in_0_8_, in_0_7_, 
        in_0_6_, in_0_5_, in_0_4_, in_0_3_, in_0_2_, in_0_1_, in_0_0_, 
        in_1_16_, in_1_15_, in_1_14_, in_1_13_, in_1_12_, in_1_11_, in_1_10_, 
        in_1_9_, in_1_8_, in_1_7_, in_1_6_, in_1_5_, in_1_4_, in_1_3_, in_1_2_, 
        in_1_1_, in_1_0_, in_3_18_, in_3_17_, in_3_16_, in_3_15_, in_3_14_, 
        in_3_13_, in_3_12_, in_3_11_, in_3_10_, in_3_9_, in_3_8_, in_3_7_, 
        in_3_6_, in_3_5_, in_3_4_, in_3_3_, in_3_2_ );
  input [18:0] in_2;
  output [18:0] out_0;
  output [18:0] out_1;
  input in_0_15_, in_0_14_, in_0_13_, in_0_12_, in_0_11_, in_0_10_, in_0_9_,
         in_0_8_, in_0_7_, in_0_6_, in_0_5_, in_0_4_, in_0_3_, in_0_2_,
         in_0_1_, in_0_0_, in_1_16_, in_1_15_, in_1_14_, in_1_13_, in_1_12_,
         in_1_11_, in_1_10_, in_1_9_, in_1_8_, in_1_7_, in_1_6_, in_1_5_,
         in_1_4_, in_1_3_, in_1_2_, in_1_1_, in_1_0_, in_3_18_, in_3_17_,
         in_3_16_, in_3_15_, in_3_14_, in_3_13_, in_3_12_, in_3_11_, in_3_10_,
         in_3_9_, in_3_8_, in_3_7_, in_3_6_, in_3_5_, in_3_4_, in_3_3_,
         in_3_2_;
  output Cout;
  wire   n1;
  wire   [15:1] Carry_tmp;

  HalfAdder_mydesign_1 u_HalfAdder_0 ( .X1(in_0_0_), .X2(in_1_0_), .Sum(
        out_0[0]), .Carry(out_1[1]) );
  CSA32_mydesign_1 u_CSA32_0 ( .X1(in_0_1_), .X2(in_1_1_), .X3(in_2[1]), 
        .Carry(out_1[2]), .Sum(out_0[1]) );
  CSA42_mydesign_14 gen_CSA42_0__u_CSA42 ( .X1(in_0_2_), .X2(in_1_2_), .X3(
        in_2[2]), .X4(in_3_2_), .Cout(Carry_tmp[1]), .Sum(out_0[2]), .Carry(
        out_1[3]) );
  CSA42_mydesign_13 gen_CSA42_1__u_CSA42 ( .X1(in_0_3_), .X2(in_1_3_), .X3(
        in_2[3]), .X4(in_3_3_), .Cin(Carry_tmp[1]), .Cout(Carry_tmp[2]), .Sum(
        out_0[3]), .Carry(out_1[4]) );
  CSA42_mydesign_12 gen_CSA42_2__u_CSA42 ( .X1(in_0_4_), .X2(in_1_4_), .X3(
        in_2[4]), .X4(n1), .Cin(Carry_tmp[2]), .Cout(Carry_tmp[3]), .Sum(
        out_0[4]), .Carry(out_1[5]) );
  CSA42_mydesign_11 gen_CSA42_3__u_CSA42 ( .X1(in_0_5_), .X2(in_1_5_), .X3(
        in_2[5]), .X4(in_3_5_), .Cin(Carry_tmp[3]), .Cout(Carry_tmp[4]), .Sum(
        out_0[5]), .Carry(out_1[6]) );
  CSA42_mydesign_10 gen_CSA42_4__u_CSA42 ( .X1(in_0_6_), .X2(in_1_6_), .X3(
        in_2[6]), .X4(in_3_6_), .Cin(Carry_tmp[4]), .Cout(Carry_tmp[5]), .Sum(
        out_0[6]), .Carry(out_1[7]) );
  CSA42_mydesign_9 gen_CSA42_5__u_CSA42 ( .X1(in_0_7_), .X2(in_1_7_), .X3(
        in_2[7]), .X4(in_3_7_), .Cin(Carry_tmp[5]), .Cout(Carry_tmp[6]), .Sum(
        out_0[7]), .Carry(out_1[8]) );
  CSA42_mydesign_8 gen_CSA42_6__u_CSA42 ( .X1(in_0_8_), .X2(in_1_8_), .X3(
        in_2[8]), .X4(in_3_8_), .Cin(Carry_tmp[6]), .Cout(Carry_tmp[7]), .Sum(
        out_0[8]), .Carry(out_1[9]) );
  CSA42_mydesign_7 gen_CSA42_7__u_CSA42 ( .X1(in_0_9_), .X2(in_1_9_), .X3(
        in_2[9]), .X4(in_3_9_), .Cin(Carry_tmp[7]), .Cout(Carry_tmp[8]), .Sum(
        out_0[9]), .Carry(out_1[10]) );
  CSA42_mydesign_6 gen_CSA42_8__u_CSA42 ( .X1(in_0_10_), .X2(in_1_10_), .X3(
        in_2[10]), .X4(in_3_10_), .Cin(Carry_tmp[8]), .Cout(Carry_tmp[9]), 
        .Sum(out_0[10]), .Carry(out_1[11]) );
  CSA42_mydesign_5 gen_CSA42_9__u_CSA42 ( .X1(in_0_11_), .X2(in_1_11_), .X3(
        in_2[11]), .X4(in_3_11_), .Cin(Carry_tmp[9]), .Cout(Carry_tmp[10]), 
        .Sum(out_0[11]), .Carry(out_1[12]) );
  CSA42_mydesign_4 gen_CSA42_10__u_CSA42 ( .X1(in_0_12_), .X2(in_1_12_), .X3(
        in_2[12]), .X4(in_3_12_), .Cin(Carry_tmp[10]), .Cout(Carry_tmp[11]), 
        .Sum(out_0[12]), .Carry(out_1[13]) );
  CSA42_mydesign_3 gen_CSA42_11__u_CSA42 ( .X1(in_0_13_), .X2(in_1_13_), .X3(
        in_2[13]), .X4(in_3_13_), .Cin(Carry_tmp[11]), .Cout(Carry_tmp[12]), 
        .Sum(out_0[13]), .Carry(out_1[14]) );
  CSA42_mydesign_2 gen_CSA42_12__u_CSA42 ( .X1(in_0_14_), .X2(in_1_14_), .X3(
        in_2[14]), .X4(in_3_14_), .Cin(Carry_tmp[12]), .Cout(Carry_tmp[13]), 
        .Sum(out_0[14]), .Carry(out_1[15]) );
  CSA42_mydesign_1 gen_CSA42_13__u_CSA42 ( .X1(in_0_15_), .X2(in_1_15_), .X3(
        in_2[15]), .X4(in_3_15_), .Cin(Carry_tmp[13]), .Cout(Carry_tmp[14]), 
        .Sum(out_0[15]), .Carry(out_1[16]) );
  CSA42_mydesign_0 gen_CSA42_14__u_CSA42 ( .X2(in_1_16_), .X3(in_2[16]), .X4(
        in_3_16_), .Cin(Carry_tmp[14]), .Cout(Carry_tmp[15]), .Sum(out_0[16]), 
        .Carry(out_1[17]) );
  CSA32_mydesign_0 u_CSA32_1 ( .X1(Carry_tmp[15]), .X2(in_2[17]), .X3(in_3_17_), .Carry(out_1[18]), .Sum(out_0[17]) );
  HalfAdder_mydesign_0 u_HalfAdder_1 ( .X1(in_2[18]), .X2(in_3_18_), .Sum(
        out_0[18]), .Carry(Cout) );
  BUFX1 U3 ( .A(in_3_4_), .Y(n1) );
  BUFX1 U4 ( .A(in_2[0]), .Y(out_1[0]) );
endmodule


module CSA42_mydesign_15 ( X2, X3, X4, Cin, Cout, Sum, Carry );
  input X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n4, n1, n3;

  INVXL U1 ( .A(n4), .Y(n1) );
  INVXL U2 ( .A(n1), .Y(Carry) );
  ADDFXL U3 ( .A(X2), .B(X3), .CI(X4), .CO(Cout), .S(n3) );
  AND2XL U4 ( .A(n3), .B(Cin), .Y(n4) );
  AOI2BB1XL U5 ( .A0N(n3), .A1N(Cin), .B0(n4), .Y(Sum) );
endmodule


module CSA42_mydesign_16 ( X2, X3, X4, Cin, Cout, Sum, Carry );
  input X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n3, n2;

  BUFX1 U1 ( .A(n3), .Y(Carry) );
  ADDFXL U2 ( .A(X2), .B(X3), .CI(X4), .CO(Cout), .S(n2) );
  AND2XL U3 ( .A(n2), .B(Cin), .Y(n3) );
  AOI2BB1XL U4 ( .A0N(n2), .A1N(Cin), .B0(n3), .Y(Sum) );
endmodule


module CSA42_mydesign_17 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  BUFX1 U1 ( .A(Cin), .Y(n1) );
  BUFX1 U2 ( .A(X3), .Y(n2) );
  BUFX1 U3 ( .A(X1), .Y(n3) );
  INVXL U4 ( .A(n14), .Y(n4) );
  INVXL U5 ( .A(n4), .Y(n5) );
  INVXL U6 ( .A(X2), .Y(n6) );
  BUFX1 U7 ( .A(X4), .Y(n7) );
  NOR2XL U8 ( .A(X4), .B(X3), .Y(n9) );
  INVXL U9 ( .A(X2), .Y(n10) );
  NAND2XL U10 ( .A(n7), .B(n2), .Y(n8) );
  OAI21XL U11 ( .A0(n9), .A1(n6), .B0(n8), .Y(Cout) );
  AOI21XL U12 ( .A0(n2), .A1(n7), .B0(n9), .Y(n13) );
  AOI2BB2XL U13 ( .B0(X1), .B1(n6), .A0N(n10), .A1N(n3), .Y(n12) );
  NAND2XL U14 ( .A(n13), .B(n12), .Y(n11) );
  OAI21XL U15 ( .A0(n13), .A1(n12), .B0(n11), .Y(n14) );
  MX2X1 U16 ( .A(n3), .B(n1), .S0(n5), .Y(Carry) );
  AOI2BB2XL U17 ( .B0(n14), .B1(Cin), .A0N(n1), .A1N(n5), .Y(Sum) );
endmodule


module CSA42_mydesign_18 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  BUFX1 U1 ( .A(Cin), .Y(n1) );
  BUFX1 U2 ( .A(X3), .Y(n2) );
  INVXL U3 ( .A(n14), .Y(n3) );
  INVXL U4 ( .A(n3), .Y(n4) );
  INVXL U5 ( .A(X2), .Y(n5) );
  BUFX1 U6 ( .A(X4), .Y(n6) );
  BUFX1 U7 ( .A(X1), .Y(n7) );
  NOR2XL U8 ( .A(X4), .B(X3), .Y(n9) );
  INVXL U9 ( .A(X2), .Y(n10) );
  NAND2XL U10 ( .A(n6), .B(n2), .Y(n8) );
  OAI21XL U11 ( .A0(n9), .A1(n5), .B0(n8), .Y(Cout) );
  AOI21XL U12 ( .A0(n2), .A1(n6), .B0(n9), .Y(n13) );
  AOI2BB2XL U13 ( .B0(n7), .B1(n5), .A0N(n10), .A1N(X1), .Y(n12) );
  NAND2XL U14 ( .A(n13), .B(n12), .Y(n11) );
  OAI21XL U15 ( .A0(n13), .A1(n12), .B0(n11), .Y(n14) );
  MX2X1 U16 ( .A(n7), .B(Cin), .S0(n4), .Y(Carry) );
  AOI2BB2XL U17 ( .B0(n4), .B1(n1), .A0N(n1), .A1N(n14), .Y(Sum) );
endmodule


module CSA42_mydesign_19 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  BUFX1 U1 ( .A(Cin), .Y(n1) );
  BUFX1 U2 ( .A(X3), .Y(n2) );
  INVXL U3 ( .A(n14), .Y(n3) );
  INVXL U4 ( .A(n3), .Y(n4) );
  INVXL U5 ( .A(X2), .Y(n5) );
  BUFX1 U6 ( .A(X4), .Y(n6) );
  BUFX1 U7 ( .A(X1), .Y(n7) );
  NOR2XL U8 ( .A(X4), .B(X3), .Y(n9) );
  INVXL U9 ( .A(X2), .Y(n10) );
  NAND2XL U10 ( .A(n6), .B(n2), .Y(n8) );
  OAI21XL U11 ( .A0(n9), .A1(n5), .B0(n8), .Y(Cout) );
  AOI21XL U12 ( .A0(n2), .A1(n6), .B0(n9), .Y(n13) );
  AOI2BB2XL U13 ( .B0(n7), .B1(n10), .A0N(n5), .A1N(X1), .Y(n12) );
  NAND2XL U14 ( .A(n13), .B(n12), .Y(n11) );
  OAI21XL U15 ( .A0(n13), .A1(n12), .B0(n11), .Y(n14) );
  MX2X1 U16 ( .A(n7), .B(n1), .S0(n4), .Y(Carry) );
  AOI2BB2XL U17 ( .B0(n4), .B1(Cin), .A0N(n1), .A1N(n14), .Y(Sum) );
endmodule


module CSA42_mydesign_20 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  BUFX1 U1 ( .A(Cin), .Y(n1) );
  BUFX1 U2 ( .A(X3), .Y(n2) );
  INVXL U3 ( .A(n14), .Y(n3) );
  INVXL U4 ( .A(n3), .Y(n4) );
  INVXL U5 ( .A(X2), .Y(n5) );
  BUFX1 U6 ( .A(X4), .Y(n6) );
  BUFX1 U7 ( .A(X1), .Y(n7) );
  NOR2XL U8 ( .A(X4), .B(X3), .Y(n9) );
  INVXL U9 ( .A(X2), .Y(n10) );
  NAND2XL U10 ( .A(n6), .B(n2), .Y(n8) );
  OAI21XL U11 ( .A0(n9), .A1(n5), .B0(n8), .Y(Cout) );
  AOI21XL U12 ( .A0(n2), .A1(n6), .B0(n9), .Y(n13) );
  AOI2BB2XL U13 ( .B0(n7), .B1(n10), .A0N(n5), .A1N(X1), .Y(n12) );
  NAND2XL U14 ( .A(n13), .B(n12), .Y(n11) );
  OAI21XL U15 ( .A0(n13), .A1(n12), .B0(n11), .Y(n14) );
  MX2X1 U16 ( .A(n7), .B(n1), .S0(n4), .Y(Carry) );
  AOI2BB2XL U17 ( .B0(n14), .B1(n1), .A0N(Cin), .A1N(n4), .Y(Sum) );
endmodule


module CSA42_mydesign_21 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  BUFX1 U1 ( .A(Cin), .Y(n1) );
  BUFX1 U2 ( .A(X3), .Y(n2) );
  INVXL U3 ( .A(n14), .Y(n3) );
  INVXL U4 ( .A(n3), .Y(n4) );
  INVXL U5 ( .A(X2), .Y(n5) );
  BUFX1 U6 ( .A(X4), .Y(n6) );
  BUFX1 U7 ( .A(X1), .Y(n7) );
  NOR2XL U8 ( .A(X4), .B(X3), .Y(n9) );
  INVXL U9 ( .A(X2), .Y(n10) );
  NAND2XL U10 ( .A(n6), .B(n2), .Y(n8) );
  OAI21XL U11 ( .A0(n9), .A1(n5), .B0(n8), .Y(Cout) );
  AOI21XL U12 ( .A0(n2), .A1(n6), .B0(n9), .Y(n13) );
  AOI2BB2XL U13 ( .B0(n7), .B1(n10), .A0N(n5), .A1N(X1), .Y(n12) );
  NAND2XL U14 ( .A(n13), .B(n12), .Y(n11) );
  OAI21XL U15 ( .A0(n13), .A1(n12), .B0(n11), .Y(n14) );
  MX2X1 U16 ( .A(n7), .B(n1), .S0(n4), .Y(Carry) );
  AOI2BB2XL U17 ( .B0(n14), .B1(n1), .A0N(Cin), .A1N(n4), .Y(Sum) );
endmodule


module CSA42_mydesign_22 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  BUFX1 U1 ( .A(Cin), .Y(n1) );
  BUFX1 U2 ( .A(X3), .Y(n2) );
  INVXL U3 ( .A(n14), .Y(n3) );
  INVXL U4 ( .A(n3), .Y(n4) );
  INVXL U5 ( .A(X2), .Y(n5) );
  BUFX1 U6 ( .A(X4), .Y(n6) );
  BUFX1 U7 ( .A(X1), .Y(n7) );
  NOR2XL U8 ( .A(X4), .B(X3), .Y(n9) );
  INVXL U9 ( .A(X2), .Y(n10) );
  NAND2XL U10 ( .A(n6), .B(n2), .Y(n8) );
  OAI21XL U11 ( .A0(n9), .A1(n5), .B0(n8), .Y(Cout) );
  AOI21XL U12 ( .A0(n2), .A1(n6), .B0(n9), .Y(n13) );
  AOI2BB2XL U13 ( .B0(n7), .B1(n10), .A0N(n5), .A1N(X1), .Y(n12) );
  NAND2XL U14 ( .A(n13), .B(n12), .Y(n11) );
  OAI21XL U15 ( .A0(n13), .A1(n12), .B0(n11), .Y(n14) );
  MX2X1 U16 ( .A(n7), .B(n1), .S0(n4), .Y(Carry) );
  AOI2BB2XL U17 ( .B0(n14), .B1(n1), .A0N(Cin), .A1N(n4), .Y(Sum) );
endmodule


module CSA42_mydesign_23 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  BUFX1 U1 ( .A(Cin), .Y(n1) );
  BUFX1 U2 ( .A(X3), .Y(n2) );
  INVXL U3 ( .A(n14), .Y(n3) );
  INVXL U4 ( .A(n3), .Y(n4) );
  INVXL U5 ( .A(X2), .Y(n5) );
  BUFX1 U6 ( .A(X4), .Y(n6) );
  BUFX1 U7 ( .A(X1), .Y(n7) );
  NOR2XL U8 ( .A(X4), .B(X3), .Y(n9) );
  INVXL U9 ( .A(X2), .Y(n10) );
  NAND2XL U10 ( .A(n6), .B(n2), .Y(n8) );
  OAI21XL U11 ( .A0(n9), .A1(n5), .B0(n8), .Y(Cout) );
  AOI21XL U12 ( .A0(n2), .A1(n6), .B0(n9), .Y(n13) );
  AOI2BB2XL U13 ( .B0(n7), .B1(n10), .A0N(n5), .A1N(X1), .Y(n12) );
  NAND2XL U14 ( .A(n13), .B(n12), .Y(n11) );
  OAI21XL U15 ( .A0(n13), .A1(n12), .B0(n11), .Y(n14) );
  MX2X1 U16 ( .A(n7), .B(n1), .S0(n4), .Y(Carry) );
  AOI2BB2XL U17 ( .B0(n14), .B1(n1), .A0N(Cin), .A1N(n4), .Y(Sum) );
endmodule


module CSA42_mydesign_24 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  BUFX1 U1 ( .A(Cin), .Y(n1) );
  BUFX1 U2 ( .A(X3), .Y(n2) );
  INVXL U3 ( .A(n14), .Y(n3) );
  INVXL U4 ( .A(n3), .Y(n4) );
  INVXL U5 ( .A(X2), .Y(n5) );
  BUFX1 U6 ( .A(X4), .Y(n6) );
  BUFX1 U7 ( .A(X1), .Y(n7) );
  NOR2XL U8 ( .A(X4), .B(X3), .Y(n9) );
  INVXL U9 ( .A(X2), .Y(n10) );
  NAND2XL U10 ( .A(n6), .B(n2), .Y(n8) );
  OAI21XL U11 ( .A0(n9), .A1(n5), .B0(n8), .Y(Cout) );
  AOI21XL U12 ( .A0(n2), .A1(n6), .B0(n9), .Y(n13) );
  AOI2BB2XL U13 ( .B0(n7), .B1(n10), .A0N(n5), .A1N(X1), .Y(n12) );
  NAND2XL U14 ( .A(n13), .B(n12), .Y(n11) );
  OAI21XL U15 ( .A0(n13), .A1(n12), .B0(n11), .Y(n14) );
  MX2X1 U16 ( .A(n7), .B(n1), .S0(n4), .Y(Carry) );
  AOI2BB2XL U17 ( .B0(n14), .B1(n1), .A0N(Cin), .A1N(n4), .Y(Sum) );
endmodule


module CSA42_mydesign_25 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  BUFX1 U1 ( .A(Cin), .Y(n1) );
  BUFX1 U2 ( .A(X3), .Y(n2) );
  INVXL U3 ( .A(n14), .Y(n3) );
  INVXL U4 ( .A(n3), .Y(n4) );
  INVXL U5 ( .A(X2), .Y(n5) );
  BUFX1 U6 ( .A(X1), .Y(n6) );
  BUFX1 U7 ( .A(X4), .Y(n7) );
  NOR2XL U8 ( .A(X4), .B(X3), .Y(n9) );
  INVXL U9 ( .A(X2), .Y(n10) );
  NAND2XL U10 ( .A(n7), .B(n2), .Y(n8) );
  OAI21XL U11 ( .A0(n9), .A1(n5), .B0(n8), .Y(Cout) );
  AOI21XL U12 ( .A0(n2), .A1(n7), .B0(n9), .Y(n13) );
  AOI2BB2XL U13 ( .B0(n6), .B1(n10), .A0N(n5), .A1N(X1), .Y(n12) );
  NAND2XL U14 ( .A(n13), .B(n12), .Y(n11) );
  OAI21XL U15 ( .A0(n13), .A1(n12), .B0(n11), .Y(n14) );
  MX2X1 U16 ( .A(n6), .B(n1), .S0(n4), .Y(Carry) );
  AOI2BB2XL U17 ( .B0(n14), .B1(n1), .A0N(Cin), .A1N(n4), .Y(Sum) );
endmodule


module CSA42_mydesign_26 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  BUFX1 U1 ( .A(Cin), .Y(n1) );
  BUFX1 U2 ( .A(X3), .Y(n2) );
  INVXL U3 ( .A(n14), .Y(n3) );
  INVXL U4 ( .A(n3), .Y(n4) );
  INVXL U5 ( .A(X2), .Y(n5) );
  BUFX1 U6 ( .A(X4), .Y(n6) );
  BUFX1 U7 ( .A(X1), .Y(n7) );
  NOR2XL U8 ( .A(X4), .B(X3), .Y(n9) );
  INVXL U9 ( .A(X2), .Y(n10) );
  NAND2XL U10 ( .A(n6), .B(n2), .Y(n8) );
  OAI21XL U11 ( .A0(n9), .A1(n5), .B0(n8), .Y(Cout) );
  AOI21XL U12 ( .A0(n2), .A1(n6), .B0(n9), .Y(n13) );
  AOI2BB2XL U13 ( .B0(n7), .B1(n10), .A0N(n5), .A1N(X1), .Y(n12) );
  NAND2XL U14 ( .A(n13), .B(n12), .Y(n11) );
  OAI21XL U15 ( .A0(n13), .A1(n12), .B0(n11), .Y(n14) );
  MX2X1 U16 ( .A(n7), .B(n1), .S0(n4), .Y(Carry) );
  AOI2BB2XL U17 ( .B0(n14), .B1(n1), .A0N(Cin), .A1N(n4), .Y(Sum) );
endmodule


module CSA42_mydesign_27 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  BUFX1 U1 ( .A(Cin), .Y(n1) );
  BUFX1 U2 ( .A(X3), .Y(n2) );
  INVXL U3 ( .A(n14), .Y(n3) );
  INVXL U4 ( .A(n3), .Y(n4) );
  INVXL U5 ( .A(X2), .Y(n5) );
  BUFX1 U6 ( .A(X4), .Y(n6) );
  BUFX1 U7 ( .A(X1), .Y(n7) );
  NOR2XL U8 ( .A(X4), .B(X3), .Y(n9) );
  INVXL U9 ( .A(X2), .Y(n10) );
  NAND2XL U10 ( .A(n6), .B(n2), .Y(n8) );
  OAI21XL U11 ( .A0(n9), .A1(n5), .B0(n8), .Y(Cout) );
  AOI21XL U12 ( .A0(n2), .A1(n6), .B0(n9), .Y(n13) );
  AOI2BB2XL U13 ( .B0(n7), .B1(n10), .A0N(n5), .A1N(X1), .Y(n12) );
  NAND2XL U14 ( .A(n13), .B(n12), .Y(n11) );
  OAI21XL U15 ( .A0(n13), .A1(n12), .B0(n11), .Y(n14) );
  MX2X1 U16 ( .A(n7), .B(n1), .S0(n4), .Y(Carry) );
  AOI2BB2XL U17 ( .B0(n14), .B1(n1), .A0N(Cin), .A1N(n4), .Y(Sum) );
endmodule


module CSA42_mydesign_28 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  BUFX1 U1 ( .A(Cin), .Y(n1) );
  BUFX1 U2 ( .A(X3), .Y(n2) );
  INVXL U3 ( .A(n14), .Y(n3) );
  INVXL U4 ( .A(n3), .Y(n4) );
  INVXL U5 ( .A(X2), .Y(n5) );
  BUFX1 U6 ( .A(X4), .Y(n6) );
  BUFX1 U7 ( .A(X1), .Y(n7) );
  NOR2XL U8 ( .A(X4), .B(X3), .Y(n9) );
  INVXL U9 ( .A(X2), .Y(n10) );
  NAND2XL U10 ( .A(n6), .B(n2), .Y(n8) );
  OAI21XL U11 ( .A0(n9), .A1(n5), .B0(n8), .Y(Cout) );
  AOI21XL U12 ( .A0(n2), .A1(n6), .B0(n9), .Y(n13) );
  AOI2BB2XL U13 ( .B0(n7), .B1(n10), .A0N(n5), .A1N(X1), .Y(n12) );
  NAND2XL U14 ( .A(n13), .B(n12), .Y(n11) );
  OAI21XL U15 ( .A0(n13), .A1(n12), .B0(n11), .Y(n14) );
  MX2X1 U16 ( .A(n7), .B(n1), .S0(n4), .Y(Carry) );
  AOI2BB2XL U17 ( .B0(n4), .B1(Cin), .A0N(n1), .A1N(n14), .Y(Sum) );
endmodule


module CSA42_mydesign_29 ( X1, X2, X3, X4, Cout, Sum, Carry );
  input X1, X2, X3, X4;
  output Cout, Sum, Carry;
  wire   n3, n2;

  BUFX1 U1 ( .A(n3), .Y(Carry) );
  ADDFXL U2 ( .A(X2), .B(X3), .CI(X4), .CO(Cout), .S(n2) );
  AND2XL U3 ( .A(n2), .B(X1), .Y(n3) );
  AOI2BB1XL U4 ( .A0N(n2), .A1N(X1), .B0(n3), .Y(Sum) );
endmodule


module CSA32_mydesign_2 ( X1, X2, X3, Carry, Sum );
  input X1, X2, X3;
  output Carry, Sum;


  ADDFXL U1 ( .A(X2), .B(X1), .CI(X3), .CO(Carry), .S(Sum) );
endmodule


module CSA32_mydesign_3 ( X1, X2, X3, Carry, Sum );
  input X1, X2, X3;
  output Carry, Sum;


  ADDFXL U1 ( .A(X2), .B(X1), .CI(X3), .CO(Carry), .S(Sum) );
endmodule


module HalfAdder_mydesign_2 ( X1, X2, Sum, Carry );
  input X1, X2;
  output Sum, Carry;
  wire   n3, n1;

  INVXL U1 ( .A(n3), .Y(n1) );
  INVXL U2 ( .A(n1), .Y(Carry) );
  AND2XL U3 ( .A(X2), .B(X1), .Y(n3) );
  AOI2BB1XL U4 ( .A0N(X2), .A1N(X1), .B0(n3), .Y(Sum) );
endmodule


module HalfAdder_mydesign_3 ( X1, X2, Sum, Carry );
  input X1, X2;
  output Sum, Carry;
  wire   n2;

  BUFX1 U1 ( .A(n2), .Y(Carry) );
  AND2XL U2 ( .A(X2), .B(X1), .Y(n2) );
  AOI2BB1XL U3 ( .A0N(X2), .A1N(X1), .B0(n2), .Y(Sum) );
endmodule


module WallaceTree_mydesign_1 ( in_2, out_0, out_1, Cout, in_0_14_, in_0_13_, 
        in_0_12_, in_0_11_, in_0_10_, in_0_9_, in_0_8_, in_0_7_, in_0_6_, 
        in_0_5_, in_0_4_, in_0_3_, in_0_2_, in_0_1_, in_0_0_, in_1_16_, 
        in_1_15_, in_1_14_, in_1_13_, in_1_12_, in_1_11_, in_1_10_, in_1_9_, 
        in_1_8_, in_1_7_, in_1_6_, in_1_5_, in_1_4_, in_1_3_, in_1_2_, in_1_1_, 
        in_1_0_, in_3_18_, in_3_17_, in_3_16_, in_3_15_, in_3_14_, in_3_13_, 
        in_3_12_, in_3_11_, in_3_10_, in_3_9_, in_3_8_, in_3_7_, in_3_6_, 
        in_3_5_, in_3_4_, in_3_3_, in_3_2_ );
  input [18:0] in_2;
  output [18:0] out_0;
  output [18:0] out_1;
  input in_0_14_, in_0_13_, in_0_12_, in_0_11_, in_0_10_, in_0_9_, in_0_8_,
         in_0_7_, in_0_6_, in_0_5_, in_0_4_, in_0_3_, in_0_2_, in_0_1_,
         in_0_0_, in_1_16_, in_1_15_, in_1_14_, in_1_13_, in_1_12_, in_1_11_,
         in_1_10_, in_1_9_, in_1_8_, in_1_7_, in_1_6_, in_1_5_, in_1_4_,
         in_1_3_, in_1_2_, in_1_1_, in_1_0_, in_3_18_, in_3_17_, in_3_16_,
         in_3_15_, in_3_14_, in_3_13_, in_3_12_, in_3_11_, in_3_10_, in_3_9_,
         in_3_8_, in_3_7_, in_3_6_, in_3_5_, in_3_4_, in_3_3_, in_3_2_;
  output Cout;

  wire   [15:1] Carry_tmp;

  HalfAdder_mydesign_3 u_HalfAdder_0 ( .X1(in_0_0_), .X2(in_1_0_), .Sum(
        out_0[0]), .Carry(out_1[1]) );
  CSA32_mydesign_3 u_CSA32_0 ( .X1(in_0_1_), .X2(in_1_1_), .X3(in_2[1]), 
        .Carry(out_1[2]), .Sum(out_0[1]) );
  CSA42_mydesign_29 gen_CSA42_0__u_CSA42 ( .X1(in_0_2_), .X2(in_1_2_), .X3(
        in_2[2]), .X4(in_3_2_), .Cout(Carry_tmp[1]), .Sum(out_0[2]), .Carry(
        out_1[3]) );
  CSA42_mydesign_28 gen_CSA42_1__u_CSA42 ( .X1(in_0_3_), .X2(in_1_3_), .X3(
        in_2[3]), .X4(in_3_3_), .Cin(Carry_tmp[1]), .Cout(Carry_tmp[2]), .Sum(
        out_0[3]), .Carry(out_1[4]) );
  CSA42_mydesign_27 gen_CSA42_2__u_CSA42 ( .X1(in_0_4_), .X2(in_1_4_), .X3(
        in_2[4]), .X4(in_3_4_), .Cin(Carry_tmp[2]), .Cout(Carry_tmp[3]), .Sum(
        out_0[4]), .Carry(out_1[5]) );
  CSA42_mydesign_26 gen_CSA42_3__u_CSA42 ( .X1(in_0_5_), .X2(in_1_5_), .X3(
        in_2[5]), .X4(in_3_5_), .Cin(Carry_tmp[3]), .Cout(Carry_tmp[4]), .Sum(
        out_0[5]), .Carry(out_1[6]) );
  CSA42_mydesign_25 gen_CSA42_4__u_CSA42 ( .X1(in_0_6_), .X2(in_1_6_), .X3(
        in_2[6]), .X4(in_3_6_), .Cin(Carry_tmp[4]), .Cout(Carry_tmp[5]), .Sum(
        out_0[6]), .Carry(out_1[7]) );
  CSA42_mydesign_24 gen_CSA42_5__u_CSA42 ( .X1(in_0_7_), .X2(in_1_7_), .X3(
        in_2[7]), .X4(in_3_7_), .Cin(Carry_tmp[5]), .Cout(Carry_tmp[6]), .Sum(
        out_0[7]), .Carry(out_1[8]) );
  CSA42_mydesign_23 gen_CSA42_6__u_CSA42 ( .X1(in_0_8_), .X2(in_1_8_), .X3(
        in_2[8]), .X4(in_3_8_), .Cin(Carry_tmp[6]), .Cout(Carry_tmp[7]), .Sum(
        out_0[8]), .Carry(out_1[9]) );
  CSA42_mydesign_22 gen_CSA42_7__u_CSA42 ( .X1(in_0_9_), .X2(in_1_9_), .X3(
        in_2[9]), .X4(in_3_9_), .Cin(Carry_tmp[7]), .Cout(Carry_tmp[8]), .Sum(
        out_0[9]), .Carry(out_1[10]) );
  CSA42_mydesign_21 gen_CSA42_8__u_CSA42 ( .X1(in_0_10_), .X2(in_1_10_), .X3(
        in_2[10]), .X4(in_3_10_), .Cin(Carry_tmp[8]), .Cout(Carry_tmp[9]), 
        .Sum(out_0[10]), .Carry(out_1[11]) );
  CSA42_mydesign_20 gen_CSA42_9__u_CSA42 ( .X1(in_0_11_), .X2(in_1_11_), .X3(
        in_2[11]), .X4(in_3_11_), .Cin(Carry_tmp[9]), .Cout(Carry_tmp[10]), 
        .Sum(out_0[11]), .Carry(out_1[12]) );
  CSA42_mydesign_19 gen_CSA42_10__u_CSA42 ( .X1(in_0_12_), .X2(in_1_12_), .X3(
        in_2[12]), .X4(in_3_12_), .Cin(Carry_tmp[10]), .Cout(Carry_tmp[11]), 
        .Sum(out_0[12]), .Carry(out_1[13]) );
  CSA42_mydesign_18 gen_CSA42_11__u_CSA42 ( .X1(in_0_13_), .X2(in_1_13_), .X3(
        in_2[13]), .X4(in_3_13_), .Cin(Carry_tmp[11]), .Cout(Carry_tmp[12]), 
        .Sum(out_0[13]), .Carry(out_1[14]) );
  CSA42_mydesign_17 gen_CSA42_12__u_CSA42 ( .X1(in_0_14_), .X2(in_1_14_), .X3(
        in_2[14]), .X4(in_3_14_), .Cin(Carry_tmp[12]), .Cout(Carry_tmp[13]), 
        .Sum(out_0[14]), .Carry(out_1[15]) );
  CSA42_mydesign_16 gen_CSA42_13__u_CSA42 ( .X2(in_1_15_), .X3(in_2[15]), .X4(
        in_3_15_), .Cin(Carry_tmp[13]), .Cout(Carry_tmp[14]), .Sum(out_0[15]), 
        .Carry(out_1[16]) );
  CSA42_mydesign_15 gen_CSA42_14__u_CSA42 ( .X2(in_1_16_), .X3(in_2[16]), .X4(
        in_3_16_), .Cin(Carry_tmp[14]), .Cout(Carry_tmp[15]), .Sum(out_0[16]), 
        .Carry(out_1[17]) );
  CSA32_mydesign_2 u_CSA32_1 ( .X1(Carry_tmp[15]), .X2(in_2[17]), .X3(in_3_17_), .Carry(out_1[18]), .Sum(out_0[17]) );
  HalfAdder_mydesign_2 u_HalfAdder_1 ( .X1(in_2[18]), .X2(in_3_18_), .Sum(
        out_0[18]), .Carry(Cout) );
  BUFX1 U3 ( .A(in_2[0]), .Y(out_1[0]) );
endmodule


module HalfAdder_mydesign_6 ( X1, X2, Sum, Carry );
  input X1, X2;
  output Sum, Carry;


  AND2XL U1 ( .A(X2), .B(X1), .Y(Carry) );
  AOI2BB1XL U2 ( .A0N(X2), .A1N(X1), .B0(Carry), .Y(Sum) );
endmodule


module HalfAdder_mydesign_7 ( X1, X2, Sum, Carry );
  input X1, X2;
  output Sum, Carry;


  AND2XL U1 ( .A(X2), .B(X1), .Y(Carry) );
  AOI2BB1XL U2 ( .A0N(X2), .A1N(X1), .B0(Carry), .Y(Sum) );
endmodule


module HalfAdder_mydesign_8 ( X1, X2, Sum, Carry );
  input X1, X2;
  output Sum, Carry;


  AND2XL U1 ( .A(X2), .B(X1), .Y(Carry) );
  AOI2BB1XL U2 ( .A0N(X2), .A1N(X1), .B0(Carry), .Y(Sum) );
endmodule


module HalfAdder_mydesign_9 ( X1, X2, Sum, Carry );
  input X1, X2;
  output Sum, Carry;


  AND2XL U1 ( .A(X2), .B(X1), .Y(Carry) );
  AOI2BB1XL U2 ( .A0N(X2), .A1N(X1), .B0(Carry), .Y(Sum) );
endmodule


module WallaceTree_top ( Carry, PP0_19_, PP0_18_, PP0_17_, PP0_16_, PP0_15_, 
        PP0_14_, PP0_13_, PP0_12_, PP0_11_, PP0_10_, PP0_9_, PP0_8_, PP0_7_, 
        PP0_6_, PP0_5_, PP0_4_, PP0_3_, PP0_2_, PP0_1_, PP0_0_, PP1_20_, 
        PP1_19_, PP1_18_, PP1_17_, PP1_16_, PP1_15_, PP1_14_, PP1_13_, PP1_12_, 
        PP1_11_, PP1_10_, PP1_9_, PP1_8_, PP1_7_, PP1_6_, PP1_5_, PP1_4_, 
        PP1_3_, PP1_2_, PP2_22_, PP2_21_, PP2_20_, PP2_19_, PP2_18_, PP2_17_, 
        PP2_16_, PP2_15_, PP2_14_, PP2_13_, PP2_12_, PP2_11_, PP2_10_, PP2_9_, 
        PP2_8_, PP2_7_, PP2_6_, PP2_5_, PP2_4_, PP3_24_, PP3_23_, PP3_22_, 
        PP3_21_, PP3_20_, PP3_19_, PP3_18_, PP3_17_, PP3_16_, PP3_15_, PP3_14_, 
        PP3_13_, PP3_12_, PP3_11_, PP3_10_, PP3_9_, PP3_8_, PP3_7_, PP3_6_, 
        PP4_26_, PP4_25_, PP4_24_, PP4_23_, PP4_22_, PP4_21_, PP4_20_, PP4_19_, 
        PP4_18_, PP4_17_, PP4_16_, PP4_15_, PP4_14_, PP4_13_, PP4_12_, PP4_11_, 
        PP4_10_, PP4_9_, PP4_8_, PP5_28_, PP5_27_, PP5_26_, PP5_25_, PP5_24_, 
        PP5_23_, PP5_22_, PP5_21_, PP5_20_, PP5_19_, PP5_18_, PP5_17_, PP5_16_, 
        PP5_15_, PP5_14_, PP5_13_, PP5_12_, PP5_11_, PP5_10_, PP6_30_, PP6_29_, 
        PP6_28_, PP6_27_, PP6_26_, PP6_25_, PP6_24_, PP6_23_, PP6_22_, PP6_21_, 
        PP6_20_, PP6_19_, PP6_18_, PP6_17_, PP6_16_, PP6_15_, PP6_14_, PP6_13_, 
        PP6_12_, PP7_31_, PP7_30_, PP7_29_, PP7_28_, PP7_27_, PP7_26_, PP7_25_, 
        PP7_24_, PP7_23_, PP7_22_, PP7_21_, PP7_20_, PP7_19_, PP7_18_, PP7_17_, 
        PP7_16_, PP7_15_, PP7_14_, Sum_31_, Sum_30_, Sum_29_, Sum_28_, Sum_27_, 
        Sum_26_, Sum_25_, Sum_24_, Sum_23_, Sum_22_, Sum_21_, Sum_20_, Sum_19_, 
        Sum_18_, Sum_17_, Sum_16_, Sum_15_, Sum_14_, Sum_13_, Sum_12_, Sum_11_, 
        Sum_10_, Sum_9_, Sum_8_, Sum_7_, Sum_6_, Sum_5_, Sum_4_, Sum_3_, 
        Sum_2_ );
  output [31:0] Carry;
  input PP0_19_, PP0_18_, PP0_17_, PP0_16_, PP0_15_, PP0_14_, PP0_13_, PP0_12_,
         PP0_11_, PP0_10_, PP0_9_, PP0_8_, PP0_7_, PP0_6_, PP0_5_, PP0_4_,
         PP0_3_, PP0_2_, PP0_1_, PP0_0_, PP1_20_, PP1_19_, PP1_18_, PP1_17_,
         PP1_16_, PP1_15_, PP1_14_, PP1_13_, PP1_12_, PP1_11_, PP1_10_, PP1_9_,
         PP1_8_, PP1_7_, PP1_6_, PP1_5_, PP1_4_, PP1_3_, PP1_2_, PP2_22_,
         PP2_21_, PP2_20_, PP2_19_, PP2_18_, PP2_17_, PP2_16_, PP2_15_,
         PP2_14_, PP2_13_, PP2_12_, PP2_11_, PP2_10_, PP2_9_, PP2_8_, PP2_7_,
         PP2_6_, PP2_5_, PP2_4_, PP3_24_, PP3_23_, PP3_22_, PP3_21_, PP3_20_,
         PP3_19_, PP3_18_, PP3_17_, PP3_16_, PP3_15_, PP3_14_, PP3_13_,
         PP3_12_, PP3_11_, PP3_10_, PP3_9_, PP3_8_, PP3_7_, PP3_6_, PP4_26_,
         PP4_25_, PP4_24_, PP4_23_, PP4_22_, PP4_21_, PP4_20_, PP4_19_,
         PP4_18_, PP4_17_, PP4_16_, PP4_15_, PP4_14_, PP4_13_, PP4_12_,
         PP4_11_, PP4_10_, PP4_9_, PP4_8_, PP5_28_, PP5_27_, PP5_26_, PP5_25_,
         PP5_24_, PP5_23_, PP5_22_, PP5_21_, PP5_20_, PP5_19_, PP5_18_,
         PP5_17_, PP5_16_, PP5_15_, PP5_14_, PP5_13_, PP5_12_, PP5_11_,
         PP5_10_, PP6_30_, PP6_29_, PP6_28_, PP6_27_, PP6_26_, PP6_25_,
         PP6_24_, PP6_23_, PP6_22_, PP6_21_, PP6_20_, PP6_19_, PP6_18_,
         PP6_17_, PP6_16_, PP6_15_, PP6_14_, PP6_13_, PP6_12_, PP7_31_,
         PP7_30_, PP7_29_, PP7_28_, PP7_27_, PP7_26_, PP7_25_, PP7_24_,
         PP7_23_, PP7_22_, PP7_21_, PP7_20_, PP7_19_, PP7_18_, PP7_17_,
         PP7_16_, PP7_15_, PP7_14_;
  output Sum_31_, Sum_30_, Sum_29_, Sum_28_, Sum_27_, Sum_26_, Sum_25_,
         Sum_24_, Sum_23_, Sum_22_, Sum_21_, Sum_20_, Sum_19_, Sum_18_,
         Sum_17_, Sum_16_, Sum_15_, Sum_14_, Sum_13_, Sum_12_, Sum_11_,
         Sum_10_, Sum_9_, Sum_8_, Sum_7_, Sum_6_, Sum_5_, Sum_4_, Sum_3_,
         Sum_2_;
  wire   n1;
  wire   [23:8] PP_tmp_0;
  wire   [22:8] PP_tmp_1;
  wire   [31:12] PP_tmp_2;
  wire   [30:12] PP_tmp_3;

  WallaceTree_mydesign_2 u_WallaceTree_0 ( .in_2({PP2_22_, PP2_21_, PP2_20_, 
        PP2_19_, PP2_18_, PP2_17_, PP2_16_, PP2_15_, PP2_14_, PP2_13_, PP2_12_, 
        PP2_11_, PP2_10_, PP2_9_, PP2_8_, PP2_7_, PP2_6_, PP2_5_, PP2_4_}), 
        .out_0({PP_tmp_0[22:8], Carry[7:4]}), .out_1({PP_tmp_1, Sum_7_, Sum_6_, 
        Sum_5_, Sum_4_}), .Cout(PP_tmp_0[23]), .in_0_15_(PP0_19_), .in_0_14_(
        PP0_18_), .in_0_13_(PP0_17_), .in_0_12_(PP0_16_), .in_0_11_(PP0_15_), 
        .in_0_10_(PP0_14_), .in_0_9_(PP0_13_), .in_0_8_(PP0_12_), .in_0_7_(
        PP0_11_), .in_0_6_(PP0_10_), .in_0_5_(PP0_9_), .in_0_4_(PP0_8_), 
        .in_0_3_(PP0_7_), .in_0_2_(PP0_6_), .in_0_1_(PP0_5_), .in_0_0_(PP0_4_), 
        .in_1_16_(PP1_20_), .in_1_15_(PP1_19_), .in_1_14_(PP1_18_), .in_1_13_(
        PP1_17_), .in_1_12_(PP1_16_), .in_1_11_(PP1_15_), .in_1_10_(PP1_14_), 
        .in_1_9_(PP1_13_), .in_1_8_(PP1_12_), .in_1_7_(PP1_11_), .in_1_6_(
        PP1_10_), .in_1_5_(PP1_9_), .in_1_4_(PP1_8_), .in_1_3_(PP1_7_), 
        .in_1_2_(PP1_6_), .in_1_1_(PP1_5_), .in_1_0_(PP1_4_), .in_3_18_(
        PP3_22_), .in_3_17_(PP3_21_), .in_3_16_(PP3_20_), .in_3_15_(PP3_19_), 
        .in_3_14_(PP3_18_), .in_3_13_(PP3_17_), .in_3_12_(PP3_16_), .in_3_11_(
        PP3_15_), .in_3_10_(PP3_14_), .in_3_9_(PP3_13_), .in_3_8_(PP3_12_), 
        .in_3_7_(PP3_11_), .in_3_6_(PP3_10_), .in_3_5_(PP3_9_), .in_3_4_(
        PP3_8_), .in_3_3_(PP3_7_), .in_3_2_(PP3_6_) );
  WallaceTree_mydesign_1 u_WallaceTree_1 ( .in_2({PP6_30_, PP6_29_, PP6_28_, 
        PP6_27_, PP6_26_, PP6_25_, PP6_24_, PP6_23_, PP6_22_, PP6_21_, PP6_20_, 
        PP6_19_, PP6_18_, PP6_17_, PP6_16_, PP6_15_, PP6_14_, PP6_13_, PP6_12_}), .out_0(PP_tmp_2[30:12]), .out_1(PP_tmp_3), .Cout(PP_tmp_2[31]), .in_0_14_(
        PP4_26_), .in_0_13_(PP4_25_), .in_0_12_(PP4_24_), .in_0_11_(PP4_23_), 
        .in_0_10_(PP4_22_), .in_0_9_(PP4_21_), .in_0_8_(PP4_20_), .in_0_7_(
        PP4_19_), .in_0_6_(PP4_18_), .in_0_5_(PP4_17_), .in_0_4_(PP4_16_), 
        .in_0_3_(PP4_15_), .in_0_2_(PP4_14_), .in_0_1_(PP4_13_), .in_0_0_(
        PP4_12_), .in_1_16_(PP5_28_), .in_1_15_(PP5_27_), .in_1_14_(PP5_26_), 
        .in_1_13_(PP5_25_), .in_1_12_(PP5_24_), .in_1_11_(PP5_23_), .in_1_10_(
        PP5_22_), .in_1_9_(PP5_21_), .in_1_8_(PP5_20_), .in_1_7_(PP5_19_), 
        .in_1_6_(PP5_18_), .in_1_5_(PP5_17_), .in_1_4_(PP5_16_), .in_1_3_(
        PP5_15_), .in_1_2_(PP5_14_), .in_1_1_(PP5_13_), .in_1_0_(PP5_12_), 
        .in_3_18_(PP7_30_), .in_3_17_(PP7_29_), .in_3_16_(PP7_28_), .in_3_15_(
        PP7_27_), .in_3_14_(PP7_26_), .in_3_13_(PP7_25_), .in_3_12_(PP7_24_), 
        .in_3_11_(PP7_23_), .in_3_10_(PP7_22_), .in_3_9_(PP7_21_), .in_3_8_(
        PP7_20_), .in_3_7_(PP7_19_), .in_3_6_(PP7_18_), .in_3_5_(PP7_17_), 
        .in_3_4_(PP7_16_), .in_3_3_(PP7_15_), .in_3_2_(PP7_14_) );
  WallaceTree_mydesign_0 u_WallaceTree_2 ( .in_2({PP_tmp_2[26:12], PP4_11_, 
        PP4_10_, PP4_9_, PP4_8_}), .out_0({Sum_26_, Sum_25_, Sum_24_, Sum_23_, 
        Sum_22_, Sum_21_, Sum_20_, Sum_19_, Sum_18_, Sum_17_, Sum_16_, Sum_15_, 
        Sum_14_, Sum_13_, Sum_12_, Sum_11_, Sum_10_, Sum_9_, Sum_8_}), .out_1(
        Carry[26:8]), .Cout(Carry[27]), .in_0_15_(PP_tmp_0[23]), .in_0_14_(
        PP_tmp_0[22]), .in_0_13_(PP_tmp_0[21]), .in_0_12_(PP_tmp_0[20]), 
        .in_0_11_(PP_tmp_0[19]), .in_0_10_(PP_tmp_0[18]), .in_0_9_(
        PP_tmp_0[17]), .in_0_8_(PP_tmp_0[16]), .in_0_7_(PP_tmp_0[15]), 
        .in_0_6_(PP_tmp_0[14]), .in_0_5_(PP_tmp_0[13]), .in_0_4_(PP_tmp_0[12]), 
        .in_0_3_(PP_tmp_0[11]), .in_0_2_(PP_tmp_0[10]), .in_0_1_(PP_tmp_0[9]), 
        .in_0_0_(PP_tmp_0[8]), .in_1_16_(PP3_24_), .in_1_15_(PP3_23_), 
        .in_1_14_(PP_tmp_1[22]), .in_1_13_(PP_tmp_1[21]), .in_1_12_(
        PP_tmp_1[20]), .in_1_11_(PP_tmp_1[19]), .in_1_10_(PP_tmp_1[18]), 
        .in_1_9_(PP_tmp_1[17]), .in_1_8_(PP_tmp_1[16]), .in_1_7_(PP_tmp_1[15]), 
        .in_1_6_(PP_tmp_1[14]), .in_1_5_(PP_tmp_1[13]), .in_1_4_(PP_tmp_1[12]), 
        .in_1_3_(PP_tmp_1[11]), .in_1_2_(PP_tmp_1[10]), .in_1_1_(PP_tmp_1[9]), 
        .in_1_0_(PP_tmp_1[8]), .in_3_18_(PP_tmp_3[26]), .in_3_17_(PP_tmp_3[25]), .in_3_16_(PP_tmp_3[24]), .in_3_15_(PP_tmp_3[23]), .in_3_14_(PP_tmp_3[22]), 
        .in_3_13_(PP_tmp_3[21]), .in_3_12_(PP_tmp_3[20]), .in_3_11_(
        PP_tmp_3[19]), .in_3_10_(PP_tmp_3[18]), .in_3_9_(PP_tmp_3[17]), 
        .in_3_8_(PP_tmp_3[16]), .in_3_7_(PP_tmp_3[15]), .in_3_6_(PP_tmp_3[14]), 
        .in_3_5_(PP_tmp_3[13]), .in_3_4_(n1), .in_3_3_(PP5_11_), .in_3_2_(
        PP5_10_) );
  HalfAdder_mydesign_10 gen_halfAdder_0__u_HalfAdder ( .X1(PP_tmp_2[27]), .X2(
        PP_tmp_3[27]), .Sum(Sum_27_), .Carry(Carry[28]) );
  HalfAdder_mydesign_9 gen_halfAdder_1__u_HalfAdder ( .X1(PP_tmp_2[28]), .X2(
        PP_tmp_3[28]), .Sum(Sum_28_), .Carry(Carry[29]) );
  HalfAdder_mydesign_8 gen_halfAdder_2__u_HalfAdder ( .X1(PP_tmp_2[29]), .X2(
        PP_tmp_3[29]), .Sum(Sum_29_), .Carry(Carry[30]) );
  HalfAdder_mydesign_7 gen_halfAdder_3__u_HalfAdder ( .X1(PP_tmp_2[30]), .X2(
        PP_tmp_3[30]), .Sum(Sum_30_), .Carry(Carry[31]) );
  HalfAdder_mydesign_6 gen_halfAdder_4__u_HalfAdder ( .X1(PP_tmp_2[31]), .X2(
        PP7_31_), .Sum(Sum_31_) );
  BUFX1 U1 ( .A(PP_tmp_3[12]), .Y(n1) );
  BUFX1 U2 ( .A(PP1_2_), .Y(Sum_2_) );
  BUFX1 U3 ( .A(PP0_3_), .Y(Carry[3]) );
  BUFX1 U4 ( .A(PP0_2_), .Y(Carry[2]) );
  BUFX1 U5 ( .A(PP1_3_), .Y(Sum_3_) );
  BUFX1 U6 ( .A(PP0_0_), .Y(Carry[0]) );
  BUFX1 U7 ( .A(PP0_1_), .Y(Carry[1]) );
endmodule


module pg_mydesign_31 ( i_b, o_p );
  input i_b;
  output o_p;


  BUFX1 U1 ( .A(i_b), .Y(o_p) );
endmodule


module pg_mydesign_0 ( i_a, i_b, o_p, o_g );
  input i_a, i_b;
  output o_p, o_g;


  AND2XL U1 ( .A(i_b), .B(i_a), .Y(o_g) );
  AOI2BB1XL U2 ( .A0N(i_b), .A1N(i_a), .B0(o_g), .Y(o_p) );
endmodule


module pg_mydesign_1 ( i_a, i_b, o_p, o_g );
  input i_a, i_b;
  output o_p, o_g;
  wire   n2;

  AOI2BB1XL U1 ( .A0N(i_b), .A1N(i_a), .B0(n2), .Y(o_p) );
  BUFX1 U2 ( .A(n2), .Y(o_g) );
  AND2XL U3 ( .A(i_b), .B(i_a), .Y(n2) );
endmodule


module pg_mydesign_2 ( i_a, i_b, o_p, o_g );
  input i_a, i_b;
  output o_p, o_g;
  wire   n3, n1;

  AOI2BB1XL U1 ( .A0N(i_b), .A1N(i_a), .B0(n3), .Y(o_p) );
  INVXL U2 ( .A(n3), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
  AND2XL U4 ( .A(i_b), .B(i_a), .Y(n3) );
endmodule


module pg_mydesign_3 ( i_a, i_b, o_p, o_g );
  input i_a, i_b;
  output o_p, o_g;
  wire   n3, n1;

  AOI2BB1XL U1 ( .A0N(i_b), .A1N(i_a), .B0(n3), .Y(o_p) );
  INVXL U2 ( .A(n3), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
  AND2XL U4 ( .A(i_b), .B(i_a), .Y(n3) );
endmodule


module pg_mydesign_4 ( i_a, i_b, o_p, o_g );
  input i_a, i_b;
  output o_p, o_g;
  wire   n3, n1;

  AOI2BB1XL U1 ( .A0N(i_b), .A1N(i_a), .B0(n3), .Y(o_p) );
  INVXL U2 ( .A(n3), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
  AND2XL U4 ( .A(i_b), .B(i_a), .Y(n3) );
endmodule


module pg_mydesign_5 ( i_a, i_b, o_p, o_g );
  input i_a, i_b;
  output o_p, o_g;
  wire   n3, n1;

  AOI2BB1XL U1 ( .A0N(i_b), .A1N(i_a), .B0(n3), .Y(o_p) );
  INVXL U2 ( .A(n3), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
  AND2XL U4 ( .A(i_b), .B(i_a), .Y(n3) );
endmodule


module pg_mydesign_6 ( i_a, i_b, o_p, o_g );
  input i_a, i_b;
  output o_p, o_g;
  wire   n3, n1;

  AOI2BB1XL U1 ( .A0N(i_b), .A1N(i_a), .B0(n3), .Y(o_p) );
  INVXL U2 ( .A(n3), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
  AND2XL U4 ( .A(i_b), .B(i_a), .Y(n3) );
endmodule


module pg_mydesign_7 ( i_a, i_b, o_p, o_g );
  input i_a, i_b;
  output o_p, o_g;
  wire   n3, n1;

  AOI2BB1XL U1 ( .A0N(i_b), .A1N(i_a), .B0(n3), .Y(o_p) );
  INVXL U2 ( .A(n3), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
  AND2XL U4 ( .A(i_b), .B(i_a), .Y(n3) );
endmodule


module pg_mydesign_8 ( i_a, i_b, o_p, o_g );
  input i_a, i_b;
  output o_p, o_g;
  wire   n3, n1;

  AOI2BB1XL U1 ( .A0N(i_b), .A1N(i_a), .B0(n3), .Y(o_p) );
  INVXL U2 ( .A(n3), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
  AND2XL U4 ( .A(i_b), .B(i_a), .Y(n3) );
endmodule


module pg_mydesign_9 ( i_a, i_b, o_p, o_g );
  input i_a, i_b;
  output o_p, o_g;
  wire   n3, n1;

  AOI2BB1XL U1 ( .A0N(i_b), .A1N(i_a), .B0(n3), .Y(o_p) );
  INVXL U2 ( .A(n3), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
  AND2XL U4 ( .A(i_b), .B(i_a), .Y(n3) );
endmodule


module pg_mydesign_10 ( i_a, i_b, o_p, o_g );
  input i_a, i_b;
  output o_p, o_g;
  wire   n2;

  AND2XL U1 ( .A(i_b), .B(i_a), .Y(n2) );
  AOI2BB1XL U2 ( .A0N(i_b), .A1N(i_a), .B0(n2), .Y(o_p) );
  BUFX1 U3 ( .A(n2), .Y(o_g) );
endmodule


module pg_mydesign_11 ( i_a, i_b, o_p, o_g );
  input i_a, i_b;
  output o_p, o_g;
  wire   n3, n1;

  AOI2BB1XL U1 ( .A0N(i_b), .A1N(i_a), .B0(n3), .Y(o_p) );
  INVXL U2 ( .A(n3), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
  AND2XL U4 ( .A(i_b), .B(i_a), .Y(n3) );
endmodule


module pg_mydesign_12 ( i_a, i_b, o_p, o_g );
  input i_a, i_b;
  output o_p, o_g;
  wire   n3, n1;

  AOI2BB1XL U1 ( .A0N(i_b), .A1N(i_a), .B0(n3), .Y(o_p) );
  INVXL U2 ( .A(n3), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
  AND2XL U4 ( .A(i_b), .B(i_a), .Y(n3) );
endmodule


module pg_mydesign_13 ( i_a, i_b, o_p, o_g );
  input i_a, i_b;
  output o_p, o_g;
  wire   n3, n1;

  AND2XL U1 ( .A(i_b), .B(i_a), .Y(n3) );
  AOI2BB1XL U2 ( .A0N(i_b), .A1N(i_a), .B0(n3), .Y(o_p) );
  INVXL U3 ( .A(n3), .Y(n1) );
  INVXL U4 ( .A(n1), .Y(o_g) );
endmodule


module pg_mydesign_14 ( i_a, i_b, o_p, o_g );
  input i_a, i_b;
  output o_p, o_g;
  wire   n3, n1;

  AND2XL U1 ( .A(i_b), .B(i_a), .Y(n3) );
  AOI2BB1XL U2 ( .A0N(i_b), .A1N(i_a), .B0(n3), .Y(o_p) );
  INVXL U3 ( .A(n3), .Y(n1) );
  INVXL U4 ( .A(n1), .Y(o_g) );
endmodule


module pg_mydesign_15 ( i_a, i_b, o_p, o_g );
  input i_a, i_b;
  output o_p, o_g;
  wire   n3, n1;

  AND2XL U1 ( .A(i_b), .B(i_a), .Y(n3) );
  AOI2BB1XL U2 ( .A0N(i_b), .A1N(i_a), .B0(n3), .Y(o_p) );
  INVXL U3 ( .A(n3), .Y(n1) );
  INVXL U4 ( .A(n1), .Y(o_g) );
endmodule


module pg_mydesign_16 ( i_a, i_b, o_p, o_g );
  input i_a, i_b;
  output o_p, o_g;
  wire   n3, n1;

  AND2XL U1 ( .A(i_b), .B(i_a), .Y(n3) );
  AOI2BB1XL U2 ( .A0N(i_b), .A1N(i_a), .B0(n3), .Y(o_p) );
  INVXL U3 ( .A(n3), .Y(n1) );
  INVXL U4 ( .A(n1), .Y(o_g) );
endmodule


module pg_mydesign_17 ( i_a, i_b, o_p, o_g );
  input i_a, i_b;
  output o_p, o_g;
  wire   n3, n1;

  AND2XL U1 ( .A(i_b), .B(i_a), .Y(n3) );
  AOI2BB1XL U2 ( .A0N(i_b), .A1N(i_a), .B0(n3), .Y(o_p) );
  INVXL U3 ( .A(n3), .Y(n1) );
  INVXL U4 ( .A(n1), .Y(o_g) );
endmodule


module pg_mydesign_18 ( i_a, i_b, o_p, o_g );
  input i_a, i_b;
  output o_p, o_g;
  wire   n3, n1;

  AND2XL U1 ( .A(i_b), .B(i_a), .Y(n3) );
  AOI2BB1XL U2 ( .A0N(i_b), .A1N(i_a), .B0(n3), .Y(o_p) );
  INVXL U3 ( .A(n3), .Y(n1) );
  INVXL U4 ( .A(n1), .Y(o_g) );
endmodule


module pg_mydesign_19 ( i_a, i_b, o_p, o_g );
  input i_a, i_b;
  output o_p, o_g;
  wire   n3, n1;

  AND2XL U1 ( .A(i_b), .B(i_a), .Y(n3) );
  AOI2BB1XL U2 ( .A0N(i_b), .A1N(i_a), .B0(n3), .Y(o_p) );
  INVXL U3 ( .A(n3), .Y(n1) );
  INVXL U4 ( .A(n1), .Y(o_g) );
endmodule


module pg_mydesign_20 ( i_a, i_b, o_p, o_g );
  input i_a, i_b;
  output o_p, o_g;
  wire   n3, n1;

  AND2XL U1 ( .A(i_b), .B(i_a), .Y(n3) );
  AOI2BB1XL U2 ( .A0N(i_b), .A1N(i_a), .B0(n3), .Y(o_p) );
  INVXL U3 ( .A(n3), .Y(n1) );
  INVXL U4 ( .A(n1), .Y(o_g) );
endmodule


module pg_mydesign_21 ( i_a, i_b, o_p, o_g );
  input i_a, i_b;
  output o_p, o_g;
  wire   n3, n1;

  AND2XL U1 ( .A(i_b), .B(i_a), .Y(n3) );
  AOI2BB1XL U2 ( .A0N(i_b), .A1N(i_a), .B0(n3), .Y(o_p) );
  INVXL U3 ( .A(n3), .Y(n1) );
  INVXL U4 ( .A(n1), .Y(o_g) );
endmodule


module pg_mydesign_22 ( i_a, i_b, o_p, o_g );
  input i_a, i_b;
  output o_p, o_g;
  wire   n3, n1;

  AND2XL U1 ( .A(i_b), .B(i_a), .Y(n3) );
  AOI2BB1XL U2 ( .A0N(i_b), .A1N(i_a), .B0(n3), .Y(o_p) );
  INVXL U3 ( .A(n3), .Y(n1) );
  INVXL U4 ( .A(n1), .Y(o_g) );
endmodule


module pg_mydesign_23 ( i_a, i_b, o_p, o_g );
  input i_a, i_b;
  output o_p, o_g;
  wire   n3, n1;

  AND2XL U1 ( .A(i_b), .B(i_a), .Y(n3) );
  AOI2BB1XL U2 ( .A0N(i_b), .A1N(i_a), .B0(n3), .Y(o_p) );
  INVXL U3 ( .A(n3), .Y(n1) );
  INVXL U4 ( .A(n1), .Y(o_g) );
endmodule


module pg_mydesign_24 ( i_a, i_b, o_p, o_g );
  input i_a, i_b;
  output o_p, o_g;
  wire   n3, n1;

  AND2XL U1 ( .A(i_b), .B(i_a), .Y(n3) );
  AOI2BB1XL U2 ( .A0N(i_b), .A1N(i_a), .B0(n3), .Y(o_p) );
  INVXL U3 ( .A(n3), .Y(n1) );
  INVXL U4 ( .A(n1), .Y(o_g) );
endmodule


module pg_mydesign_25 ( i_a, i_b, o_p, o_g );
  input i_a, i_b;
  output o_p, o_g;
  wire   n3, n1;

  AND2XL U1 ( .A(i_b), .B(i_a), .Y(n3) );
  AOI2BB1XL U2 ( .A0N(i_b), .A1N(i_a), .B0(n3), .Y(o_p) );
  INVXL U3 ( .A(n3), .Y(n1) );
  INVXL U4 ( .A(n1), .Y(o_g) );
endmodule


module pg_mydesign_26 ( i_a, i_b, o_p, o_g );
  input i_a, i_b;
  output o_p, o_g;
  wire   n3, n1;

  AND2XL U1 ( .A(i_b), .B(i_a), .Y(n3) );
  AOI2BB1XL U2 ( .A0N(i_b), .A1N(i_a), .B0(n3), .Y(o_p) );
  INVXL U3 ( .A(n3), .Y(n1) );
  INVXL U4 ( .A(n1), .Y(o_g) );
endmodule


module pg_mydesign_27 ( i_a, i_b, o_p, o_g );
  input i_a, i_b;
  output o_p, o_g;
  wire   n3, n1;

  AND2XL U1 ( .A(i_b), .B(i_a), .Y(n3) );
  AOI2BB1XL U2 ( .A0N(i_b), .A1N(i_a), .B0(n3), .Y(o_p) );
  INVXL U3 ( .A(n3), .Y(n1) );
  INVXL U4 ( .A(n1), .Y(o_g) );
endmodule


module pg_mydesign_28 ( i_a, i_b, o_p, o_g );
  input i_a, i_b;
  output o_p, o_g;
  wire   n1, n2;

  NAND2XL U1 ( .A(i_b), .B(i_a), .Y(n1) );
  AOI2BB1XL U2 ( .A0N(i_b), .A1N(i_a), .B0(n2), .Y(o_p) );
  INVXL U3 ( .A(n1), .Y(n2) );
  INVXL U4 ( .A(n1), .Y(o_g) );
endmodule


module pg_mydesign_29 ( i_a, i_b, o_p, o_g );
  input i_a, i_b;
  output o_p, o_g;
  wire   n3, n1;

  NAND2XL U1 ( .A(i_b), .B(i_a), .Y(n3) );
  INVXL U2 ( .A(n3), .Y(n1) );
  INVXL U3 ( .A(n3), .Y(o_g) );
  AOI2BB1XL U4 ( .A0N(i_b), .A1N(i_a), .B0(n1), .Y(o_p) );
endmodule


module pg_mydesign_30 ( i_b, o_p );
  input i_b;
  output o_p;


  BUFX1 U1 ( .A(i_b), .Y(o_p) );
endmodule


module ks_1 ( i_b, o_pk_1, i_a_31_, i_a_30_, i_a_29_, i_a_28_, i_a_27_, 
        i_a_26_, i_a_25_, i_a_24_, i_a_23_, i_a_22_, i_a_21_, i_a_20_, i_a_19_, 
        i_a_18_, i_a_17_, i_a_16_, i_a_15_, i_a_14_, i_a_13_, i_a_12_, i_a_11_, 
        i_a_10_, i_a_9_, i_a_8_, i_a_7_, i_a_6_, i_a_5_, i_a_4_, i_a_3_, 
        i_a_2_, o_gk_1_31_, o_gk_1_30_, o_gk_1_29_, o_gk_1_28_, o_gk_1_27_, 
        o_gk_1_26_, o_gk_1_25_, o_gk_1_24_, o_gk_1_23_, o_gk_1_22_, o_gk_1_21_, 
        o_gk_1_20_, o_gk_1_19_, o_gk_1_18_, o_gk_1_17_, o_gk_1_16_, o_gk_1_15_, 
        o_gk_1_14_, o_gk_1_13_, o_gk_1_12_, o_gk_1_11_, o_gk_1_10_, o_gk_1_9_, 
        o_gk_1_8_, o_gk_1_7_, o_gk_1_6_, o_gk_1_5_, o_gk_1_4_, o_gk_1_3_, 
        o_gk_1_2_ );
  input [31:0] i_b;
  output [31:0] o_pk_1;
  input i_a_31_, i_a_30_, i_a_29_, i_a_28_, i_a_27_, i_a_26_, i_a_25_, i_a_24_,
         i_a_23_, i_a_22_, i_a_21_, i_a_20_, i_a_19_, i_a_18_, i_a_17_,
         i_a_16_, i_a_15_, i_a_14_, i_a_13_, i_a_12_, i_a_11_, i_a_10_, i_a_9_,
         i_a_8_, i_a_7_, i_a_6_, i_a_5_, i_a_4_, i_a_3_, i_a_2_;
  output o_gk_1_31_, o_gk_1_30_, o_gk_1_29_, o_gk_1_28_, o_gk_1_27_,
         o_gk_1_26_, o_gk_1_25_, o_gk_1_24_, o_gk_1_23_, o_gk_1_22_,
         o_gk_1_21_, o_gk_1_20_, o_gk_1_19_, o_gk_1_18_, o_gk_1_17_,
         o_gk_1_16_, o_gk_1_15_, o_gk_1_14_, o_gk_1_13_, o_gk_1_12_,
         o_gk_1_11_, o_gk_1_10_, o_gk_1_9_, o_gk_1_8_, o_gk_1_7_, o_gk_1_6_,
         o_gk_1_5_, o_gk_1_4_, o_gk_1_3_, o_gk_1_2_;


  pg_mydesign_31 pg_0 ( .i_b(i_b[0]), .o_p(o_pk_1[0]) );
  pg_mydesign_30 pg_1 ( .i_b(i_b[1]), .o_p(o_pk_1[1]) );
  pg_mydesign_29 pg_2 ( .i_a(i_a_2_), .i_b(i_b[2]), .o_p(o_pk_1[2]), .o_g(
        o_gk_1_2_) );
  pg_mydesign_28 pg_3 ( .i_a(i_a_3_), .i_b(i_b[3]), .o_p(o_pk_1[3]), .o_g(
        o_gk_1_3_) );
  pg_mydesign_27 pg_4 ( .i_a(i_a_4_), .i_b(i_b[4]), .o_p(o_pk_1[4]), .o_g(
        o_gk_1_4_) );
  pg_mydesign_26 pg_5 ( .i_a(i_a_5_), .i_b(i_b[5]), .o_p(o_pk_1[5]), .o_g(
        o_gk_1_5_) );
  pg_mydesign_25 pg_6 ( .i_a(i_a_6_), .i_b(i_b[6]), .o_p(o_pk_1[6]), .o_g(
        o_gk_1_6_) );
  pg_mydesign_24 pg_7 ( .i_a(i_a_7_), .i_b(i_b[7]), .o_p(o_pk_1[7]), .o_g(
        o_gk_1_7_) );
  pg_mydesign_23 pg_8 ( .i_a(i_a_8_), .i_b(i_b[8]), .o_p(o_pk_1[8]), .o_g(
        o_gk_1_8_) );
  pg_mydesign_22 pg_9 ( .i_a(i_a_9_), .i_b(i_b[9]), .o_p(o_pk_1[9]), .o_g(
        o_gk_1_9_) );
  pg_mydesign_21 pg_10 ( .i_a(i_a_10_), .i_b(i_b[10]), .o_p(o_pk_1[10]), .o_g(
        o_gk_1_10_) );
  pg_mydesign_20 pg_11 ( .i_a(i_a_11_), .i_b(i_b[11]), .o_p(o_pk_1[11]), .o_g(
        o_gk_1_11_) );
  pg_mydesign_19 pg_12 ( .i_a(i_a_12_), .i_b(i_b[12]), .o_p(o_pk_1[12]), .o_g(
        o_gk_1_12_) );
  pg_mydesign_18 pg_13 ( .i_a(i_a_13_), .i_b(i_b[13]), .o_p(o_pk_1[13]), .o_g(
        o_gk_1_13_) );
  pg_mydesign_17 pg_14 ( .i_a(i_a_14_), .i_b(i_b[14]), .o_p(o_pk_1[14]), .o_g(
        o_gk_1_14_) );
  pg_mydesign_16 pg_15 ( .i_a(i_a_15_), .i_b(i_b[15]), .o_p(o_pk_1[15]), .o_g(
        o_gk_1_15_) );
  pg_mydesign_15 pg_16 ( .i_a(i_a_16_), .i_b(i_b[16]), .o_p(o_pk_1[16]), .o_g(
        o_gk_1_16_) );
  pg_mydesign_14 pg_17 ( .i_a(i_a_17_), .i_b(i_b[17]), .o_p(o_pk_1[17]), .o_g(
        o_gk_1_17_) );
  pg_mydesign_13 pg_18 ( .i_a(i_a_18_), .i_b(i_b[18]), .o_p(o_pk_1[18]), .o_g(
        o_gk_1_18_) );
  pg_mydesign_12 pg_19 ( .i_a(i_a_19_), .i_b(i_b[19]), .o_p(o_pk_1[19]), .o_g(
        o_gk_1_19_) );
  pg_mydesign_11 pg_20 ( .i_a(i_a_20_), .i_b(i_b[20]), .o_p(o_pk_1[20]), .o_g(
        o_gk_1_20_) );
  pg_mydesign_10 pg_21 ( .i_a(i_a_21_), .i_b(i_b[21]), .o_p(o_pk_1[21]), .o_g(
        o_gk_1_21_) );
  pg_mydesign_9 pg_22 ( .i_a(i_a_22_), .i_b(i_b[22]), .o_p(o_pk_1[22]), .o_g(
        o_gk_1_22_) );
  pg_mydesign_8 pg_23 ( .i_a(i_a_23_), .i_b(i_b[23]), .o_p(o_pk_1[23]), .o_g(
        o_gk_1_23_) );
  pg_mydesign_7 pg_24 ( .i_a(i_a_24_), .i_b(i_b[24]), .o_p(o_pk_1[24]), .o_g(
        o_gk_1_24_) );
  pg_mydesign_6 pg_25 ( .i_a(i_a_25_), .i_b(i_b[25]), .o_p(o_pk_1[25]), .o_g(
        o_gk_1_25_) );
  pg_mydesign_5 pg_26 ( .i_a(i_a_26_), .i_b(i_b[26]), .o_p(o_pk_1[26]), .o_g(
        o_gk_1_26_) );
  pg_mydesign_4 pg_27 ( .i_a(i_a_27_), .i_b(i_b[27]), .o_p(o_pk_1[27]), .o_g(
        o_gk_1_27_) );
  pg_mydesign_3 pg_28 ( .i_a(i_a_28_), .i_b(i_b[28]), .o_p(o_pk_1[28]), .o_g(
        o_gk_1_28_) );
  pg_mydesign_2 pg_29 ( .i_a(i_a_29_), .i_b(i_b[29]), .o_p(o_pk_1[29]), .o_g(
        o_gk_1_29_) );
  pg_mydesign_1 pg_30 ( .i_a(i_a_30_), .i_b(i_b[30]), .o_p(o_pk_1[30]), .o_g(
        o_gk_1_30_) );
  pg_mydesign_0 pg_31 ( .i_a(i_a_31_), .i_b(i_b[31]), .o_p(o_pk_1[31]), .o_g(
        o_gk_1_31_) );
endmodule


module black_mydesign_101 ( i_pj, i_pk, o_p );
  input i_pj, i_pk;
  output o_p;


  AND2XL U1 ( .A(i_pk), .B(i_pj), .Y(o_p) );
endmodule


module black_mydesign_71 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  BUFX1 U1 ( .A(i_pk), .Y(n1) );
  AND2XL U2 ( .A(n1), .B(i_pj), .Y(o_p) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_72 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1;

  AND2XL U1 ( .A(i_pk), .B(i_pj), .Y(o_p) );
  AOI21XL U2 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
endmodule


module black_mydesign_73 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  BUFX1 U1 ( .A(i_pk), .Y(n1) );
  AND2XL U2 ( .A(n1), .B(i_pj), .Y(o_p) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_74 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1;

  AND2XL U1 ( .A(i_pk), .B(i_pj), .Y(o_p) );
  AOI21XL U2 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
endmodule


module black_mydesign_75 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  BUFX1 U1 ( .A(i_pk), .Y(n1) );
  AND2XL U2 ( .A(n1), .B(i_pj), .Y(o_p) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_76 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1;

  AND2XL U1 ( .A(i_pk), .B(i_pj), .Y(o_p) );
  AOI21XL U2 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
endmodule


module black_mydesign_77 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  BUFX1 U1 ( .A(i_pk), .Y(n1) );
  AND2XL U2 ( .A(n1), .B(i_pj), .Y(o_p) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_78 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1;

  AND2XL U1 ( .A(i_pk), .B(i_pj), .Y(o_p) );
  AOI21XL U2 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
endmodule


module black_mydesign_79 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  BUFX1 U1 ( .A(i_pk), .Y(n1) );
  AND2XL U2 ( .A(n1), .B(i_pj), .Y(o_p) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_80 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1;

  AND2XL U1 ( .A(i_pk), .B(i_pj), .Y(o_p) );
  AOI21XL U2 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
endmodule


module black_mydesign_81 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1;

  AND2XL U1 ( .A(i_pk), .B(i_pj), .Y(o_p) );
  AOI21XL U2 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
endmodule


module black_mydesign_82 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  AND2XL U1 ( .A(n1), .B(i_pj), .Y(o_p) );
  BUFX1 U2 ( .A(i_pk), .Y(n1) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_83 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1;

  AND2XL U1 ( .A(i_pk), .B(i_pj), .Y(o_p) );
  AOI21XL U2 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
endmodule


module black_mydesign_84 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  AND2XL U1 ( .A(n1), .B(i_pj), .Y(o_p) );
  BUFX1 U2 ( .A(i_pk), .Y(n1) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_85 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1;

  AND2XL U1 ( .A(i_pk), .B(i_pj), .Y(o_p) );
  AOI21XL U2 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
endmodule


module black_mydesign_86 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  AND2XL U1 ( .A(n1), .B(i_pj), .Y(o_p) );
  BUFX1 U2 ( .A(i_pk), .Y(n1) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_87 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1;

  AND2XL U1 ( .A(i_pk), .B(i_pj), .Y(o_p) );
  AOI21XL U2 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
endmodule


module black_mydesign_88 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  AND2XL U1 ( .A(n1), .B(i_pj), .Y(o_p) );
  BUFX1 U2 ( .A(i_pk), .Y(n1) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_89 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1;

  AND2XL U1 ( .A(i_pk), .B(i_pj), .Y(o_p) );
  AOI21XL U2 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
endmodule


module black_mydesign_90 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  AND2XL U1 ( .A(n1), .B(i_pj), .Y(o_p) );
  BUFX1 U2 ( .A(i_pk), .Y(n1) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_91 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1;

  AND2XL U1 ( .A(i_pk), .B(i_pj), .Y(o_p) );
  AOI21XL U2 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
endmodule


module black_mydesign_92 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  AND2XL U1 ( .A(n1), .B(i_pj), .Y(o_p) );
  BUFX1 U2 ( .A(i_pk), .Y(n1) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_93 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1;

  AND2XL U1 ( .A(i_pk), .B(i_pj), .Y(o_p) );
  AOI21XL U2 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
endmodule


module black_mydesign_94 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  AND2XL U1 ( .A(n1), .B(i_pj), .Y(o_p) );
  BUFX1 U2 ( .A(i_pk), .Y(n1) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_95 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1;

  AND2XL U1 ( .A(i_pk), .B(i_pj), .Y(o_p) );
  AOI21XL U2 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
endmodule


module black_mydesign_96 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  AND2XL U1 ( .A(n1), .B(i_pj), .Y(o_p) );
  BUFX1 U2 ( .A(i_pk), .Y(n1) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_97 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1;

  AND2XL U1 ( .A(i_pk), .B(i_pj), .Y(o_p) );
  AOI21XL U2 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
endmodule


module black_mydesign_98 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  INVXL U1 ( .A(n2), .Y(o_g) );
  AOI21XL U2 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  AND2XL U3 ( .A(n1), .B(i_pj), .Y(o_p) );
  BUFX1 U4 ( .A(i_pk), .Y(n1) );
endmodule


module black_mydesign_99 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1;

  INVXL U1 ( .A(n1), .Y(o_g) );
  AOI21XL U2 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  AND2XL U3 ( .A(i_pk), .B(i_pj), .Y(o_p) );
endmodule


module black_mydesign_100 ( i_pj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1;

  INVXL U1 ( .A(n1), .Y(o_g) );
  AND2XL U2 ( .A(i_pk), .B(i_pj), .Y(o_p) );
  INVXL U3 ( .A(i_gk), .Y(n1) );
endmodule


module ks_2 ( i_pk, o_pk, o_p_save, i_gk_31_, i_gk_30_, i_gk_29_, i_gk_28_, 
        i_gk_27_, i_gk_26_, i_gk_25_, i_gk_24_, i_gk_23_, i_gk_22_, i_gk_21_, 
        i_gk_20_, i_gk_19_, i_gk_18_, i_gk_17_, i_gk_16_, i_gk_15_, i_gk_14_, 
        i_gk_13_, i_gk_12_, i_gk_11_, i_gk_10_, i_gk_9_, i_gk_8_, i_gk_7_, 
        i_gk_6_, i_gk_5_, i_gk_4_, i_gk_3_, i_gk_2_, o_gk_31_, o_gk_30_, 
        o_gk_29_, o_gk_28_, o_gk_27_, o_gk_26_, o_gk_25_, o_gk_24_, o_gk_23_, 
        o_gk_22_, o_gk_21_, o_gk_20_, o_gk_19_, o_gk_18_, o_gk_17_, o_gk_16_, 
        o_gk_15_, o_gk_14_, o_gk_13_, o_gk_12_, o_gk_11_, o_gk_10_, o_gk_9_, 
        o_gk_8_, o_gk_7_, o_gk_6_, o_gk_5_, o_gk_4_, o_gk_3_, o_gk_2_ );
  input [31:0] i_pk;
  output [30:0] o_pk;
  output [31:0] o_p_save;
  input i_gk_31_, i_gk_30_, i_gk_29_, i_gk_28_, i_gk_27_, i_gk_26_, i_gk_25_,
         i_gk_24_, i_gk_23_, i_gk_22_, i_gk_21_, i_gk_20_, i_gk_19_, i_gk_18_,
         i_gk_17_, i_gk_16_, i_gk_15_, i_gk_14_, i_gk_13_, i_gk_12_, i_gk_11_,
         i_gk_10_, i_gk_9_, i_gk_8_, i_gk_7_, i_gk_6_, i_gk_5_, i_gk_4_,
         i_gk_3_, i_gk_2_;
  output o_gk_31_, o_gk_30_, o_gk_29_, o_gk_28_, o_gk_27_, o_gk_26_, o_gk_25_,
         o_gk_24_, o_gk_23_, o_gk_22_, o_gk_21_, o_gk_20_, o_gk_19_, o_gk_18_,
         o_gk_17_, o_gk_16_, o_gk_15_, o_gk_14_, o_gk_13_, o_gk_12_, o_gk_11_,
         o_gk_10_, o_gk_9_, o_gk_8_, o_gk_7_, o_gk_6_, o_gk_5_, o_gk_4_,
         o_gk_3_, o_gk_2_;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n33;

  black_mydesign_101 bc_0 ( .i_pj(i_pk[0]), .i_pk(o_p_save[1]), .o_p(o_pk[0])
         );
  black_mydesign_100 bc_1 ( .i_pj(i_pk[1]), .i_pk(o_p_save[2]), .i_gk(i_gk_2_), 
        .o_g(o_gk_2_), .o_p(o_pk[1]) );
  black_mydesign_99 bc_2 ( .i_pj(i_pk[2]), .i_gj(i_gk_2_), .i_pk(n2), .i_gk(
        i_gk_3_), .o_g(o_gk_3_), .o_p(o_pk[2]) );
  black_mydesign_98 bc_3 ( .i_pj(n3), .i_gj(i_gk_3_), .i_pk(i_pk[4]), .i_gk(
        i_gk_4_), .o_g(o_gk_4_), .o_p(o_pk[3]) );
  black_mydesign_97 bc_4 ( .i_pj(o_p_save[4]), .i_gj(i_gk_4_), .i_pk(n4), 
        .i_gk(i_gk_5_), .o_g(o_gk_5_), .o_p(o_pk[4]) );
  black_mydesign_96 bc_5 ( .i_pj(n5), .i_gj(i_gk_5_), .i_pk(i_pk[6]), .i_gk(
        i_gk_6_), .o_g(o_gk_6_), .o_p(o_pk[5]) );
  black_mydesign_95 bc_6 ( .i_pj(o_p_save[6]), .i_gj(i_gk_6_), .i_pk(n6), 
        .i_gk(i_gk_7_), .o_g(o_gk_7_), .o_p(o_pk[6]) );
  black_mydesign_94 bc_7 ( .i_pj(n7), .i_gj(i_gk_7_), .i_pk(i_pk[8]), .i_gk(
        i_gk_8_), .o_g(o_gk_8_), .o_p(o_pk[7]) );
  black_mydesign_93 bc_8 ( .i_pj(o_p_save[8]), .i_gj(i_gk_8_), .i_pk(n8), 
        .i_gk(i_gk_9_), .o_g(o_gk_9_), .o_p(o_pk[8]) );
  black_mydesign_92 bc_9 ( .i_pj(n9), .i_gj(i_gk_9_), .i_pk(i_pk[10]), .i_gk(
        i_gk_10_), .o_g(o_gk_10_), .o_p(o_pk[9]) );
  black_mydesign_91 bc_10 ( .i_pj(o_p_save[10]), .i_gj(i_gk_10_), .i_pk(n11), 
        .i_gk(i_gk_11_), .o_g(o_gk_11_), .o_p(o_pk[10]) );
  black_mydesign_90 bc_11 ( .i_pj(n10), .i_gj(i_gk_11_), .i_pk(i_pk[12]), 
        .i_gk(i_gk_12_), .o_g(o_gk_12_), .o_p(o_pk[11]) );
  black_mydesign_89 bc_12 ( .i_pj(o_p_save[12]), .i_gj(i_gk_12_), .i_pk(n13), 
        .i_gk(i_gk_13_), .o_g(o_gk_13_), .o_p(o_pk[12]) );
  black_mydesign_88 bc_13 ( .i_pj(n12), .i_gj(i_gk_13_), .i_pk(i_pk[14]), 
        .i_gk(i_gk_14_), .o_g(o_gk_14_), .o_p(o_pk[13]) );
  black_mydesign_87 bc_14 ( .i_pj(o_p_save[14]), .i_gj(i_gk_14_), .i_pk(n15), 
        .i_gk(i_gk_15_), .o_g(o_gk_15_), .o_p(o_pk[14]) );
  black_mydesign_86 bc_15 ( .i_pj(n14), .i_gj(i_gk_15_), .i_pk(i_pk[16]), 
        .i_gk(i_gk_16_), .o_g(o_gk_16_), .o_p(o_pk[15]) );
  black_mydesign_85 bc_16 ( .i_pj(o_p_save[16]), .i_gj(i_gk_16_), .i_pk(n16), 
        .i_gk(i_gk_17_), .o_g(o_gk_17_), .o_p(o_pk[16]) );
  black_mydesign_84 bc_17 ( .i_pj(n17), .i_gj(i_gk_17_), .i_pk(n33), .i_gk(
        i_gk_18_), .o_g(o_gk_18_), .o_p(o_pk[17]) );
  black_mydesign_83 bc_18 ( .i_pj(i_pk[18]), .i_gj(i_gk_18_), .i_pk(n18), 
        .i_gk(i_gk_19_), .o_g(o_gk_19_), .o_p(o_pk[18]) );
  black_mydesign_82 bc_19 ( .i_pj(n19), .i_gj(i_gk_19_), .i_pk(i_pk[20]), 
        .i_gk(i_gk_20_), .o_g(o_gk_20_), .o_p(o_pk[19]) );
  black_mydesign_81 bc_20 ( .i_pj(o_p_save[20]), .i_gj(i_gk_20_), .i_pk(n20), 
        .i_gk(i_gk_21_), .o_g(o_gk_21_), .o_p(o_pk[20]) );
  black_mydesign_80 bc_21 ( .i_pj(n21), .i_gj(i_gk_21_), .i_pk(n22), .i_gk(
        i_gk_22_), .o_g(o_gk_22_), .o_p(o_pk[21]) );
  black_mydesign_79 bc_22 ( .i_pj(n23), .i_gj(i_gk_22_), .i_pk(i_pk[23]), 
        .i_gk(i_gk_23_), .o_g(o_gk_23_), .o_p(o_pk[22]) );
  black_mydesign_78 bc_23 ( .i_pj(o_p_save[23]), .i_gj(i_gk_23_), .i_pk(n24), 
        .i_gk(i_gk_24_), .o_g(o_gk_24_), .o_p(o_pk[23]) );
  black_mydesign_77 bc_24 ( .i_pj(n25), .i_gj(i_gk_24_), .i_pk(i_pk[25]), 
        .i_gk(i_gk_25_), .o_g(o_gk_25_), .o_p(o_pk[24]) );
  black_mydesign_76 bc_25 ( .i_pj(o_p_save[25]), .i_gj(i_gk_25_), .i_pk(n26), 
        .i_gk(i_gk_26_), .o_g(o_gk_26_), .o_p(o_pk[25]) );
  black_mydesign_75 bc_26 ( .i_pj(n27), .i_gj(i_gk_26_), .i_pk(i_pk[27]), 
        .i_gk(i_gk_27_), .o_g(o_gk_27_), .o_p(o_pk[26]) );
  black_mydesign_74 bc_27 ( .i_pj(o_p_save[27]), .i_gj(i_gk_27_), .i_pk(n28), 
        .i_gk(i_gk_28_), .o_g(o_gk_28_), .o_p(o_pk[27]) );
  black_mydesign_73 bc_28 ( .i_pj(n29), .i_gj(i_gk_28_), .i_pk(i_pk[29]), 
        .i_gk(i_gk_29_), .o_g(o_gk_29_), .o_p(o_pk[28]) );
  black_mydesign_72 bc_29 ( .i_pj(o_p_save[29]), .i_gj(i_gk_29_), .i_pk(n30), 
        .i_gk(i_gk_30_), .o_g(o_gk_30_), .o_p(o_pk[29]) );
  black_mydesign_71 bc_30 ( .i_pj(n31), .i_gj(i_gk_30_), .i_pk(i_pk[31]), 
        .i_gk(i_gk_31_), .o_g(o_gk_31_), .o_p(o_pk[30]) );
  BUFX1 U1 ( .A(i_pk[2]), .Y(o_p_save[2]) );
  BUFX1 U2 ( .A(i_pk[3]), .Y(n2) );
  BUFX1 U3 ( .A(i_pk[3]), .Y(n3) );
  BUFX1 U4 ( .A(i_pk[5]), .Y(n4) );
  BUFX1 U5 ( .A(i_pk[5]), .Y(n5) );
  BUFX1 U6 ( .A(i_pk[7]), .Y(n6) );
  BUFX1 U7 ( .A(i_pk[7]), .Y(n7) );
  BUFX1 U8 ( .A(i_pk[9]), .Y(n8) );
  BUFX1 U9 ( .A(i_pk[9]), .Y(n9) );
  BUFX1 U10 ( .A(i_pk[11]), .Y(n10) );
  BUFX1 U11 ( .A(i_pk[11]), .Y(n11) );
  BUFX1 U12 ( .A(i_pk[13]), .Y(n12) );
  BUFX1 U13 ( .A(i_pk[13]), .Y(n13) );
  BUFX1 U14 ( .A(i_pk[15]), .Y(n14) );
  BUFX1 U15 ( .A(i_pk[15]), .Y(n15) );
  BUFX1 U16 ( .A(i_pk[17]), .Y(n16) );
  BUFX1 U17 ( .A(i_pk[17]), .Y(n17) );
  BUFX1 U18 ( .A(i_pk[19]), .Y(n18) );
  BUFX1 U19 ( .A(i_pk[19]), .Y(n19) );
  BUFX1 U20 ( .A(i_pk[21]), .Y(n20) );
  BUFX1 U21 ( .A(i_pk[21]), .Y(n21) );
  BUFX1 U22 ( .A(i_pk[22]), .Y(n22) );
  BUFX1 U23 ( .A(i_pk[22]), .Y(n23) );
  BUFX1 U24 ( .A(i_pk[24]), .Y(n24) );
  BUFX1 U25 ( .A(i_pk[24]), .Y(n25) );
  BUFX1 U26 ( .A(i_pk[26]), .Y(n26) );
  BUFX1 U27 ( .A(i_pk[26]), .Y(n27) );
  BUFX1 U28 ( .A(i_pk[28]), .Y(n28) );
  BUFX1 U29 ( .A(i_pk[28]), .Y(n29) );
  BUFX1 U30 ( .A(i_pk[30]), .Y(n30) );
  BUFX1 U31 ( .A(i_pk[30]), .Y(n31) );
  BUFX1 U32 ( .A(n31), .Y(o_p_save[30]) );
  BUFX1 U33 ( .A(n29), .Y(o_p_save[28]) );
  BUFX1 U34 ( .A(n27), .Y(o_p_save[26]) );
  BUFX1 U35 ( .A(n23), .Y(o_p_save[22]) );
  BUFX1 U36 ( .A(n21), .Y(o_p_save[21]) );
  BUFX1 U37 ( .A(n19), .Y(o_p_save[19]) );
  BUFX1 U38 ( .A(n17), .Y(o_p_save[17]) );
  BUFX1 U39 ( .A(n14), .Y(o_p_save[15]) );
  BUFX1 U40 ( .A(n12), .Y(o_p_save[13]) );
  BUFX1 U41 ( .A(n10), .Y(o_p_save[11]) );
  BUFX1 U42 ( .A(n7), .Y(o_p_save[7]) );
  BUFX1 U43 ( .A(n5), .Y(o_p_save[5]) );
  BUFX1 U44 ( .A(n3), .Y(o_p_save[3]) );
  BUFX1 U45 ( .A(i_pk[1]), .Y(o_p_save[1]) );
  BUFX1 U46 ( .A(i_pk[14]), .Y(o_p_save[14]) );
  BUFX1 U47 ( .A(i_pk[12]), .Y(o_p_save[12]) );
  BUFX1 U48 ( .A(i_pk[10]), .Y(o_p_save[10]) );
  BUFX1 U49 ( .A(i_pk[4]), .Y(o_p_save[4]) );
  BUFX1 U50 ( .A(i_pk[8]), .Y(o_p_save[8]) );
  BUFX1 U51 ( .A(i_pk[6]), .Y(o_p_save[6]) );
  BUFX1 U52 ( .A(i_pk[29]), .Y(o_p_save[29]) );
  BUFX1 U53 ( .A(i_pk[27]), .Y(o_p_save[27]) );
  BUFX1 U54 ( .A(i_pk[25]), .Y(o_p_save[25]) );
  BUFX1 U55 ( .A(i_pk[18]), .Y(n33) );
  BUFX1 U56 ( .A(n33), .Y(o_p_save[18]) );
  BUFX1 U57 ( .A(i_pk[20]), .Y(o_p_save[20]) );
  BUFX1 U58 ( .A(i_pk[23]), .Y(o_p_save[23]) );
  BUFX1 U59 ( .A(i_pk[0]), .Y(o_p_save[0]) );
  BUFX1 U60 ( .A(n9), .Y(o_p_save[9]) );
  BUFX1 U61 ( .A(i_pk[16]), .Y(o_p_save[16]) );
  BUFX1 U62 ( .A(n25), .Y(o_p_save[24]) );
  BUFX1 U63 ( .A(i_pk[31]), .Y(o_p_save[31]) );
endmodule


module black_mydesign_42 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1;

  AND2XL U1 ( .A(i_pk), .B(i_pj), .Y(o_p) );
  AOI21XL U2 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
endmodule


module black_mydesign_43 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1;

  AND2XL U1 ( .A(i_pk), .B(i_pj), .Y(o_p) );
  AOI21XL U2 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
endmodule


module black_mydesign_44 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  BUFX1 U1 ( .A(i_pk), .Y(n1) );
  AND2XL U2 ( .A(n1), .B(i_pj), .Y(o_p) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_45 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  BUFX1 U1 ( .A(i_pk), .Y(n1) );
  AND2XL U2 ( .A(n1), .B(i_pj), .Y(o_p) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_46 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  BUFX1 U1 ( .A(i_pk), .Y(n1) );
  AND2XL U2 ( .A(n1), .B(i_pj), .Y(o_p) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_47 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  BUFX1 U1 ( .A(i_pk), .Y(n1) );
  AND2XL U2 ( .A(n1), .B(i_pj), .Y(o_p) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_48 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  BUFX1 U1 ( .A(i_pk), .Y(n1) );
  AND2XL U2 ( .A(n1), .B(i_pj), .Y(o_p) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_49 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  BUFX1 U1 ( .A(i_pk), .Y(n1) );
  AND2XL U2 ( .A(n1), .B(i_pj), .Y(o_p) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_50 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  BUFX1 U1 ( .A(i_pk), .Y(n1) );
  AND2XL U2 ( .A(n1), .B(i_pj), .Y(o_p) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_51 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  AND2XL U1 ( .A(n1), .B(i_pj), .Y(o_p) );
  BUFX1 U2 ( .A(i_pk), .Y(n1) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_52 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  AND2XL U1 ( .A(n1), .B(i_pj), .Y(o_p) );
  BUFX1 U2 ( .A(i_pk), .Y(n1) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_53 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  BUFX1 U1 ( .A(i_pk), .Y(n1) );
  AND2XL U2 ( .A(n1), .B(i_pj), .Y(o_p) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_54 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  BUFX1 U1 ( .A(i_pk), .Y(n1) );
  AND2XL U2 ( .A(n1), .B(i_pj), .Y(o_p) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_55 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  AND2XL U1 ( .A(n1), .B(i_pj), .Y(o_p) );
  BUFX1 U2 ( .A(i_pk), .Y(n1) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_56 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  AND2XL U1 ( .A(n1), .B(i_pj), .Y(o_p) );
  BUFX1 U2 ( .A(i_pk), .Y(n1) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_57 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  AND2XL U1 ( .A(n1), .B(i_pj), .Y(o_p) );
  BUFX1 U2 ( .A(i_pk), .Y(n1) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_58 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  AND2XL U1 ( .A(n1), .B(i_pj), .Y(o_p) );
  BUFX1 U2 ( .A(i_pk), .Y(n1) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_59 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  AND2XL U1 ( .A(n1), .B(i_pj), .Y(o_p) );
  BUFX1 U2 ( .A(i_pk), .Y(n1) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_60 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  AND2XL U1 ( .A(n1), .B(i_pj), .Y(o_p) );
  BUFX1 U2 ( .A(i_pk), .Y(n1) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_61 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  AND2XL U1 ( .A(n1), .B(i_pj), .Y(o_p) );
  BUFX1 U2 ( .A(i_pk), .Y(n1) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_62 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  AND2XL U1 ( .A(n1), .B(i_pj), .Y(o_p) );
  BUFX1 U2 ( .A(i_pk), .Y(n1) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_63 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  AND2XL U1 ( .A(n1), .B(i_pj), .Y(o_p) );
  BUFX1 U2 ( .A(i_pk), .Y(n1) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_64 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  AND2XL U1 ( .A(n1), .B(i_pj), .Y(o_p) );
  BUFX1 U2 ( .A(i_pk), .Y(n1) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_65 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  AND2XL U1 ( .A(n1), .B(i_pj), .Y(o_p) );
  BUFX1 U2 ( .A(i_pk), .Y(n1) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_66 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  AND2XL U1 ( .A(n1), .B(i_pj), .Y(o_p) );
  BUFX1 U2 ( .A(i_pk), .Y(n1) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_67 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  INVXL U1 ( .A(n2), .Y(o_g) );
  AOI21XL U2 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  AND2XL U3 ( .A(n1), .B(i_pj), .Y(o_p) );
  BUFX1 U4 ( .A(i_pk), .Y(n1) );
endmodule


module black_mydesign_68 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  INVXL U1 ( .A(n2), .Y(o_g) );
  AOI21XL U2 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  BUFX1 U3 ( .A(i_pk), .Y(n1) );
  AND2XL U4 ( .A(n1), .B(i_pj), .Y(o_p) );
endmodule


module black_mydesign_69 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  INVXL U1 ( .A(n2), .Y(o_g) );
  AOI21XL U2 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  BUFX1 U3 ( .A(i_pk), .Y(n1) );
  AND2XL U4 ( .A(n1), .B(i_pj), .Y(o_p) );
endmodule


module black_mydesign_70 ( i_pj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1;

  INVXL U1 ( .A(n1), .Y(o_g) );
  INVXL U2 ( .A(i_gk), .Y(n1) );
  AND2XL U3 ( .A(i_pk), .B(i_pj), .Y(o_p) );
endmodule


module grey_mydesign_28 ( i_gk, o_g );
  input i_gk;
  output o_g;
  wire   n1;

  INVXL U1 ( .A(n1), .Y(o_g) );
  INVXL U2 ( .A(i_gk), .Y(n1) );
endmodule


module ks_3 ( i_pk, i_p_save, o_pk, o_p_save, i_gk_31_, i_gk_30_, i_gk_29_, 
        i_gk_28_, i_gk_27_, i_gk_26_, i_gk_25_, i_gk_24_, i_gk_23_, i_gk_22_, 
        i_gk_21_, i_gk_20_, i_gk_19_, i_gk_18_, i_gk_17_, i_gk_16_, i_gk_15_, 
        i_gk_14_, i_gk_13_, i_gk_12_, i_gk_11_, i_gk_10_, i_gk_9_, i_gk_8_, 
        i_gk_7_, i_gk_6_, i_gk_5_, i_gk_4_, i_gk_3_, i_gk_2_, o_gk_31_, 
        o_gk_30_, o_gk_29_, o_gk_28_, o_gk_27_, o_gk_26_, o_gk_25_, o_gk_24_, 
        o_gk_23_, o_gk_22_, o_gk_21_, o_gk_20_, o_gk_19_, o_gk_18_, o_gk_17_, 
        o_gk_16_, o_gk_15_, o_gk_14_, o_gk_13_, o_gk_12_, o_gk_11_, o_gk_10_, 
        o_gk_9_, o_gk_8_, o_gk_7_, o_gk_6_, o_gk_5_, o_gk_4_, o_gk_3_, o_gk_2_
 );
  input [30:0] i_pk;
  input [31:0] i_p_save;
  output [28:0] o_pk;
  output [31:0] o_p_save;
  input i_gk_31_, i_gk_30_, i_gk_29_, i_gk_28_, i_gk_27_, i_gk_26_, i_gk_25_,
         i_gk_24_, i_gk_23_, i_gk_22_, i_gk_21_, i_gk_20_, i_gk_19_, i_gk_18_,
         i_gk_17_, i_gk_16_, i_gk_15_, i_gk_14_, i_gk_13_, i_gk_12_, i_gk_11_,
         i_gk_10_, i_gk_9_, i_gk_8_, i_gk_7_, i_gk_6_, i_gk_5_, i_gk_4_,
         i_gk_3_, i_gk_2_;
  output o_gk_31_, o_gk_30_, o_gk_29_, o_gk_28_, o_gk_27_, o_gk_26_, o_gk_25_,
         o_gk_24_, o_gk_23_, o_gk_22_, o_gk_21_, o_gk_20_, o_gk_19_, o_gk_18_,
         o_gk_17_, o_gk_16_, o_gk_15_, o_gk_14_, o_gk_13_, o_gk_12_, o_gk_11_,
         o_gk_10_, o_gk_9_, o_gk_8_, o_gk_7_, o_gk_6_, o_gk_5_, o_gk_4_,
         o_gk_3_, o_gk_2_;


  grey_mydesign_28 gc_1 ( .i_gk(i_gk_2_), .o_g(o_gk_2_) );
  black_mydesign_70 bc_0 ( .i_pj(i_pk[0]), .i_pk(i_pk[2]), .i_gk(i_gk_3_), 
        .o_g(o_gk_3_), .o_p(o_pk[0]) );
  black_mydesign_69 bc_1 ( .i_pj(i_pk[1]), .i_gj(i_gk_2_), .i_pk(i_pk[3]), 
        .i_gk(i_gk_4_), .o_g(o_gk_4_), .o_p(o_pk[1]) );
  black_mydesign_68 bc_2 ( .i_pj(i_pk[2]), .i_gj(i_gk_3_), .i_pk(i_pk[4]), 
        .i_gk(i_gk_5_), .o_g(o_gk_5_), .o_p(o_pk[2]) );
  black_mydesign_67 bc_3 ( .i_pj(i_pk[3]), .i_gj(i_gk_4_), .i_pk(i_pk[5]), 
        .i_gk(i_gk_6_), .o_g(o_gk_6_), .o_p(o_pk[3]) );
  black_mydesign_66 bc_4 ( .i_pj(i_pk[4]), .i_gj(i_gk_5_), .i_pk(i_pk[6]), 
        .i_gk(i_gk_7_), .o_g(o_gk_7_), .o_p(o_pk[4]) );
  black_mydesign_65 bc_5 ( .i_pj(i_pk[5]), .i_gj(i_gk_6_), .i_pk(i_pk[7]), 
        .i_gk(i_gk_8_), .o_g(o_gk_8_), .o_p(o_pk[5]) );
  black_mydesign_64 bc_6 ( .i_pj(i_pk[6]), .i_gj(i_gk_7_), .i_pk(i_pk[8]), 
        .i_gk(i_gk_9_), .o_g(o_gk_9_), .o_p(o_pk[6]) );
  black_mydesign_63 bc_7 ( .i_pj(i_pk[7]), .i_gj(i_gk_8_), .i_pk(i_pk[9]), 
        .i_gk(i_gk_10_), .o_g(o_gk_10_), .o_p(o_pk[7]) );
  black_mydesign_62 bc_8 ( .i_pj(i_pk[8]), .i_gj(i_gk_9_), .i_pk(i_pk[10]), 
        .i_gk(i_gk_11_), .o_g(o_gk_11_), .o_p(o_pk[8]) );
  black_mydesign_61 bc_9 ( .i_pj(i_pk[9]), .i_gj(i_gk_10_), .i_pk(i_pk[11]), 
        .i_gk(i_gk_12_), .o_g(o_gk_12_), .o_p(o_pk[9]) );
  black_mydesign_60 bc_10 ( .i_pj(i_pk[10]), .i_gj(i_gk_11_), .i_pk(i_pk[12]), 
        .i_gk(i_gk_13_), .o_g(o_gk_13_), .o_p(o_pk[10]) );
  black_mydesign_59 bc_11 ( .i_pj(i_pk[11]), .i_gj(i_gk_12_), .i_pk(i_pk[13]), 
        .i_gk(i_gk_14_), .o_g(o_gk_14_), .o_p(o_pk[11]) );
  black_mydesign_58 bc_12 ( .i_pj(i_pk[12]), .i_gj(i_gk_13_), .i_pk(i_pk[14]), 
        .i_gk(i_gk_15_), .o_g(o_gk_15_), .o_p(o_pk[12]) );
  black_mydesign_57 bc_13 ( .i_pj(i_pk[13]), .i_gj(i_gk_14_), .i_pk(i_pk[15]), 
        .i_gk(i_gk_16_), .o_g(o_gk_16_), .o_p(o_pk[13]) );
  black_mydesign_56 bc_14 ( .i_pj(i_pk[14]), .i_gj(i_gk_15_), .i_pk(i_pk[16]), 
        .i_gk(i_gk_17_), .o_g(o_gk_17_), .o_p(o_pk[14]) );
  black_mydesign_55 bc_15 ( .i_pj(i_pk[15]), .i_gj(i_gk_16_), .i_pk(i_pk[17]), 
        .i_gk(i_gk_18_), .o_g(o_gk_18_), .o_p(o_pk[15]) );
  black_mydesign_54 bc_16 ( .i_pj(i_pk[16]), .i_gj(i_gk_17_), .i_pk(i_pk[18]), 
        .i_gk(i_gk_19_), .o_g(o_gk_19_), .o_p(o_pk[16]) );
  black_mydesign_53 bc_17 ( .i_pj(i_pk[17]), .i_gj(i_gk_18_), .i_pk(i_pk[19]), 
        .i_gk(i_gk_20_), .o_g(o_gk_20_), .o_p(o_pk[17]) );
  black_mydesign_52 bc_18 ( .i_pj(i_pk[18]), .i_gj(i_gk_19_), .i_pk(i_pk[20]), 
        .i_gk(i_gk_21_), .o_g(o_gk_21_), .o_p(o_pk[18]) );
  black_mydesign_51 bc_19 ( .i_pj(i_pk[19]), .i_gj(i_gk_20_), .i_pk(i_pk[21]), 
        .i_gk(i_gk_22_), .o_g(o_gk_22_), .o_p(o_pk[19]) );
  black_mydesign_50 bc_20 ( .i_pj(i_pk[20]), .i_gj(i_gk_21_), .i_pk(i_pk[22]), 
        .i_gk(i_gk_23_), .o_g(o_gk_23_), .o_p(o_pk[20]) );
  black_mydesign_49 bc_21 ( .i_pj(i_pk[21]), .i_gj(i_gk_22_), .i_pk(i_pk[23]), 
        .i_gk(i_gk_24_), .o_g(o_gk_24_), .o_p(o_pk[21]) );
  black_mydesign_48 bc_22 ( .i_pj(i_pk[22]), .i_gj(i_gk_23_), .i_pk(i_pk[24]), 
        .i_gk(i_gk_25_), .o_g(o_gk_25_), .o_p(o_pk[22]) );
  black_mydesign_47 bc_23 ( .i_pj(i_pk[23]), .i_gj(i_gk_24_), .i_pk(i_pk[25]), 
        .i_gk(i_gk_26_), .o_g(o_gk_26_), .o_p(o_pk[23]) );
  black_mydesign_46 bc_24 ( .i_pj(i_pk[24]), .i_gj(i_gk_25_), .i_pk(i_pk[26]), 
        .i_gk(i_gk_27_), .o_g(o_gk_27_), .o_p(o_pk[24]) );
  black_mydesign_45 bc_25 ( .i_pj(i_pk[25]), .i_gj(i_gk_26_), .i_pk(i_pk[27]), 
        .i_gk(i_gk_28_), .o_g(o_gk_28_), .o_p(o_pk[25]) );
  black_mydesign_44 bc_26 ( .i_pj(i_pk[26]), .i_gj(i_gk_27_), .i_pk(i_pk[28]), 
        .i_gk(i_gk_29_), .o_g(o_gk_29_), .o_p(o_pk[26]) );
  black_mydesign_43 bc_27 ( .i_pj(i_pk[27]), .i_gj(i_gk_28_), .i_pk(i_pk[29]), 
        .i_gk(i_gk_30_), .o_g(o_gk_30_), .o_p(o_pk[27]) );
  black_mydesign_42 bc_28 ( .i_pj(i_pk[28]), .i_gj(i_gk_29_), .i_pk(i_pk[30]), 
        .i_gk(i_gk_31_), .o_g(o_gk_31_), .o_p(o_pk[28]) );
  BUFX1 U1 ( .A(i_p_save[0]), .Y(o_p_save[0]) );
  BUFX1 U2 ( .A(i_p_save[2]), .Y(o_p_save[2]) );
  BUFX1 U3 ( .A(i_p_save[1]), .Y(o_p_save[1]) );
  BUFX1 U4 ( .A(i_p_save[3]), .Y(o_p_save[3]) );
  BUFX1 U5 ( .A(i_p_save[4]), .Y(o_p_save[4]) );
  BUFX1 U6 ( .A(i_p_save[5]), .Y(o_p_save[5]) );
  BUFX1 U7 ( .A(i_p_save[6]), .Y(o_p_save[6]) );
  BUFX1 U8 ( .A(i_p_save[7]), .Y(o_p_save[7]) );
  BUFX1 U9 ( .A(i_p_save[8]), .Y(o_p_save[8]) );
  BUFX1 U10 ( .A(i_p_save[9]), .Y(o_p_save[9]) );
  BUFX1 U11 ( .A(i_p_save[10]), .Y(o_p_save[10]) );
  BUFX1 U12 ( .A(i_p_save[11]), .Y(o_p_save[11]) );
  BUFX1 U13 ( .A(i_p_save[12]), .Y(o_p_save[12]) );
  BUFX1 U14 ( .A(i_p_save[13]), .Y(o_p_save[13]) );
  BUFX1 U15 ( .A(i_p_save[14]), .Y(o_p_save[14]) );
  BUFX1 U16 ( .A(i_p_save[15]), .Y(o_p_save[15]) );
  BUFX1 U17 ( .A(i_p_save[16]), .Y(o_p_save[16]) );
  BUFX1 U18 ( .A(i_p_save[17]), .Y(o_p_save[17]) );
  BUFX1 U19 ( .A(i_p_save[18]), .Y(o_p_save[18]) );
  BUFX1 U20 ( .A(i_p_save[19]), .Y(o_p_save[19]) );
  BUFX1 U21 ( .A(i_p_save[20]), .Y(o_p_save[20]) );
  BUFX1 U22 ( .A(i_p_save[21]), .Y(o_p_save[21]) );
  BUFX1 U23 ( .A(i_p_save[22]), .Y(o_p_save[22]) );
  BUFX1 U24 ( .A(i_p_save[23]), .Y(o_p_save[23]) );
  BUFX1 U25 ( .A(i_p_save[24]), .Y(o_p_save[24]) );
  BUFX1 U26 ( .A(i_p_save[25]), .Y(o_p_save[25]) );
  BUFX1 U27 ( .A(i_p_save[26]), .Y(o_p_save[26]) );
  BUFX1 U28 ( .A(i_p_save[27]), .Y(o_p_save[27]) );
  BUFX1 U29 ( .A(i_p_save[28]), .Y(o_p_save[28]) );
  BUFX1 U30 ( .A(i_p_save[29]), .Y(o_p_save[29]) );
  BUFX1 U31 ( .A(i_p_save[30]), .Y(o_p_save[30]) );
  BUFX1 U32 ( .A(i_p_save[31]), .Y(o_p_save[31]) );
endmodule


module black_mydesign_17 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1;

  AND2XL U1 ( .A(i_pk), .B(i_pj), .Y(o_p) );
  AOI21XL U2 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
endmodule


module black_mydesign_18 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1;

  AND2XL U1 ( .A(i_pk), .B(i_pj), .Y(o_p) );
  AOI21XL U2 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
endmodule


module black_mydesign_19 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1;

  AND2XL U1 ( .A(i_pk), .B(i_pj), .Y(o_p) );
  AOI21XL U2 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
endmodule


module black_mydesign_20 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1;

  AND2XL U1 ( .A(i_pk), .B(i_pj), .Y(o_p) );
  AOI21XL U2 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
endmodule


module black_mydesign_21 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  BUFX1 U1 ( .A(i_pk), .Y(n1) );
  AND2XL U2 ( .A(n1), .B(i_pj), .Y(o_p) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_22 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  BUFX1 U1 ( .A(i_pk), .Y(n1) );
  AND2XL U2 ( .A(n1), .B(i_pj), .Y(o_p) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_23 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  BUFX1 U1 ( .A(i_pk), .Y(n1) );
  AND2XL U2 ( .A(n1), .B(i_pj), .Y(o_p) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_24 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  BUFX1 U1 ( .A(i_pk), .Y(n1) );
  AND2XL U2 ( .A(n1), .B(i_pj), .Y(o_p) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_25 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  BUFX1 U1 ( .A(i_pk), .Y(n1) );
  AND2XL U2 ( .A(n1), .B(i_pj), .Y(o_p) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_26 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  BUFX1 U1 ( .A(i_pk), .Y(n1) );
  AND2XL U2 ( .A(n1), .B(i_pj), .Y(o_p) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_27 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  AND2XL U1 ( .A(n1), .B(i_pj), .Y(o_p) );
  BUFX1 U2 ( .A(i_pk), .Y(n1) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_28 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  BUFX1 U1 ( .A(i_pk), .Y(n1) );
  AND2XL U2 ( .A(n1), .B(i_pj), .Y(o_p) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_29 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  BUFX1 U1 ( .A(i_pk), .Y(n1) );
  AND2XL U2 ( .A(n1), .B(i_pj), .Y(o_p) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_30 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  AND2XL U1 ( .A(n1), .B(i_pj), .Y(o_p) );
  BUFX1 U2 ( .A(i_pk), .Y(n1) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_31 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  BUFX1 U1 ( .A(i_pk), .Y(n1) );
  AND2XL U2 ( .A(n1), .B(i_pj), .Y(o_p) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_32 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  BUFX1 U1 ( .A(i_pk), .Y(n1) );
  AND2XL U2 ( .A(n1), .B(i_pj), .Y(o_p) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_33 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  BUFX1 U1 ( .A(i_pk), .Y(n1) );
  AND2XL U2 ( .A(n1), .B(i_pj), .Y(o_p) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_34 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  AND2XL U1 ( .A(n1), .B(i_pj), .Y(o_p) );
  BUFX1 U2 ( .A(i_pk), .Y(n1) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_35 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  AND2XL U1 ( .A(n1), .B(i_pj), .Y(o_p) );
  BUFX1 U2 ( .A(i_pk), .Y(n1) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_36 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  AND2XL U1 ( .A(n1), .B(i_pj), .Y(o_p) );
  BUFX1 U2 ( .A(i_pk), .Y(n1) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_37 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  AND2XL U1 ( .A(n1), .B(i_pj), .Y(o_p) );
  BUFX1 U2 ( .A(i_pk), .Y(n1) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_38 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  AND2XL U1 ( .A(n1), .B(i_pj), .Y(o_p) );
  BUFX1 U2 ( .A(i_pk), .Y(n1) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_39 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  INVXL U1 ( .A(n2), .Y(o_g) );
  AOI21XL U2 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  BUFX1 U3 ( .A(i_pk), .Y(n1) );
  AND2XL U4 ( .A(n1), .B(i_pj), .Y(o_p) );
endmodule


module black_mydesign_40 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  INVXL U1 ( .A(n2), .Y(o_g) );
  AOI21XL U2 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  BUFX1 U3 ( .A(i_pk), .Y(n1) );
  AND2XL U4 ( .A(n1), .B(i_pj), .Y(o_p) );
endmodule


module black_mydesign_41 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  INVXL U1 ( .A(n2), .Y(o_g) );
  AOI21XL U2 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  BUFX1 U3 ( .A(i_pk), .Y(n1) );
  AND2XL U4 ( .A(n1), .B(i_pj), .Y(o_p) );
endmodule


module grey_mydesign_24 ( i_gj, i_pk, i_gk, o_g );
  input i_gj, i_pk, i_gk;
  output o_g;
  wire   n1;

  AOI21XL U1 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U2 ( .A(n1), .Y(o_g) );
endmodule


module grey_mydesign_25 ( i_gk, o_g );
  input i_gk;
  output o_g;
  wire   n1;

  INVXL U1 ( .A(n1), .Y(o_g) );
  INVXL U2 ( .A(i_gk), .Y(n1) );
endmodule


module grey_mydesign_26 ( i_gk, o_g );
  input i_gk;
  output o_g;
  wire   n1;

  INVXL U1 ( .A(n1), .Y(o_g) );
  INVXL U2 ( .A(i_gk), .Y(n1) );
endmodule


module grey_mydesign_27 ( i_gk, o_g );
  input i_gk;
  output o_g;
  wire   n2;

  INVXL U2 ( .A(n2), .Y(o_g) );
  INVXL U1 ( .A(i_gk), .Y(n2) );
endmodule


module ks_4 ( i_pk, i_p_save, o_pk, o_p_save, i_gk_31_, i_gk_30_, i_gk_29_, 
        i_gk_28_, i_gk_27_, i_gk_26_, i_gk_25_, i_gk_24_, i_gk_23_, i_gk_22_, 
        i_gk_21_, i_gk_20_, i_gk_19_, i_gk_18_, i_gk_17_, i_gk_16_, i_gk_15_, 
        i_gk_14_, i_gk_13_, i_gk_12_, i_gk_11_, i_gk_10_, i_gk_9_, i_gk_8_, 
        i_gk_7_, i_gk_6_, i_gk_5_, i_gk_4_, i_gk_3_, i_gk_2_, o_gk_31_, 
        o_gk_30_, o_gk_29_, o_gk_28_, o_gk_27_, o_gk_26_, o_gk_25_, o_gk_24_, 
        o_gk_23_, o_gk_22_, o_gk_21_, o_gk_20_, o_gk_19_, o_gk_18_, o_gk_17_, 
        o_gk_16_, o_gk_15_, o_gk_14_, o_gk_13_, o_gk_12_, o_gk_11_, o_gk_10_, 
        o_gk_9_, o_gk_8_, o_gk_7_, o_gk_6_, o_gk_5_, o_gk_4_, o_gk_3_, o_gk_2_
 );
  input [28:0] i_pk;
  input [31:0] i_p_save;
  output [24:0] o_pk;
  output [31:0] o_p_save;
  input i_gk_31_, i_gk_30_, i_gk_29_, i_gk_28_, i_gk_27_, i_gk_26_, i_gk_25_,
         i_gk_24_, i_gk_23_, i_gk_22_, i_gk_21_, i_gk_20_, i_gk_19_, i_gk_18_,
         i_gk_17_, i_gk_16_, i_gk_15_, i_gk_14_, i_gk_13_, i_gk_12_, i_gk_11_,
         i_gk_10_, i_gk_9_, i_gk_8_, i_gk_7_, i_gk_6_, i_gk_5_, i_gk_4_,
         i_gk_3_, i_gk_2_;
  output o_gk_31_, o_gk_30_, o_gk_29_, o_gk_28_, o_gk_27_, o_gk_26_, o_gk_25_,
         o_gk_24_, o_gk_23_, o_gk_22_, o_gk_21_, o_gk_20_, o_gk_19_, o_gk_18_,
         o_gk_17_, o_gk_16_, o_gk_15_, o_gk_14_, o_gk_13_, o_gk_12_, o_gk_11_,
         o_gk_10_, o_gk_9_, o_gk_8_, o_gk_7_, o_gk_6_, o_gk_5_, o_gk_4_,
         o_gk_3_, o_gk_2_;


  grey_mydesign_27 gc_0 ( .i_gk(i_gk_3_), .o_g(o_gk_3_) );
  grey_mydesign_26 gc_1 ( .i_gk(i_gk_4_), .o_g(o_gk_4_) );
  grey_mydesign_25 gc_2 ( .i_gk(i_gk_5_), .o_g(o_gk_5_) );
  grey_mydesign_24 gc_3 ( .i_gj(i_gk_2_), .i_pk(i_pk[3]), .i_gk(i_gk_6_), 
        .o_g(o_gk_6_) );
  black_mydesign_41 bc_0 ( .i_pj(i_pk[0]), .i_gj(i_gk_3_), .i_pk(i_pk[4]), 
        .i_gk(i_gk_7_), .o_g(o_gk_7_), .o_p(o_pk[0]) );
  black_mydesign_40 bc_1 ( .i_pj(i_pk[1]), .i_gj(i_gk_4_), .i_pk(i_pk[5]), 
        .i_gk(i_gk_8_), .o_g(o_gk_8_), .o_p(o_pk[1]) );
  black_mydesign_39 bc_2 ( .i_pj(i_pk[2]), .i_gj(i_gk_5_), .i_pk(i_pk[6]), 
        .i_gk(i_gk_9_), .o_g(o_gk_9_), .o_p(o_pk[2]) );
  black_mydesign_38 bc_3 ( .i_pj(i_pk[3]), .i_gj(i_gk_6_), .i_pk(i_pk[7]), 
        .i_gk(i_gk_10_), .o_g(o_gk_10_), .o_p(o_pk[3]) );
  black_mydesign_37 bc_4 ( .i_pj(i_pk[4]), .i_gj(i_gk_7_), .i_pk(i_pk[8]), 
        .i_gk(i_gk_11_), .o_g(o_gk_11_), .o_p(o_pk[4]) );
  black_mydesign_36 bc_5 ( .i_pj(i_pk[5]), .i_gj(i_gk_8_), .i_pk(i_pk[9]), 
        .i_gk(i_gk_12_), .o_g(o_gk_12_), .o_p(o_pk[5]) );
  black_mydesign_35 bc_6 ( .i_pj(i_pk[6]), .i_gj(i_gk_9_), .i_pk(i_pk[10]), 
        .i_gk(i_gk_13_), .o_g(o_gk_13_), .o_p(o_pk[6]) );
  black_mydesign_34 bc_7 ( .i_pj(i_pk[7]), .i_gj(i_gk_10_), .i_pk(i_pk[11]), 
        .i_gk(i_gk_14_), .o_g(o_gk_14_), .o_p(o_pk[7]) );
  black_mydesign_33 bc_8 ( .i_pj(i_pk[8]), .i_gj(i_gk_11_), .i_pk(i_pk[12]), 
        .i_gk(i_gk_15_), .o_g(o_gk_15_), .o_p(o_pk[8]) );
  black_mydesign_32 bc_9 ( .i_pj(i_pk[9]), .i_gj(i_gk_12_), .i_pk(i_pk[13]), 
        .i_gk(i_gk_16_), .o_g(o_gk_16_), .o_p(o_pk[9]) );
  black_mydesign_31 bc_10 ( .i_pj(i_pk[10]), .i_gj(i_gk_13_), .i_pk(i_pk[14]), 
        .i_gk(i_gk_17_), .o_g(o_gk_17_), .o_p(o_pk[10]) );
  black_mydesign_30 bc_11 ( .i_pj(i_pk[11]), .i_gj(i_gk_14_), .i_pk(i_pk[15]), 
        .i_gk(i_gk_18_), .o_g(o_gk_18_), .o_p(o_pk[11]) );
  black_mydesign_29 bc_12 ( .i_pj(i_pk[12]), .i_gj(i_gk_15_), .i_pk(i_pk[16]), 
        .i_gk(i_gk_19_), .o_g(o_gk_19_), .o_p(o_pk[12]) );
  black_mydesign_28 bc_13 ( .i_pj(i_pk[13]), .i_gj(i_gk_16_), .i_pk(i_pk[17]), 
        .i_gk(i_gk_20_), .o_g(o_gk_20_), .o_p(o_pk[13]) );
  black_mydesign_27 bc_14 ( .i_pj(i_pk[14]), .i_gj(i_gk_17_), .i_pk(i_pk[18]), 
        .i_gk(i_gk_21_), .o_g(o_gk_21_), .o_p(o_pk[14]) );
  black_mydesign_26 bc_15 ( .i_pj(i_pk[15]), .i_gj(i_gk_18_), .i_pk(i_pk[19]), 
        .i_gk(i_gk_22_), .o_g(o_gk_22_), .o_p(o_pk[15]) );
  black_mydesign_25 bc_16 ( .i_pj(i_pk[16]), .i_gj(i_gk_19_), .i_pk(i_pk[20]), 
        .i_gk(i_gk_23_), .o_g(o_gk_23_), .o_p(o_pk[16]) );
  black_mydesign_24 bc_17 ( .i_pj(i_pk[17]), .i_gj(i_gk_20_), .i_pk(i_pk[21]), 
        .i_gk(i_gk_24_), .o_g(o_gk_24_), .o_p(o_pk[17]) );
  black_mydesign_23 bc_18 ( .i_pj(i_pk[18]), .i_gj(i_gk_21_), .i_pk(i_pk[22]), 
        .i_gk(i_gk_25_), .o_g(o_gk_25_), .o_p(o_pk[18]) );
  black_mydesign_22 bc_19 ( .i_pj(i_pk[19]), .i_gj(i_gk_22_), .i_pk(i_pk[23]), 
        .i_gk(i_gk_26_), .o_g(o_gk_26_), .o_p(o_pk[19]) );
  black_mydesign_21 bc_20 ( .i_pj(i_pk[20]), .i_gj(i_gk_23_), .i_pk(i_pk[24]), 
        .i_gk(i_gk_27_), .o_g(o_gk_27_), .o_p(o_pk[20]) );
  black_mydesign_20 bc_21 ( .i_pj(i_pk[21]), .i_gj(i_gk_24_), .i_pk(i_pk[25]), 
        .i_gk(i_gk_28_), .o_g(o_gk_28_), .o_p(o_pk[21]) );
  black_mydesign_19 bc_22 ( .i_pj(i_pk[22]), .i_gj(i_gk_25_), .i_pk(i_pk[26]), 
        .i_gk(i_gk_29_), .o_g(o_gk_29_), .o_p(o_pk[22]) );
  black_mydesign_18 bc_23 ( .i_pj(i_pk[23]), .i_gj(i_gk_26_), .i_pk(i_pk[27]), 
        .i_gk(i_gk_30_), .o_g(o_gk_30_), .o_p(o_pk[23]) );
  black_mydesign_17 bc_24 ( .i_pj(i_pk[24]), .i_gj(i_gk_27_), .i_pk(i_pk[28]), 
        .i_gk(i_gk_31_), .o_g(o_gk_31_), .o_p(o_pk[24]) );
  BUFX1 U1 ( .A(i_gk_2_), .Y(o_gk_2_) );
  BUFX1 U2 ( .A(i_p_save[0]), .Y(o_p_save[0]) );
  BUFX1 U3 ( .A(i_p_save[2]), .Y(o_p_save[2]) );
  BUFX1 U4 ( .A(i_p_save[17]), .Y(o_p_save[17]) );
  BUFX1 U5 ( .A(i_p_save[1]), .Y(o_p_save[1]) );
  BUFX1 U6 ( .A(i_p_save[3]), .Y(o_p_save[3]) );
  BUFX1 U7 ( .A(i_p_save[4]), .Y(o_p_save[4]) );
  BUFX1 U8 ( .A(i_p_save[5]), .Y(o_p_save[5]) );
  BUFX1 U9 ( .A(i_p_save[6]), .Y(o_p_save[6]) );
  BUFX1 U10 ( .A(i_p_save[7]), .Y(o_p_save[7]) );
  BUFX1 U11 ( .A(i_p_save[8]), .Y(o_p_save[8]) );
  BUFX1 U12 ( .A(i_p_save[9]), .Y(o_p_save[9]) );
  BUFX1 U13 ( .A(i_p_save[10]), .Y(o_p_save[10]) );
  BUFX1 U14 ( .A(i_p_save[11]), .Y(o_p_save[11]) );
  BUFX1 U15 ( .A(i_p_save[12]), .Y(o_p_save[12]) );
  BUFX1 U16 ( .A(i_p_save[13]), .Y(o_p_save[13]) );
  BUFX1 U17 ( .A(i_p_save[14]), .Y(o_p_save[14]) );
  BUFX1 U18 ( .A(i_p_save[15]), .Y(o_p_save[15]) );
  BUFX1 U19 ( .A(i_p_save[16]), .Y(o_p_save[16]) );
  BUFX1 U20 ( .A(i_p_save[18]), .Y(o_p_save[18]) );
  BUFX1 U21 ( .A(i_p_save[19]), .Y(o_p_save[19]) );
  BUFX1 U22 ( .A(i_p_save[20]), .Y(o_p_save[20]) );
  BUFX1 U23 ( .A(i_p_save[21]), .Y(o_p_save[21]) );
  BUFX1 U24 ( .A(i_p_save[22]), .Y(o_p_save[22]) );
  BUFX1 U25 ( .A(i_p_save[23]), .Y(o_p_save[23]) );
  BUFX1 U26 ( .A(i_p_save[24]), .Y(o_p_save[24]) );
  BUFX1 U27 ( .A(i_p_save[25]), .Y(o_p_save[25]) );
  BUFX1 U28 ( .A(i_p_save[26]), .Y(o_p_save[26]) );
  BUFX1 U29 ( .A(i_p_save[27]), .Y(o_p_save[27]) );
  BUFX1 U30 ( .A(i_p_save[28]), .Y(o_p_save[28]) );
  BUFX1 U31 ( .A(i_p_save[29]), .Y(o_p_save[29]) );
  BUFX1 U32 ( .A(i_p_save[30]), .Y(o_p_save[30]) );
  BUFX1 U33 ( .A(i_p_save[31]), .Y(o_p_save[31]) );
endmodule


module black_mydesign_0 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1;

  AND2XL U1 ( .A(i_pk), .B(i_pj), .Y(o_p) );
  AOI21XL U2 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
endmodule


module black_mydesign_1 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1;

  AND2XL U1 ( .A(i_pk), .B(i_pj), .Y(o_p) );
  AOI21XL U2 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
endmodule


module black_mydesign_2 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1;

  AND2XL U1 ( .A(i_pk), .B(i_pj), .Y(o_p) );
  AOI21XL U2 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
endmodule


module black_mydesign_3 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1;

  AND2XL U1 ( .A(i_pk), .B(i_pj), .Y(o_p) );
  AOI21XL U2 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
endmodule


module black_mydesign_4 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1;

  AND2XL U1 ( .A(i_pk), .B(i_pj), .Y(o_p) );
  AOI21XL U2 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
endmodule


module black_mydesign_5 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1;

  AND2XL U1 ( .A(i_pk), .B(i_pj), .Y(o_p) );
  AOI21XL U2 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
endmodule


module black_mydesign_6 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1;

  AND2XL U1 ( .A(i_pk), .B(i_pj), .Y(o_p) );
  AOI21XL U2 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
endmodule


module black_mydesign_7 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1;

  AND2XL U1 ( .A(i_pk), .B(i_pj), .Y(o_p) );
  AOI21XL U2 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
endmodule


module black_mydesign_8 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  BUFX1 U1 ( .A(i_pk), .Y(n1) );
  AND2XL U2 ( .A(n1), .B(i_pj), .Y(o_p) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_9 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  BUFX1 U1 ( .A(i_pk), .Y(n1) );
  AND2XL U2 ( .A(n1), .B(i_pj), .Y(o_p) );
  AOI21XL U3 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U4 ( .A(n2), .Y(o_g) );
endmodule


module black_mydesign_10 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1;

  AND2XL U1 ( .A(i_pk), .B(i_pj), .Y(o_p) );
  AOI21XL U2 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
endmodule


module black_mydesign_11 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1;

  AND2XL U1 ( .A(i_pk), .B(i_pj), .Y(o_p) );
  AOI21XL U2 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
endmodule


module black_mydesign_12 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1;

  AND2XL U1 ( .A(i_pk), .B(i_pj), .Y(o_p) );
  AOI21XL U2 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
endmodule


module black_mydesign_13 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1;

  AND2XL U1 ( .A(i_pk), .B(i_pj), .Y(o_p) );
  AOI21XL U2 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U3 ( .A(n1), .Y(o_g) );
endmodule


module black_mydesign_14 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  BUFX1 U1 ( .A(i_pk), .Y(n1) );
  AOI21XL U2 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U3 ( .A(n2), .Y(o_g) );
  AND2XL U4 ( .A(n1), .B(i_pj), .Y(o_p) );
endmodule


module black_mydesign_15 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  BUFX1 U1 ( .A(i_pk), .Y(n1) );
  AOI21XL U2 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U3 ( .A(n2), .Y(o_g) );
  AND2XL U4 ( .A(n1), .B(i_pj), .Y(o_p) );
endmodule


module black_mydesign_16 ( i_pj, i_gj, i_pk, i_gk, o_g, o_p );
  input i_pj, i_gj, i_pk, i_gk;
  output o_g, o_p;
  wire   n1, n2;

  BUFX1 U1 ( .A(i_pk), .Y(n1) );
  AOI21XL U2 ( .A0(n1), .A1(i_gj), .B0(i_gk), .Y(n2) );
  INVXL U3 ( .A(n2), .Y(o_g) );
  AND2XL U4 ( .A(n1), .B(i_pj), .Y(o_p) );
endmodule


module grey_mydesign_16 ( i_gj, i_pk, i_gk, o_g );
  input i_gj, i_pk, i_gk;
  output o_g;
  wire   n1;

  AOI21XL U1 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U2 ( .A(n1), .Y(o_g) );
endmodule


module grey_mydesign_17 ( i_gj, i_pk, i_gk, o_g );
  input i_gj, i_pk, i_gk;
  output o_g;
  wire   n1;

  AOI21XL U1 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U2 ( .A(n1), .Y(o_g) );
endmodule


module grey_mydesign_18 ( i_gj, i_pk, i_gk, o_g );
  input i_gj, i_pk, i_gk;
  output o_g;
  wire   n1;

  AOI21XL U1 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U2 ( .A(n1), .Y(o_g) );
endmodule


module grey_mydesign_19 ( i_gj, i_pk, i_gk, o_g );
  input i_gj, i_pk, i_gk;
  output o_g;
  wire   n1;

  AOI21XL U1 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U2 ( .A(n1), .Y(o_g) );
endmodule


module grey_mydesign_20 ( i_gj, i_pk, i_gk, o_g );
  input i_gj, i_pk, i_gk;
  output o_g;
  wire   n1;

  AOI21XL U1 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U2 ( .A(n1), .Y(o_g) );
endmodule


module grey_mydesign_21 ( i_gk, o_g );
  input i_gk;
  output o_g;
  wire   n1;

  INVXL U1 ( .A(n1), .Y(o_g) );
  INVXL U2 ( .A(i_gk), .Y(n1) );
endmodule


module grey_mydesign_22 ( i_gk, o_g );
  input i_gk;
  output o_g;
  wire   n1;

  INVXL U1 ( .A(n1), .Y(o_g) );
  INVXL U2 ( .A(i_gk), .Y(n1) );
endmodule


module grey_mydesign_23 ( i_gk, o_g );
  input i_gk;
  output o_g;
  wire   n2;

  INVXL U2 ( .A(n2), .Y(o_g) );
  INVXL U1 ( .A(i_gk), .Y(n2) );
endmodule


module ks_5 ( i_pk, i_p_save, o_pk, o_p_save, i_gk_31_, i_gk_30_, i_gk_29_, 
        i_gk_28_, i_gk_27_, i_gk_26_, i_gk_25_, i_gk_24_, i_gk_23_, i_gk_22_, 
        i_gk_21_, i_gk_20_, i_gk_19_, i_gk_18_, i_gk_17_, i_gk_16_, i_gk_15_, 
        i_gk_14_, i_gk_13_, i_gk_12_, i_gk_11_, i_gk_10_, i_gk_9_, i_gk_8_, 
        i_gk_7_, i_gk_6_, i_gk_5_, i_gk_4_, i_gk_3_, i_gk_2_, o_gk_31_, 
        o_gk_30_, o_gk_29_, o_gk_28_, o_gk_27_, o_gk_26_, o_gk_25_, o_gk_24_, 
        o_gk_23_, o_gk_22_, o_gk_21_, o_gk_20_, o_gk_19_, o_gk_18_, o_gk_17_, 
        o_gk_16_, o_gk_15_, o_gk_14_, o_gk_13_, o_gk_12_, o_gk_11_, o_gk_10_, 
        o_gk_9_, o_gk_8_, o_gk_7_, o_gk_6_, o_gk_5_, o_gk_4_, o_gk_3_, o_gk_2_
 );
  input [24:0] i_pk;
  input [31:0] i_p_save;
  output [16:0] o_pk;
  output [31:0] o_p_save;
  input i_gk_31_, i_gk_30_, i_gk_29_, i_gk_28_, i_gk_27_, i_gk_26_, i_gk_25_,
         i_gk_24_, i_gk_23_, i_gk_22_, i_gk_21_, i_gk_20_, i_gk_19_, i_gk_18_,
         i_gk_17_, i_gk_16_, i_gk_15_, i_gk_14_, i_gk_13_, i_gk_12_, i_gk_11_,
         i_gk_10_, i_gk_9_, i_gk_8_, i_gk_7_, i_gk_6_, i_gk_5_, i_gk_4_,
         i_gk_3_, i_gk_2_;
  output o_gk_31_, o_gk_30_, o_gk_29_, o_gk_28_, o_gk_27_, o_gk_26_, o_gk_25_,
         o_gk_24_, o_gk_23_, o_gk_22_, o_gk_21_, o_gk_20_, o_gk_19_, o_gk_18_,
         o_gk_17_, o_gk_16_, o_gk_15_, o_gk_14_, o_gk_13_, o_gk_12_, o_gk_11_,
         o_gk_10_, o_gk_9_, o_gk_8_, o_gk_7_, o_gk_6_, o_gk_5_, o_gk_4_,
         o_gk_3_, o_gk_2_;
  wire   n1, n2, n3, n4;

  grey_mydesign_23 gc_0 ( .i_gk(i_gk_7_), .o_g(o_gk_7_) );
  grey_mydesign_22 gc_1 ( .i_gk(i_gk_8_), .o_g(o_gk_8_) );
  grey_mydesign_21 gc_2 ( .i_gk(i_gk_9_), .o_g(o_gk_9_) );
  grey_mydesign_20 gc_3 ( .i_gj(i_gk_2_), .i_pk(i_pk[3]), .i_gk(i_gk_10_), 
        .o_g(o_gk_10_) );
  grey_mydesign_19 gc_4 ( .i_gj(i_gk_3_), .i_pk(i_pk[4]), .i_gk(i_gk_11_), 
        .o_g(o_gk_11_) );
  grey_mydesign_18 gc_5 ( .i_gj(i_gk_4_), .i_pk(i_pk[5]), .i_gk(i_gk_12_), 
        .o_g(o_gk_12_) );
  grey_mydesign_17 gc_6 ( .i_gj(i_gk_5_), .i_pk(i_pk[6]), .i_gk(i_gk_13_), 
        .o_g(o_gk_13_) );
  grey_mydesign_16 gc_7 ( .i_gj(i_gk_6_), .i_pk(i_pk[7]), .i_gk(i_gk_14_), 
        .o_g(o_gk_14_) );
  black_mydesign_16 bc_0 ( .i_pj(i_pk[0]), .i_gj(i_gk_7_), .i_pk(i_pk[8]), 
        .i_gk(i_gk_15_), .o_g(o_gk_15_), .o_p(o_pk[0]) );
  black_mydesign_15 bc_1 ( .i_pj(i_pk[1]), .i_gj(i_gk_8_), .i_pk(i_pk[9]), 
        .i_gk(i_gk_16_), .o_g(o_gk_16_), .o_p(o_pk[1]) );
  black_mydesign_14 bc_2 ( .i_pj(i_pk[2]), .i_gj(i_gk_9_), .i_pk(i_pk[10]), 
        .i_gk(i_gk_17_), .o_g(o_gk_17_), .o_p(o_pk[2]) );
  black_mydesign_13 bc_3 ( .i_pj(i_pk[3]), .i_gj(i_gk_10_), .i_pk(n4), .i_gk(
        i_gk_18_), .o_g(o_gk_18_), .o_p(o_pk[3]) );
  black_mydesign_12 bc_4 ( .i_pj(i_pk[4]), .i_gj(i_gk_11_), .i_pk(n3), .i_gk(
        i_gk_19_), .o_g(o_gk_19_), .o_p(o_pk[4]) );
  black_mydesign_11 bc_5 ( .i_pj(i_pk[5]), .i_gj(i_gk_12_), .i_pk(n2), .i_gk(
        i_gk_20_), .o_g(o_gk_20_), .o_p(o_pk[5]) );
  black_mydesign_10 bc_6 ( .i_pj(i_pk[6]), .i_gj(i_gk_13_), .i_pk(n1), .i_gk(
        i_gk_21_), .o_g(o_gk_21_), .o_p(o_pk[6]) );
  black_mydesign_9 bc_7 ( .i_pj(i_pk[7]), .i_gj(i_gk_14_), .i_pk(i_pk[15]), 
        .i_gk(i_gk_22_), .o_g(o_gk_22_), .o_p(o_pk[7]) );
  black_mydesign_8 bc_8 ( .i_pj(i_pk[8]), .i_gj(i_gk_15_), .i_pk(i_pk[16]), 
        .i_gk(i_gk_23_), .o_g(o_gk_23_), .o_p(o_pk[8]) );
  black_mydesign_7 bc_9 ( .i_pj(i_pk[9]), .i_gj(i_gk_16_), .i_pk(i_pk[17]), 
        .i_gk(i_gk_24_), .o_g(o_gk_24_), .o_p(o_pk[9]) );
  black_mydesign_6 bc_10 ( .i_pj(i_pk[10]), .i_gj(i_gk_17_), .i_pk(i_pk[18]), 
        .i_gk(i_gk_25_), .o_g(o_gk_25_), .o_p(o_pk[10]) );
  black_mydesign_5 bc_11 ( .i_pj(i_pk[11]), .i_gj(i_gk_18_), .i_pk(i_pk[19]), 
        .i_gk(i_gk_26_), .o_g(o_gk_26_), .o_p(o_pk[11]) );
  black_mydesign_4 bc_12 ( .i_pj(i_pk[12]), .i_gj(i_gk_19_), .i_pk(i_pk[20]), 
        .i_gk(i_gk_27_), .o_g(o_gk_27_), .o_p(o_pk[12]) );
  black_mydesign_3 bc_13 ( .i_pj(i_pk[13]), .i_gj(i_gk_20_), .i_pk(i_pk[21]), 
        .i_gk(i_gk_28_), .o_g(o_gk_28_), .o_p(o_pk[13]) );
  black_mydesign_2 bc_14 ( .i_pj(i_pk[14]), .i_gj(i_gk_21_), .i_pk(i_pk[22]), 
        .i_gk(i_gk_29_), .o_g(o_gk_29_), .o_p(o_pk[14]) );
  black_mydesign_1 bc_15 ( .i_pj(i_pk[15]), .i_gj(i_gk_22_), .i_pk(i_pk[23]), 
        .i_gk(i_gk_30_), .o_g(o_gk_30_), .o_p(o_pk[15]) );
  black_mydesign_0 bc_16 ( .i_pj(i_pk[16]), .i_gj(i_gk_23_), .i_pk(i_pk[24]), 
        .i_gk(i_gk_31_), .o_g(o_gk_31_), .o_p(o_pk[16]) );
  BUFX1 U1 ( .A(i_gk_3_), .Y(o_gk_3_) );
  BUFX1 U2 ( .A(i_gk_4_), .Y(o_gk_4_) );
  BUFX1 U3 ( .A(i_gk_5_), .Y(o_gk_5_) );
  BUFX1 U4 ( .A(i_gk_6_), .Y(o_gk_6_) );
  BUFX1 U5 ( .A(i_pk[14]), .Y(n1) );
  BUFX1 U6 ( .A(i_pk[13]), .Y(n2) );
  BUFX1 U7 ( .A(i_pk[12]), .Y(n3) );
  BUFX1 U8 ( .A(i_pk[11]), .Y(n4) );
  BUFX1 U9 ( .A(i_p_save[0]), .Y(o_p_save[0]) );
  BUFX1 U10 ( .A(i_p_save[6]), .Y(o_p_save[6]) );
  BUFX1 U11 ( .A(i_p_save[21]), .Y(o_p_save[21]) );
  BUFX1 U12 ( .A(i_p_save[2]), .Y(o_p_save[2]) );
  BUFX1 U13 ( .A(i_p_save[1]), .Y(o_p_save[1]) );
  BUFX1 U14 ( .A(i_gk_2_), .Y(o_gk_2_) );
  BUFX1 U15 ( .A(i_p_save[3]), .Y(o_p_save[3]) );
  BUFX1 U16 ( .A(i_p_save[4]), .Y(o_p_save[4]) );
  BUFX1 U17 ( .A(i_p_save[5]), .Y(o_p_save[5]) );
  BUFX1 U18 ( .A(i_p_save[7]), .Y(o_p_save[7]) );
  BUFX1 U19 ( .A(i_p_save[8]), .Y(o_p_save[8]) );
  BUFX1 U20 ( .A(i_p_save[9]), .Y(o_p_save[9]) );
  BUFX1 U21 ( .A(i_p_save[10]), .Y(o_p_save[10]) );
  BUFX1 U22 ( .A(i_p_save[11]), .Y(o_p_save[11]) );
  BUFX1 U23 ( .A(i_p_save[12]), .Y(o_p_save[12]) );
  BUFX1 U24 ( .A(i_p_save[13]), .Y(o_p_save[13]) );
  BUFX1 U25 ( .A(i_p_save[14]), .Y(o_p_save[14]) );
  BUFX1 U26 ( .A(i_p_save[15]), .Y(o_p_save[15]) );
  BUFX1 U27 ( .A(i_p_save[16]), .Y(o_p_save[16]) );
  BUFX1 U28 ( .A(i_p_save[17]), .Y(o_p_save[17]) );
  BUFX1 U29 ( .A(i_p_save[18]), .Y(o_p_save[18]) );
  BUFX1 U30 ( .A(i_p_save[19]), .Y(o_p_save[19]) );
  BUFX1 U31 ( .A(i_p_save[20]), .Y(o_p_save[20]) );
  BUFX1 U32 ( .A(i_p_save[22]), .Y(o_p_save[22]) );
  BUFX1 U33 ( .A(i_p_save[23]), .Y(o_p_save[23]) );
  BUFX1 U34 ( .A(i_p_save[24]), .Y(o_p_save[24]) );
  BUFX1 U35 ( .A(i_p_save[25]), .Y(o_p_save[25]) );
  BUFX1 U36 ( .A(i_p_save[26]), .Y(o_p_save[26]) );
  BUFX1 U37 ( .A(i_p_save[27]), .Y(o_p_save[27]) );
  BUFX1 U38 ( .A(i_p_save[28]), .Y(o_p_save[28]) );
  BUFX1 U39 ( .A(i_p_save[29]), .Y(o_p_save[29]) );
  BUFX1 U40 ( .A(i_p_save[30]), .Y(o_p_save[30]) );
  BUFX1 U41 ( .A(i_p_save[31]), .Y(o_p_save[31]) );
endmodule


module grey_mydesign_0 ( i_gj, i_pk, i_gk, o_g );
  input i_gj, i_pk, i_gk;
  output o_g;
  wire   n1;

  AOI21XL U1 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U2 ( .A(n1), .Y(o_g) );
endmodule


module grey_mydesign_1 ( i_gj, i_pk, i_gk, o_g );
  input i_gj, i_pk, i_gk;
  output o_g;
  wire   n1;

  AOI21XL U1 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U2 ( .A(n1), .Y(o_g) );
endmodule


module grey_mydesign_2 ( i_gj, i_pk, i_gk, o_g );
  input i_gj, i_pk, i_gk;
  output o_g;
  wire   n1;

  AOI21XL U1 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U2 ( .A(n1), .Y(o_g) );
endmodule


module grey_mydesign_3 ( i_gj, i_pk, i_gk, o_g );
  input i_gj, i_pk, i_gk;
  output o_g;
  wire   n1;

  AOI21XL U1 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U2 ( .A(n1), .Y(o_g) );
endmodule


module grey_mydesign_4 ( i_gj, i_pk, i_gk, o_g );
  input i_gj, i_pk, i_gk;
  output o_g;
  wire   n1;

  AOI21XL U1 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U2 ( .A(n1), .Y(o_g) );
endmodule


module grey_mydesign_5 ( i_gj, i_pk, i_gk, o_g );
  input i_gj, i_pk, i_gk;
  output o_g;
  wire   n1;

  AOI21XL U1 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U2 ( .A(n1), .Y(o_g) );
endmodule


module grey_mydesign_6 ( i_gj, i_pk, i_gk, o_g );
  input i_gj, i_pk, i_gk;
  output o_g;
  wire   n1;

  AOI21XL U1 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U2 ( .A(n1), .Y(o_g) );
endmodule


module grey_mydesign_7 ( i_gj, i_pk, i_gk, o_g );
  input i_gj, i_pk, i_gk;
  output o_g;
  wire   n1;

  AOI21XL U1 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U2 ( .A(n1), .Y(o_g) );
endmodule


module grey_mydesign_8 ( i_gj, i_pk, i_gk, o_g );
  input i_gj, i_pk, i_gk;
  output o_g;
  wire   n1;

  AOI21XL U1 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U2 ( .A(n1), .Y(o_g) );
endmodule


module grey_mydesign_9 ( i_gj, i_pk, i_gk, o_g );
  input i_gj, i_pk, i_gk;
  output o_g;
  wire   n1;

  AOI21XL U1 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U2 ( .A(n1), .Y(o_g) );
endmodule


module grey_mydesign_10 ( i_gj, i_pk, i_gk, o_g );
  input i_gj, i_pk, i_gk;
  output o_g;
  wire   n1;

  AOI21XL U1 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U2 ( .A(n1), .Y(o_g) );
endmodule


module grey_mydesign_11 ( i_gj, i_pk, i_gk, o_g );
  input i_gj, i_pk, i_gk;
  output o_g;
  wire   n1;

  AOI21XL U1 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U2 ( .A(n1), .Y(o_g) );
endmodule


module grey_mydesign_12 ( i_gj, i_pk, i_gk, o_g );
  input i_gj, i_pk, i_gk;
  output o_g;
  wire   n1;

  AOI21XL U1 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U2 ( .A(n1), .Y(o_g) );
endmodule


module grey_mydesign_13 ( i_gj, i_pk, i_gk, o_g );
  input i_gj, i_pk, i_gk;
  output o_g;
  wire   n1;

  AOI21XL U1 ( .A0(i_pk), .A1(i_gj), .B0(i_gk), .Y(n1) );
  INVXL U2 ( .A(n1), .Y(o_g) );
endmodule


module grey_mydesign_14 ( i_gk, o_g );
  input i_gk;
  output o_g;
  wire   n1;

  INVXL U1 ( .A(i_gk), .Y(n1) );
  INVXL U2 ( .A(n1), .Y(o_g) );
endmodule


module grey_mydesign_15 ( i_gk, o_g );
  input i_gk;
  output o_g;
  wire   n1;

  INVXL U1 ( .A(i_gk), .Y(n1) );
  INVXL U2 ( .A(n1), .Y(o_g) );
endmodule


module ks_6 ( i_p_save, o_pk, i_pk_16_, i_pk_15_, i_pk_14_, i_pk_13_, i_pk_12_, 
        i_pk_11_, i_pk_10_, i_pk_9_, i_pk_8_, i_pk_7_, i_pk_6_, i_pk_5_, 
        i_pk_4_, i_pk_3_, i_gk_31_, i_gk_30_, i_gk_29_, i_gk_28_, i_gk_27_, 
        i_gk_26_, i_gk_25_, i_gk_24_, i_gk_23_, i_gk_22_, i_gk_21_, i_gk_20_, 
        i_gk_19_, i_gk_18_, i_gk_17_, i_gk_16_, i_gk_15_, i_gk_14_, i_gk_13_, 
        i_gk_12_, i_gk_11_, i_gk_10_, i_gk_9_, i_gk_8_, i_gk_7_, i_gk_6_, 
        i_gk_5_, i_gk_4_, i_gk_3_, i_gk_2_, o_gk_31_, o_gk_30_, o_gk_29_, 
        o_gk_28_, o_gk_27_, o_gk_26_, o_gk_25_, o_gk_24_, o_gk_23_, o_gk_22_, 
        o_gk_21_, o_gk_20_, o_gk_19_, o_gk_18_, o_gk_17_, o_gk_16_, o_gk_15_, 
        o_gk_14_, o_gk_13_, o_gk_12_, o_gk_11_, o_gk_10_, o_gk_9_, o_gk_8_, 
        o_gk_7_, o_gk_6_, o_gk_5_, o_gk_4_, o_gk_3_, o_gk_2_ );
  input [31:0] i_p_save;
  output [31:0] o_pk;
  input i_pk_16_, i_pk_15_, i_pk_14_, i_pk_13_, i_pk_12_, i_pk_11_, i_pk_10_,
         i_pk_9_, i_pk_8_, i_pk_7_, i_pk_6_, i_pk_5_, i_pk_4_, i_pk_3_,
         i_gk_31_, i_gk_30_, i_gk_29_, i_gk_28_, i_gk_27_, i_gk_26_, i_gk_25_,
         i_gk_24_, i_gk_23_, i_gk_22_, i_gk_21_, i_gk_20_, i_gk_19_, i_gk_18_,
         i_gk_17_, i_gk_16_, i_gk_15_, i_gk_14_, i_gk_13_, i_gk_12_, i_gk_11_,
         i_gk_10_, i_gk_9_, i_gk_8_, i_gk_7_, i_gk_6_, i_gk_5_, i_gk_4_,
         i_gk_3_, i_gk_2_;
  output o_gk_31_, o_gk_30_, o_gk_29_, o_gk_28_, o_gk_27_, o_gk_26_, o_gk_25_,
         o_gk_24_, o_gk_23_, o_gk_22_, o_gk_21_, o_gk_20_, o_gk_19_, o_gk_18_,
         o_gk_17_, o_gk_16_, o_gk_15_, o_gk_14_, o_gk_13_, o_gk_12_, o_gk_11_,
         o_gk_10_, o_gk_9_, o_gk_8_, o_gk_7_, o_gk_6_, o_gk_5_, o_gk_4_,
         o_gk_3_, o_gk_2_;


  grey_mydesign_15 gc_1 ( .i_gk(i_gk_16_), .o_g(o_gk_16_) );
  grey_mydesign_14 gc_2 ( .i_gk(i_gk_17_), .o_g(o_gk_17_) );
  grey_mydesign_13 gc_3 ( .i_gj(i_gk_2_), .i_pk(i_pk_3_), .i_gk(i_gk_18_), 
        .o_g(o_gk_18_) );
  grey_mydesign_12 gc_4 ( .i_gj(i_gk_3_), .i_pk(i_pk_4_), .i_gk(i_gk_19_), 
        .o_g(o_gk_19_) );
  grey_mydesign_11 gc_5 ( .i_gj(i_gk_4_), .i_pk(i_pk_5_), .i_gk(i_gk_20_), 
        .o_g(o_gk_20_) );
  grey_mydesign_10 gc_6 ( .i_gj(i_gk_5_), .i_pk(i_pk_6_), .i_gk(i_gk_21_), 
        .o_g(o_gk_21_) );
  grey_mydesign_9 gc_7 ( .i_gj(i_gk_6_), .i_pk(i_pk_7_), .i_gk(i_gk_22_), 
        .o_g(o_gk_22_) );
  grey_mydesign_8 gc_8 ( .i_gj(i_gk_7_), .i_pk(i_pk_8_), .i_gk(i_gk_23_), 
        .o_g(o_gk_23_) );
  grey_mydesign_7 gc_9 ( .i_gj(i_gk_8_), .i_pk(i_pk_9_), .i_gk(i_gk_24_), 
        .o_g(o_gk_24_) );
  grey_mydesign_6 gc_10 ( .i_gj(i_gk_9_), .i_pk(i_pk_10_), .i_gk(i_gk_25_), 
        .o_g(o_gk_25_) );
  grey_mydesign_5 gc_11 ( .i_gj(i_gk_10_), .i_pk(i_pk_11_), .i_gk(i_gk_26_), 
        .o_g(o_gk_26_) );
  grey_mydesign_4 gc_12 ( .i_gj(i_gk_11_), .i_pk(i_pk_12_), .i_gk(i_gk_27_), 
        .o_g(o_gk_27_) );
  grey_mydesign_3 gc_13 ( .i_gj(i_gk_12_), .i_pk(i_pk_13_), .i_gk(i_gk_28_), 
        .o_g(o_gk_28_) );
  grey_mydesign_2 gc_14 ( .i_gj(i_gk_13_), .i_pk(i_pk_14_), .i_gk(i_gk_29_), 
        .o_g(o_gk_29_) );
  grey_mydesign_1 gc_15 ( .i_gj(i_gk_14_), .i_pk(i_pk_15_), .i_gk(i_gk_30_), 
        .o_g(o_gk_30_) );
  grey_mydesign_0 gc_16 ( .i_gj(i_gk_15_), .i_pk(i_pk_16_), .i_gk(i_gk_31_), 
        .o_g(o_gk_31_) );
  BUFX1 U1 ( .A(i_p_save[0]), .Y(o_pk[0]) );
  BUFX1 U2 ( .A(i_p_save[1]), .Y(o_pk[1]) );
  BUFX1 U3 ( .A(i_p_save[9]), .Y(o_pk[9]) );
  BUFX1 U4 ( .A(i_p_save[24]), .Y(o_pk[24]) );
  BUFX1 U5 ( .A(i_p_save[2]), .Y(o_pk[2]) );
  BUFX1 U6 ( .A(i_gk_7_), .Y(o_gk_7_) );
  BUFX1 U7 ( .A(i_gk_8_), .Y(o_gk_8_) );
  BUFX1 U8 ( .A(i_gk_9_), .Y(o_gk_9_) );
  BUFX1 U9 ( .A(i_gk_10_), .Y(o_gk_10_) );
  BUFX1 U10 ( .A(i_gk_11_), .Y(o_gk_11_) );
  BUFX1 U11 ( .A(i_gk_12_), .Y(o_gk_12_) );
  BUFX1 U12 ( .A(i_gk_13_), .Y(o_gk_13_) );
  BUFX1 U13 ( .A(i_gk_14_), .Y(o_gk_14_) );
  BUFX1 U14 ( .A(i_gk_15_), .Y(o_gk_15_) );
  BUFX1 U15 ( .A(i_gk_3_), .Y(o_gk_3_) );
  BUFX1 U16 ( .A(i_gk_4_), .Y(o_gk_4_) );
  BUFX1 U17 ( .A(i_gk_5_), .Y(o_gk_5_) );
  BUFX1 U18 ( .A(i_gk_6_), .Y(o_gk_6_) );
  BUFX1 U19 ( .A(i_gk_2_), .Y(o_gk_2_) );
  BUFX1 U20 ( .A(i_p_save[3]), .Y(o_pk[3]) );
  BUFX1 U21 ( .A(i_p_save[4]), .Y(o_pk[4]) );
  BUFX1 U22 ( .A(i_p_save[5]), .Y(o_pk[5]) );
  BUFX1 U23 ( .A(i_p_save[6]), .Y(o_pk[6]) );
  BUFX1 U24 ( .A(i_p_save[7]), .Y(o_pk[7]) );
  BUFX1 U25 ( .A(i_p_save[8]), .Y(o_pk[8]) );
  BUFX1 U26 ( .A(i_p_save[10]), .Y(o_pk[10]) );
  BUFX1 U27 ( .A(i_p_save[11]), .Y(o_pk[11]) );
  BUFX1 U28 ( .A(i_p_save[12]), .Y(o_pk[12]) );
  BUFX1 U29 ( .A(i_p_save[13]), .Y(o_pk[13]) );
  BUFX1 U30 ( .A(i_p_save[14]), .Y(o_pk[14]) );
  BUFX1 U31 ( .A(i_p_save[15]), .Y(o_pk[15]) );
  BUFX1 U32 ( .A(i_p_save[16]), .Y(o_pk[16]) );
  BUFX1 U33 ( .A(i_p_save[17]), .Y(o_pk[17]) );
  BUFX1 U34 ( .A(i_p_save[18]), .Y(o_pk[18]) );
  BUFX1 U35 ( .A(i_p_save[19]), .Y(o_pk[19]) );
  BUFX1 U36 ( .A(i_p_save[20]), .Y(o_pk[20]) );
  BUFX1 U37 ( .A(i_p_save[21]), .Y(o_pk[21]) );
  BUFX1 U38 ( .A(i_p_save[22]), .Y(o_pk[22]) );
  BUFX1 U39 ( .A(i_p_save[23]), .Y(o_pk[23]) );
  BUFX1 U40 ( .A(i_p_save[25]), .Y(o_pk[25]) );
  BUFX1 U41 ( .A(i_p_save[26]), .Y(o_pk[26]) );
  BUFX1 U42 ( .A(i_p_save[27]), .Y(o_pk[27]) );
  BUFX1 U43 ( .A(i_p_save[28]), .Y(o_pk[28]) );
  BUFX1 U44 ( .A(i_p_save[29]), .Y(o_pk[29]) );
  BUFX1 U45 ( .A(i_p_save[30]), .Y(o_pk[30]) );
  BUFX1 U46 ( .A(i_p_save[31]), .Y(o_pk[31]) );
endmodule


module ks_7 ( i_pk, o_s, o_carry, i_gk_31_, i_gk_30_, i_gk_29_, i_gk_28_, 
        i_gk_27_, i_gk_26_, i_gk_25_, i_gk_24_, i_gk_23_, i_gk_22_, i_gk_21_, 
        i_gk_20_, i_gk_19_, i_gk_18_, i_gk_17_, i_gk_16_, i_gk_15_, i_gk_14_, 
        i_gk_13_, i_gk_12_, i_gk_11_, i_gk_10_, i_gk_9_, i_gk_8_, i_gk_7_, 
        i_gk_6_, i_gk_5_, i_gk_4_, i_gk_3_, i_gk_2_ );
  input [31:0] i_pk;
  output [31:0] o_s;
  input i_gk_31_, i_gk_30_, i_gk_29_, i_gk_28_, i_gk_27_, i_gk_26_, i_gk_25_,
         i_gk_24_, i_gk_23_, i_gk_22_, i_gk_21_, i_gk_20_, i_gk_19_, i_gk_18_,
         i_gk_17_, i_gk_16_, i_gk_15_, i_gk_14_, i_gk_13_, i_gk_12_, i_gk_11_,
         i_gk_10_, i_gk_9_, i_gk_8_, i_gk_7_, i_gk_6_, i_gk_5_, i_gk_4_,
         i_gk_3_, i_gk_2_;
  output o_carry;


  BUFX1 U1 ( .A(i_pk[0]), .Y(o_s[0]) );
  BUFX1 U2 ( .A(i_pk[1]), .Y(o_s[1]) );
  BUFX1 U3 ( .A(i_pk[2]), .Y(o_s[2]) );
  BUFX1 U4 ( .A(i_gk_31_), .Y(o_carry) );
  XOR2XL U5 ( .A(i_pk[31]), .B(i_gk_30_), .Y(o_s[31]) );
  XOR2XL U6 ( .A(i_pk[30]), .B(i_gk_29_), .Y(o_s[30]) );
  XOR2XL U7 ( .A(i_pk[29]), .B(i_gk_28_), .Y(o_s[29]) );
  XOR2XL U8 ( .A(i_pk[28]), .B(i_gk_27_), .Y(o_s[28]) );
  XOR2XL U9 ( .A(i_pk[27]), .B(i_gk_26_), .Y(o_s[27]) );
  XOR2XL U10 ( .A(i_pk[26]), .B(i_gk_25_), .Y(o_s[26]) );
  XOR2XL U11 ( .A(i_pk[25]), .B(i_gk_24_), .Y(o_s[25]) );
  XOR2XL U12 ( .A(i_pk[24]), .B(i_gk_23_), .Y(o_s[24]) );
  XOR2XL U13 ( .A(i_pk[23]), .B(i_gk_22_), .Y(o_s[23]) );
  XOR2XL U14 ( .A(i_pk[22]), .B(i_gk_21_), .Y(o_s[22]) );
  XOR2XL U15 ( .A(i_pk[21]), .B(i_gk_20_), .Y(o_s[21]) );
  XOR2XL U16 ( .A(i_pk[20]), .B(i_gk_19_), .Y(o_s[20]) );
  XOR2XL U17 ( .A(i_pk[19]), .B(i_gk_18_), .Y(o_s[19]) );
  XOR2XL U18 ( .A(i_pk[18]), .B(i_gk_17_), .Y(o_s[18]) );
  XOR2XL U19 ( .A(i_pk[17]), .B(i_gk_16_), .Y(o_s[17]) );
  XOR2XL U20 ( .A(i_pk[16]), .B(i_gk_15_), .Y(o_s[16]) );
  XOR2XL U21 ( .A(i_pk[15]), .B(i_gk_14_), .Y(o_s[15]) );
  XOR2XL U22 ( .A(i_pk[14]), .B(i_gk_13_), .Y(o_s[14]) );
  XOR2XL U23 ( .A(i_pk[13]), .B(i_gk_12_), .Y(o_s[13]) );
  XOR2XL U24 ( .A(i_pk[12]), .B(i_gk_11_), .Y(o_s[12]) );
  XOR2XL U25 ( .A(i_pk[11]), .B(i_gk_10_), .Y(o_s[11]) );
  XOR2XL U26 ( .A(i_pk[10]), .B(i_gk_9_), .Y(o_s[10]) );
  XOR2XL U27 ( .A(i_pk[9]), .B(i_gk_8_), .Y(o_s[9]) );
  XOR2XL U28 ( .A(i_pk[8]), .B(i_gk_7_), .Y(o_s[8]) );
  XOR2XL U29 ( .A(i_pk[7]), .B(i_gk_6_), .Y(o_s[7]) );
  XOR2XL U30 ( .A(i_pk[6]), .B(i_gk_5_), .Y(o_s[6]) );
  XOR2XL U31 ( .A(i_pk[5]), .B(i_gk_4_), .Y(o_s[5]) );
  XOR2XL U32 ( .A(i_pk[4]), .B(i_gk_3_), .Y(o_s[4]) );
  XOR2XL U33 ( .A(i_pk[3]), .B(i_gk_2_), .Y(o_s[3]) );
endmodule


module ksa_top ( i_b, o_s, o_carry, i_a_31_, i_a_30_, i_a_29_, i_a_28_, 
        i_a_27_, i_a_26_, i_a_25_, i_a_24_, i_a_23_, i_a_22_, i_a_21_, i_a_20_, 
        i_a_19_, i_a_18_, i_a_17_, i_a_16_, i_a_15_, i_a_14_, i_a_13_, i_a_12_, 
        i_a_11_, i_a_10_, i_a_9_, i_a_8_, i_a_7_, i_a_6_, i_a_5_, i_a_4_, 
        i_a_3_, i_a_2_ );
  input [31:0] i_b;
  output [31:0] o_s;
  input i_a_31_, i_a_30_, i_a_29_, i_a_28_, i_a_27_, i_a_26_, i_a_25_, i_a_24_,
         i_a_23_, i_a_22_, i_a_21_, i_a_20_, i_a_19_, i_a_18_, i_a_17_,
         i_a_16_, i_a_15_, i_a_14_, i_a_13_, i_a_12_, i_a_11_, i_a_10_, i_a_9_,
         i_a_8_, i_a_7_, i_a_6_, i_a_5_, i_a_4_, i_a_3_, i_a_2_;
  output o_carry;
  wire   p5_16_, p5_15_, p5_14_, p5_13_, p5_12_, p5_11_, p5_10_, p5_9_, p5_8_,
         p5_7_, p5_6_, p5_5_, p5_4_, p5_3_, p5_2_, p5_1_, p5_0_, n1;
  wire   [31:0] p1;
  wire   [31:2] g1;
  wire   [30:0] p2;
  wire   [31:2] g2;
  wire   [31:0] ps1;
  wire   [28:0] p3;
  wire   [31:2] g3;
  wire   [31:0] ps2;
  wire   [24:0] p4;
  wire   [31:2] g4;
  wire   [31:0] ps3;
  wire   [31:2] g5;
  wire   [31:0] ps4;
  wire   [31:0] p6;
  wire   [31:2] g6;

  ks_1 s1 ( .i_b(i_b), .o_pk_1(p1), .i_a_31_(i_a_31_), .i_a_30_(i_a_30_), 
        .i_a_29_(i_a_29_), .i_a_28_(i_a_28_), .i_a_27_(i_a_27_), .i_a_26_(
        i_a_26_), .i_a_25_(i_a_25_), .i_a_24_(i_a_24_), .i_a_23_(i_a_23_), 
        .i_a_22_(i_a_22_), .i_a_21_(i_a_21_), .i_a_20_(i_a_20_), .i_a_19_(
        i_a_19_), .i_a_18_(i_a_18_), .i_a_17_(i_a_17_), .i_a_16_(i_a_16_), 
        .i_a_15_(i_a_15_), .i_a_14_(i_a_14_), .i_a_13_(i_a_13_), .i_a_12_(
        i_a_12_), .i_a_11_(i_a_11_), .i_a_10_(i_a_10_), .i_a_9_(i_a_9_), 
        .i_a_8_(i_a_8_), .i_a_7_(i_a_7_), .i_a_6_(i_a_6_), .i_a_5_(i_a_5_), 
        .i_a_4_(i_a_4_), .i_a_3_(i_a_3_), .i_a_2_(i_a_2_), .o_gk_1_31_(g1[31]), 
        .o_gk_1_30_(g1[30]), .o_gk_1_29_(g1[29]), .o_gk_1_28_(g1[28]), 
        .o_gk_1_27_(g1[27]), .o_gk_1_26_(g1[26]), .o_gk_1_25_(g1[25]), 
        .o_gk_1_24_(g1[24]), .o_gk_1_23_(g1[23]), .o_gk_1_22_(g1[22]), 
        .o_gk_1_21_(g1[21]), .o_gk_1_20_(g1[20]), .o_gk_1_19_(g1[19]), 
        .o_gk_1_18_(g1[18]), .o_gk_1_17_(g1[17]), .o_gk_1_16_(g1[16]), 
        .o_gk_1_15_(g1[15]), .o_gk_1_14_(g1[14]), .o_gk_1_13_(g1[13]), 
        .o_gk_1_12_(g1[12]), .o_gk_1_11_(g1[11]), .o_gk_1_10_(g1[10]), 
        .o_gk_1_9_(g1[9]), .o_gk_1_8_(g1[8]), .o_gk_1_7_(g1[7]), .o_gk_1_6_(
        g1[6]), .o_gk_1_5_(g1[5]), .o_gk_1_4_(g1[4]), .o_gk_1_3_(g1[3]), 
        .o_gk_1_2_(g1[2]) );
  ks_2 s2 ( .i_pk({p1[31:2], n1, p1[0]}), .o_pk(p2), .o_p_save(ps1), 
        .i_gk_31_(g1[31]), .i_gk_30_(g1[30]), .i_gk_29_(g1[29]), .i_gk_28_(
        g1[28]), .i_gk_27_(g1[27]), .i_gk_26_(g1[26]), .i_gk_25_(g1[25]), 
        .i_gk_24_(g1[24]), .i_gk_23_(g1[23]), .i_gk_22_(g1[22]), .i_gk_21_(
        g1[21]), .i_gk_20_(g1[20]), .i_gk_19_(g1[19]), .i_gk_18_(g1[18]), 
        .i_gk_17_(g1[17]), .i_gk_16_(g1[16]), .i_gk_15_(g1[15]), .i_gk_14_(
        g1[14]), .i_gk_13_(g1[13]), .i_gk_12_(g1[12]), .i_gk_11_(g1[11]), 
        .i_gk_10_(g1[10]), .i_gk_9_(g1[9]), .i_gk_8_(g1[8]), .i_gk_7_(g1[7]), 
        .i_gk_6_(g1[6]), .i_gk_5_(g1[5]), .i_gk_4_(g1[4]), .i_gk_3_(g1[3]), 
        .i_gk_2_(g1[2]), .o_gk_31_(g2[31]), .o_gk_30_(g2[30]), .o_gk_29_(
        g2[29]), .o_gk_28_(g2[28]), .o_gk_27_(g2[27]), .o_gk_26_(g2[26]), 
        .o_gk_25_(g2[25]), .o_gk_24_(g2[24]), .o_gk_23_(g2[23]), .o_gk_22_(
        g2[22]), .o_gk_21_(g2[21]), .o_gk_20_(g2[20]), .o_gk_19_(g2[19]), 
        .o_gk_18_(g2[18]), .o_gk_17_(g2[17]), .o_gk_16_(g2[16]), .o_gk_15_(
        g2[15]), .o_gk_14_(g2[14]), .o_gk_13_(g2[13]), .o_gk_12_(g2[12]), 
        .o_gk_11_(g2[11]), .o_gk_10_(g2[10]), .o_gk_9_(g2[9]), .o_gk_8_(g2[8]), 
        .o_gk_7_(g2[7]), .o_gk_6_(g2[6]), .o_gk_5_(g2[5]), .o_gk_4_(g2[4]), 
        .o_gk_3_(g2[3]), .o_gk_2_(g2[2]) );
  ks_3 s3 ( .i_pk(p2), .i_p_save(ps1), .o_pk(p3), .o_p_save(ps2), .i_gk_31_(
        g2[31]), .i_gk_30_(g2[30]), .i_gk_29_(g2[29]), .i_gk_28_(g2[28]), 
        .i_gk_27_(g2[27]), .i_gk_26_(g2[26]), .i_gk_25_(g2[25]), .i_gk_24_(
        g2[24]), .i_gk_23_(g2[23]), .i_gk_22_(g2[22]), .i_gk_21_(g2[21]), 
        .i_gk_20_(g2[20]), .i_gk_19_(g2[19]), .i_gk_18_(g2[18]), .i_gk_17_(
        g2[17]), .i_gk_16_(g2[16]), .i_gk_15_(g2[15]), .i_gk_14_(g2[14]), 
        .i_gk_13_(g2[13]), .i_gk_12_(g2[12]), .i_gk_11_(g2[11]), .i_gk_10_(
        g2[10]), .i_gk_9_(g2[9]), .i_gk_8_(g2[8]), .i_gk_7_(g2[7]), .i_gk_6_(
        g2[6]), .i_gk_5_(g2[5]), .i_gk_4_(g2[4]), .i_gk_3_(g2[3]), .i_gk_2_(
        g2[2]), .o_gk_31_(g3[31]), .o_gk_30_(g3[30]), .o_gk_29_(g3[29]), 
        .o_gk_28_(g3[28]), .o_gk_27_(g3[27]), .o_gk_26_(g3[26]), .o_gk_25_(
        g3[25]), .o_gk_24_(g3[24]), .o_gk_23_(g3[23]), .o_gk_22_(g3[22]), 
        .o_gk_21_(g3[21]), .o_gk_20_(g3[20]), .o_gk_19_(g3[19]), .o_gk_18_(
        g3[18]), .o_gk_17_(g3[17]), .o_gk_16_(g3[16]), .o_gk_15_(g3[15]), 
        .o_gk_14_(g3[14]), .o_gk_13_(g3[13]), .o_gk_12_(g3[12]), .o_gk_11_(
        g3[11]), .o_gk_10_(g3[10]), .o_gk_9_(g3[9]), .o_gk_8_(g3[8]), 
        .o_gk_7_(g3[7]), .o_gk_6_(g3[6]), .o_gk_5_(g3[5]), .o_gk_4_(g3[4]), 
        .o_gk_3_(g3[3]), .o_gk_2_(g3[2]) );
  ks_4 s4 ( .i_pk(p3), .i_p_save(ps2), .o_pk(p4), .o_p_save(ps3), .i_gk_31_(
        g3[31]), .i_gk_30_(g3[30]), .i_gk_29_(g3[29]), .i_gk_28_(g3[28]), 
        .i_gk_27_(g3[27]), .i_gk_26_(g3[26]), .i_gk_25_(g3[25]), .i_gk_24_(
        g3[24]), .i_gk_23_(g3[23]), .i_gk_22_(g3[22]), .i_gk_21_(g3[21]), 
        .i_gk_20_(g3[20]), .i_gk_19_(g3[19]), .i_gk_18_(g3[18]), .i_gk_17_(
        g3[17]), .i_gk_16_(g3[16]), .i_gk_15_(g3[15]), .i_gk_14_(g3[14]), 
        .i_gk_13_(g3[13]), .i_gk_12_(g3[12]), .i_gk_11_(g3[11]), .i_gk_10_(
        g3[10]), .i_gk_9_(g3[9]), .i_gk_8_(g3[8]), .i_gk_7_(g3[7]), .i_gk_6_(
        g3[6]), .i_gk_5_(g3[5]), .i_gk_4_(g3[4]), .i_gk_3_(g3[3]), .i_gk_2_(
        g3[2]), .o_gk_31_(g4[31]), .o_gk_30_(g4[30]), .o_gk_29_(g4[29]), 
        .o_gk_28_(g4[28]), .o_gk_27_(g4[27]), .o_gk_26_(g4[26]), .o_gk_25_(
        g4[25]), .o_gk_24_(g4[24]), .o_gk_23_(g4[23]), .o_gk_22_(g4[22]), 
        .o_gk_21_(g4[21]), .o_gk_20_(g4[20]), .o_gk_19_(g4[19]), .o_gk_18_(
        g4[18]), .o_gk_17_(g4[17]), .o_gk_16_(g4[16]), .o_gk_15_(g4[15]), 
        .o_gk_14_(g4[14]), .o_gk_13_(g4[13]), .o_gk_12_(g4[12]), .o_gk_11_(
        g4[11]), .o_gk_10_(g4[10]), .o_gk_9_(g4[9]), .o_gk_8_(g4[8]), 
        .o_gk_7_(g4[7]), .o_gk_6_(g4[6]), .o_gk_5_(g4[5]), .o_gk_4_(g4[4]), 
        .o_gk_3_(g4[3]), .o_gk_2_(g4[2]) );
  ks_5 s5 ( .i_pk(p4), .i_p_save(ps3), .o_pk({p5_16_, p5_15_, p5_14_, p5_13_, 
        p5_12_, p5_11_, p5_10_, p5_9_, p5_8_, p5_7_, p5_6_, p5_5_, p5_4_, 
        p5_3_, p5_2_, p5_1_, p5_0_}), .o_p_save(ps4), .i_gk_31_(g4[31]), 
        .i_gk_30_(g4[30]), .i_gk_29_(g4[29]), .i_gk_28_(g4[28]), .i_gk_27_(
        g4[27]), .i_gk_26_(g4[26]), .i_gk_25_(g4[25]), .i_gk_24_(g4[24]), 
        .i_gk_23_(g4[23]), .i_gk_22_(g4[22]), .i_gk_21_(g4[21]), .i_gk_20_(
        g4[20]), .i_gk_19_(g4[19]), .i_gk_18_(g4[18]), .i_gk_17_(g4[17]), 
        .i_gk_16_(g4[16]), .i_gk_15_(g4[15]), .i_gk_14_(g4[14]), .i_gk_13_(
        g4[13]), .i_gk_12_(g4[12]), .i_gk_11_(g4[11]), .i_gk_10_(g4[10]), 
        .i_gk_9_(g4[9]), .i_gk_8_(g4[8]), .i_gk_7_(g4[7]), .i_gk_6_(g4[6]), 
        .i_gk_5_(g4[5]), .i_gk_4_(g4[4]), .i_gk_3_(g4[3]), .i_gk_2_(g4[2]), 
        .o_gk_31_(g5[31]), .o_gk_30_(g5[30]), .o_gk_29_(g5[29]), .o_gk_28_(
        g5[28]), .o_gk_27_(g5[27]), .o_gk_26_(g5[26]), .o_gk_25_(g5[25]), 
        .o_gk_24_(g5[24]), .o_gk_23_(g5[23]), .o_gk_22_(g5[22]), .o_gk_21_(
        g5[21]), .o_gk_20_(g5[20]), .o_gk_19_(g5[19]), .o_gk_18_(g5[18]), 
        .o_gk_17_(g5[17]), .o_gk_16_(g5[16]), .o_gk_15_(g5[15]), .o_gk_14_(
        g5[14]), .o_gk_13_(g5[13]), .o_gk_12_(g5[12]), .o_gk_11_(g5[11]), 
        .o_gk_10_(g5[10]), .o_gk_9_(g5[9]), .o_gk_8_(g5[8]), .o_gk_7_(g5[7]), 
        .o_gk_6_(g5[6]), .o_gk_5_(g5[5]), .o_gk_4_(g5[4]), .o_gk_3_(g5[3]), 
        .o_gk_2_(g5[2]) );
  ks_6 s6 ( .i_p_save(ps4), .o_pk(p6), .i_pk_16_(p5_16_), .i_pk_15_(p5_15_), 
        .i_pk_14_(p5_14_), .i_pk_13_(p5_13_), .i_pk_12_(p5_12_), .i_pk_11_(
        p5_11_), .i_pk_10_(p5_10_), .i_pk_9_(p5_9_), .i_pk_8_(p5_8_), 
        .i_pk_7_(p5_7_), .i_pk_6_(p5_6_), .i_pk_5_(p5_5_), .i_pk_4_(p5_4_), 
        .i_pk_3_(p5_3_), .i_gk_31_(g5[31]), .i_gk_30_(g5[30]), .i_gk_29_(
        g5[29]), .i_gk_28_(g5[28]), .i_gk_27_(g5[27]), .i_gk_26_(g5[26]), 
        .i_gk_25_(g5[25]), .i_gk_24_(g5[24]), .i_gk_23_(g5[23]), .i_gk_22_(
        g5[22]), .i_gk_21_(g5[21]), .i_gk_20_(g5[20]), .i_gk_19_(g5[19]), 
        .i_gk_18_(g5[18]), .i_gk_17_(g5[17]), .i_gk_16_(g5[16]), .i_gk_15_(
        g5[15]), .i_gk_14_(g5[14]), .i_gk_13_(g5[13]), .i_gk_12_(g5[12]), 
        .i_gk_11_(g5[11]), .i_gk_10_(g5[10]), .i_gk_9_(g5[9]), .i_gk_8_(g5[8]), 
        .i_gk_7_(g5[7]), .i_gk_6_(g5[6]), .i_gk_5_(g5[5]), .i_gk_4_(g5[4]), 
        .i_gk_3_(g5[3]), .i_gk_2_(g5[2]), .o_gk_31_(g6[31]), .o_gk_30_(g6[30]), 
        .o_gk_29_(g6[29]), .o_gk_28_(g6[28]), .o_gk_27_(g6[27]), .o_gk_26_(
        g6[26]), .o_gk_25_(g6[25]), .o_gk_24_(g6[24]), .o_gk_23_(g6[23]), 
        .o_gk_22_(g6[22]), .o_gk_21_(g6[21]), .o_gk_20_(g6[20]), .o_gk_19_(
        g6[19]), .o_gk_18_(g6[18]), .o_gk_17_(g6[17]), .o_gk_16_(g6[16]), 
        .o_gk_15_(g6[15]), .o_gk_14_(g6[14]), .o_gk_13_(g6[13]), .o_gk_12_(
        g6[12]), .o_gk_11_(g6[11]), .o_gk_10_(g6[10]), .o_gk_9_(g6[9]), 
        .o_gk_8_(g6[8]), .o_gk_7_(g6[7]), .o_gk_6_(g6[6]), .o_gk_5_(g6[5]), 
        .o_gk_4_(g6[4]), .o_gk_3_(g6[3]), .o_gk_2_(g6[2]) );
  ks_7 s7 ( .i_pk(p6), .o_s(o_s), .o_carry(o_carry), .i_gk_31_(g6[31]), 
        .i_gk_30_(g6[30]), .i_gk_29_(g6[29]), .i_gk_28_(g6[28]), .i_gk_27_(
        g6[27]), .i_gk_26_(g6[26]), .i_gk_25_(g6[25]), .i_gk_24_(g6[24]), 
        .i_gk_23_(g6[23]), .i_gk_22_(g6[22]), .i_gk_21_(g6[21]), .i_gk_20_(
        g6[20]), .i_gk_19_(g6[19]), .i_gk_18_(g6[18]), .i_gk_17_(g6[17]), 
        .i_gk_16_(g6[16]), .i_gk_15_(g6[15]), .i_gk_14_(g6[14]), .i_gk_13_(
        g6[13]), .i_gk_12_(g6[12]), .i_gk_11_(g6[11]), .i_gk_10_(g6[10]), 
        .i_gk_9_(g6[9]), .i_gk_8_(g6[8]), .i_gk_7_(g6[7]), .i_gk_6_(g6[6]), 
        .i_gk_5_(g6[5]), .i_gk_4_(g6[4]), .i_gk_3_(g6[3]), .i_gk_2_(g6[2]) );
  BUFX1 U1 ( .A(p1[1]), .Y(n1) );
endmodule


module Multiplier_top_p ( clk, rst_n, Multiplicant, Multiplier, result );
  input [15:0] Multiplicant;
  input [15:0] Multiplier;
  output [31:0] result;
  input clk, rst_n;
  wire   N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17,
         N18, N19, N20, N21, N22, N37, N38, N39, N40, N41, N42, N43, N44, N45,
         N46, N47, N48, N49, N50, N51, N52, N53, N54, N71, N72, N73, N74, N75,
         N76, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86, N87, N88, N105,
         N106, N107, N108, N109, N110, N111, N112, N113, N114, N115, N116,
         N117, N118, N119, N120, N121, N122, N139, N140, N141, N142, N143,
         N144, N145, N146, N147, N148, N149, N150, N151, N152, N153, N154,
         N155, N156, N173, N174, N175, N176, N177, N178, N179, N180, N181,
         N182, N183, N184, N185, N186, N187, N188, N189, N190, N207, N208,
         N209, N210, N211, N212, N213, N214, N215, N216, N217, N218, N219,
         N220, N221, N222, N223, N224, N241, N242, N243, N244, N245, N246,
         N247, N248, N249, N250, N251, N252, N253, N254, N255, N256, N257,
         N258, Sum_r_31_, Sum_r_30_, Sum_r_29_, Sum_r_28_, Sum_r_27_,
         Sum_r_26_, Sum_r_25_, Sum_r_24_, Sum_r_23_, Sum_r_22_, Sum_r_21_,
         Sum_r_20_, Sum_r_19_, Sum_r_18_, Sum_r_17_, Sum_r_16_, Sum_r_15_,
         Sum_r_14_, Sum_r_13_, Sum_r_12_, Sum_r_11_, Sum_r_10_, Sum_r_9_,
         Sum_r_8_, Sum_r_7_, Sum_r_6_, Sum_r_5_, Sum_r_4_, Sum_r_3_, Sum_r_2_,
         N261, N262, N263, N264, N265, N266, N267, N268, N269, N270, N271,
         N272, N273, N274, N275, N276, N277, N278, N279, N280, N281, N282,
         N283, N284, N285, N286, N287, N288, N289, N290, N291, N292, N293,
         N294, N295, N296, N297, N298, N299, N300, N301, N302, N303, N304,
         N305, N306, N307, N308, N309, N310, N311, N312, N313, N314, N315,
         N316, N317, N318, N319, N320, N321, N322, n1, n2, n3000, n410, n550,
         n600, n700, n890, n900, n1000, n1110, n1230, n1300, n1410, n1570,
         n1600, n1700, n1810, n1910, n2000, n2110, n226, n23, n24, n25, n26,
         n27, n28, n29, n3010, n31, n32, n33, n34, n35, n36, n370, n380, n390,
         n400, n411, n420, n430, n440, n450, n460, n470, n480, n490, n500,
         n510, n520, n530, n540, n551, n56, n57, n58, n59, n601, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n701, n710, n720, n730, n740, n750,
         n760, n770, n780, n790, n800, n810, n820, n830, n840, n850, n860,
         n870, n880, n891, n901, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n1001, n101, n102, n103, n104, n1050, n1060, n1070, n1080, n1090,
         n1100, n1111, n1120, n1130, n1140, n1150, n1160, n1170, n1180, n1190,
         n1200, n1210, n1220, n1231, n124, n125, n126, n127, n128, n129, n1301,
         n131, n132, n133, n134, n135, n136, n137, n138, n1390, n1400, n1411,
         n1420, n1430, n1440, n1450, n1460, n1470, n1480, n1490, n1500, n1510,
         n1520, n1530, n1540, n1550, n1560, n1571, n158, n159, n1601, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n1701, n171, n172,
         n1730, n1740, n1750, n1760, n1770, n1780, n1790, n1800, n1811, n1820,
         n1830, n1840, n1850, n1860, n1870, n1880, n1890, n1900, n1911, n192,
         n193, n194, n195, n196, n197, n198, n199, n2001, n201, n202, n203,
         n204, n205, n206, n2070, n2080, n2090, n2100, n2111, n2120, n2130,
         n2140, n2150;
  wire   [19:0] PP0;
  wire   [19:2] PP1;
  wire   [21:4] PP2;
  wire   [23:6] PP3;
  wire   [25:8] PP4;
  wire   [27:10] PP5;
  wire   [29:12] PP6;
  wire   [31:14] PP7;
  wire   [19:0] PP0_r;
  wire   [19:2] PP1_r;
  wire   [21:4] PP2_r;
  wire   [23:6] PP3_r;
  wire   [25:8] PP4_r;
  wire   [28:10] PP5_r;
  wire   [29:12] PP6_r;
  wire   [31:14] PP7_r;
  wire   [31:2] Sum;
  wire   [31:0] Carry;
  wire   [31:0] Carry_r;

  PP_top u_PP_top ( .Multiplicant(Multiplicant), .Multiplier(Multiplier), 
        .PP0_19_(PP0[19]), .PP0_18_(PP0[18]), .PP0_17_(PP0[17]), .PP0_16_(
        PP0[16]), .PP0_15_(PP0[15]), .PP0_14_(PP0[14]), .PP0_13_(PP0[13]), 
        .PP0_12_(PP0[12]), .PP0_11_(PP0[11]), .PP0_10_(PP0[10]), .PP0_9_(
        PP0[9]), .PP0_8_(PP0[8]), .PP0_7_(PP0[7]), .PP0_6_(PP0[6]), .PP0_5_(
        PP0[5]), .PP0_4_(PP0[4]), .PP0_3_(PP0[3]), .PP0_2_(PP0[2]), .PP0_1_(
        PP0[1]), .PP0_0_(PP0[0]), .PP1_19_(PP1[19]), .PP1_18_(PP1[18]), 
        .PP1_17_(PP1[17]), .PP1_16_(PP1[16]), .PP1_15_(PP1[15]), .PP1_14_(
        PP1[14]), .PP1_13_(PP1[13]), .PP1_12_(PP1[12]), .PP1_11_(PP1[11]), 
        .PP1_10_(PP1[10]), .PP1_9_(PP1[9]), .PP1_8_(PP1[8]), .PP1_7_(PP1[7]), 
        .PP1_6_(PP1[6]), .PP1_5_(PP1[5]), .PP1_4_(PP1[4]), .PP1_3_(PP1[3]), 
        .PP1_2_(PP1[2]), .PP2_21_(PP2[21]), .PP2_20_(PP2[20]), .PP2_19_(
        PP2[19]), .PP2_18_(PP2[18]), .PP2_17_(PP2[17]), .PP2_16_(PP2[16]), 
        .PP2_15_(PP2[15]), .PP2_14_(PP2[14]), .PP2_13_(PP2[13]), .PP2_12_(
        PP2[12]), .PP2_11_(PP2[11]), .PP2_10_(PP2[10]), .PP2_9_(PP2[9]), 
        .PP2_8_(PP2[8]), .PP2_7_(PP2[7]), .PP2_6_(PP2[6]), .PP2_5_(PP2[5]), 
        .PP2_4_(PP2[4]), .PP3_23_(PP3[23]), .PP3_22_(PP3[22]), .PP3_21_(
        PP3[21]), .PP3_20_(PP3[20]), .PP3_19_(PP3[19]), .PP3_18_(PP3[18]), 
        .PP3_17_(PP3[17]), .PP3_16_(PP3[16]), .PP3_15_(PP3[15]), .PP3_14_(
        PP3[14]), .PP3_13_(PP3[13]), .PP3_12_(PP3[12]), .PP3_11_(PP3[11]), 
        .PP3_10_(PP3[10]), .PP3_9_(PP3[9]), .PP3_8_(PP3[8]), .PP3_7_(PP3[7]), 
        .PP3_6_(PP3[6]), .PP4_25_(PP4[25]), .PP4_24_(PP4[24]), .PP4_23_(
        PP4[23]), .PP4_22_(PP4[22]), .PP4_21_(PP4[21]), .PP4_20_(PP4[20]), 
        .PP4_19_(PP4[19]), .PP4_18_(PP4[18]), .PP4_17_(PP4[17]), .PP4_16_(
        PP4[16]), .PP4_15_(PP4[15]), .PP4_14_(PP4[14]), .PP4_13_(PP4[13]), 
        .PP4_12_(PP4[12]), .PP4_11_(PP4[11]), .PP4_10_(PP4[10]), .PP4_9_(
        PP4[9]), .PP4_8_(PP4[8]), .PP5_27_(PP5[27]), .PP5_26_(PP5[26]), 
        .PP5_25_(PP5[25]), .PP5_24_(PP5[24]), .PP5_23_(PP5[23]), .PP5_22_(
        PP5[22]), .PP5_21_(PP5[21]), .PP5_20_(PP5[20]), .PP5_19_(PP5[19]), 
        .PP5_18_(PP5[18]), .PP5_17_(PP5[17]), .PP5_16_(PP5[16]), .PP5_15_(
        PP5[15]), .PP5_14_(PP5[14]), .PP5_13_(PP5[13]), .PP5_12_(PP5[12]), 
        .PP5_11_(PP5[11]), .PP5_10_(PP5[10]), .PP6_29_(PP6[29]), .PP6_28_(
        PP6[28]), .PP6_27_(PP6[27]), .PP6_26_(PP6[26]), .PP6_25_(PP6[25]), 
        .PP6_24_(PP6[24]), .PP6_23_(PP6[23]), .PP6_22_(PP6[22]), .PP6_21_(
        PP6[21]), .PP6_20_(PP6[20]), .PP6_19_(PP6[19]), .PP6_18_(PP6[18]), 
        .PP6_17_(PP6[17]), .PP6_16_(PP6[16]), .PP6_15_(PP6[15]), .PP6_14_(
        PP6[14]), .PP6_13_(PP6[13]), .PP6_12_(PP6[12]), .PP7_31_(PP7[31]), 
        .PP7_30_(PP7[30]), .PP7_29_(PP7[29]), .PP7_28_(PP7[28]), .PP7_27_(
        PP7[27]), .PP7_26_(PP7[26]), .PP7_25_(PP7[25]), .PP7_24_(PP7[24]), 
        .PP7_23_(PP7[23]), .PP7_22_(PP7[22]), .PP7_21_(PP7[21]), .PP7_20_(
        PP7[20]), .PP7_19_(PP7[19]), .PP7_18_(PP7[18]), .PP7_17_(PP7[17]), 
        .PP7_16_(PP7[16]), .PP7_15_(PP7[15]), .PP7_14_(PP7[14]) );
  WallaceTree_top u_WallaceTree_top ( .Carry(Carry), .PP0_19_(PP0_r[19]), 
        .PP0_18_(PP0_r[18]), .PP0_17_(PP0_r[17]), .PP0_16_(PP0_r[16]), 
        .PP0_15_(PP0_r[15]), .PP0_14_(PP0_r[14]), .PP0_13_(PP0_r[13]), 
        .PP0_12_(PP0_r[12]), .PP0_11_(PP0_r[11]), .PP0_10_(PP0_r[10]), 
        .PP0_9_(PP0_r[9]), .PP0_8_(PP0_r[8]), .PP0_7_(PP0_r[7]), .PP0_6_(
        PP0_r[6]), .PP0_5_(PP0_r[5]), .PP0_4_(PP0_r[4]), .PP0_3_(PP0_r[3]), 
        .PP0_2_(PP0_r[2]), .PP0_1_(PP0_r[1]), .PP0_0_(PP0_r[0]), .PP1_20_(n2), 
        .PP1_19_(PP1_r[19]), .PP1_18_(PP1_r[18]), .PP1_17_(PP1_r[17]), 
        .PP1_16_(PP1_r[16]), .PP1_15_(PP1_r[15]), .PP1_14_(PP1_r[14]), 
        .PP1_13_(PP1_r[13]), .PP1_12_(PP1_r[12]), .PP1_11_(PP1_r[11]), 
        .PP1_10_(PP1_r[10]), .PP1_9_(PP1_r[9]), .PP1_8_(PP1_r[8]), .PP1_7_(
        PP1_r[7]), .PP1_6_(PP1_r[6]), .PP1_5_(PP1_r[5]), .PP1_4_(PP1_r[4]), 
        .PP1_3_(PP1_r[3]), .PP1_2_(PP1_r[2]), .PP2_22_(n550), .PP2_21_(
        PP2_r[21]), .PP2_20_(PP2_r[20]), .PP2_19_(PP2_r[19]), .PP2_18_(
        PP2_r[18]), .PP2_17_(PP2_r[17]), .PP2_16_(PP2_r[16]), .PP2_15_(
        PP2_r[15]), .PP2_14_(PP2_r[14]), .PP2_13_(PP2_r[13]), .PP2_12_(
        PP2_r[12]), .PP2_11_(PP2_r[11]), .PP2_10_(PP2_r[10]), .PP2_9_(PP2_r[9]), .PP2_8_(PP2_r[8]), .PP2_7_(PP2_r[7]), .PP2_6_(PP2_r[6]), .PP2_5_(PP2_r[5]), 
        .PP2_4_(PP2_r[4]), .PP3_24_(n600), .PP3_23_(PP3_r[23]), .PP3_22_(
        PP3_r[22]), .PP3_21_(PP3_r[21]), .PP3_20_(PP3_r[20]), .PP3_19_(
        PP3_r[19]), .PP3_18_(PP3_r[18]), .PP3_17_(PP3_r[17]), .PP3_16_(
        PP3_r[16]), .PP3_15_(PP3_r[15]), .PP3_14_(PP3_r[14]), .PP3_13_(
        PP3_r[13]), .PP3_12_(PP3_r[12]), .PP3_11_(PP3_r[11]), .PP3_10_(
        PP3_r[10]), .PP3_9_(PP3_r[9]), .PP3_8_(PP3_r[8]), .PP3_7_(PP3_r[7]), 
        .PP3_6_(PP3_r[6]), .PP4_26_(n890), .PP4_25_(PP4_r[25]), .PP4_24_(
        PP4_r[24]), .PP4_23_(PP4_r[23]), .PP4_22_(PP4_r[22]), .PP4_21_(
        PP4_r[21]), .PP4_20_(PP4_r[20]), .PP4_19_(PP4_r[19]), .PP4_18_(
        PP4_r[18]), .PP4_17_(PP4_r[17]), .PP4_16_(PP4_r[16]), .PP4_15_(
        PP4_r[15]), .PP4_14_(PP4_r[14]), .PP4_13_(PP4_r[13]), .PP4_12_(
        PP4_r[12]), .PP4_11_(PP4_r[11]), .PP4_10_(PP4_r[10]), .PP4_9_(PP4_r[9]), .PP4_8_(PP4_r[8]), .PP5_28_(n600), .PP5_27_(PP5_r[27]), .PP5_26_(PP5_r[26]), 
        .PP5_25_(PP5_r[25]), .PP5_24_(PP5_r[24]), .PP5_23_(PP5_r[23]), 
        .PP5_22_(PP5_r[22]), .PP5_21_(PP5_r[21]), .PP5_20_(PP5_r[20]), 
        .PP5_19_(PP5_r[19]), .PP5_18_(PP5_r[18]), .PP5_17_(PP5_r[17]), 
        .PP5_16_(PP5_r[16]), .PP5_15_(PP5_r[15]), .PP5_14_(PP5_r[14]), 
        .PP5_13_(PP5_r[13]), .PP5_12_(PP5_r[12]), .PP5_11_(PP5_r[11]), 
        .PP5_10_(PP5_r[10]), .PP6_30_(n3000), .PP6_29_(PP6_r[29]), .PP6_28_(
        PP6_r[28]), .PP6_27_(PP6_r[27]), .PP6_26_(PP6_r[26]), .PP6_25_(
        PP6_r[25]), .PP6_24_(PP6_r[24]), .PP6_23_(PP6_r[23]), .PP6_22_(
        PP6_r[22]), .PP6_21_(PP6_r[21]), .PP6_20_(PP6_r[20]), .PP6_19_(
        PP6_r[19]), .PP6_18_(PP6_r[18]), .PP6_17_(PP6_r[17]), .PP6_16_(
        PP6_r[16]), .PP6_15_(PP6_r[15]), .PP6_14_(PP6_r[14]), .PP6_13_(
        PP6_r[13]), .PP6_12_(PP6_r[12]), .PP7_31_(PP7_r[31]), .PP7_30_(
        PP7_r[30]), .PP7_29_(PP7_r[29]), .PP7_28_(PP7_r[28]), .PP7_27_(
        PP7_r[27]), .PP7_26_(PP7_r[26]), .PP7_25_(PP7_r[25]), .PP7_24_(
        PP7_r[24]), .PP7_23_(PP7_r[23]), .PP7_22_(PP7_r[22]), .PP7_21_(
        PP7_r[21]), .PP7_20_(PP7_r[20]), .PP7_19_(PP7_r[19]), .PP7_18_(
        PP7_r[18]), .PP7_17_(PP7_r[17]), .PP7_16_(PP7_r[16]), .PP7_15_(
        PP7_r[15]), .PP7_14_(PP7_r[14]), .Sum_31_(Sum[31]), .Sum_30_(Sum[30]), 
        .Sum_29_(Sum[29]), .Sum_28_(Sum[28]), .Sum_27_(Sum[27]), .Sum_26_(
        Sum[26]), .Sum_25_(Sum[25]), .Sum_24_(Sum[24]), .Sum_23_(Sum[23]), 
        .Sum_22_(Sum[22]), .Sum_21_(Sum[21]), .Sum_20_(Sum[20]), .Sum_19_(
        Sum[19]), .Sum_18_(Sum[18]), .Sum_17_(Sum[17]), .Sum_16_(Sum[16]), 
        .Sum_15_(Sum[15]), .Sum_14_(Sum[14]), .Sum_13_(Sum[13]), .Sum_12_(
        Sum[12]), .Sum_11_(Sum[11]), .Sum_10_(Sum[10]), .Sum_9_(Sum[9]), 
        .Sum_8_(Sum[8]), .Sum_7_(Sum[7]), .Sum_6_(Sum[6]), .Sum_5_(Sum[5]), 
        .Sum_4_(Sum[4]), .Sum_3_(Sum[3]), .Sum_2_(Sum[2]) );
  ksa_top u_kas_top ( .i_b(Carry_r), .o_s(result), .i_a_31_(Sum_r_31_), 
        .i_a_30_(Sum_r_30_), .i_a_29_(Sum_r_29_), .i_a_28_(Sum_r_28_), 
        .i_a_27_(Sum_r_27_), .i_a_26_(Sum_r_26_), .i_a_25_(Sum_r_25_), 
        .i_a_24_(Sum_r_24_), .i_a_23_(Sum_r_23_), .i_a_22_(Sum_r_22_), 
        .i_a_21_(Sum_r_21_), .i_a_20_(Sum_r_20_), .i_a_19_(Sum_r_19_), 
        .i_a_18_(Sum_r_18_), .i_a_17_(Sum_r_17_), .i_a_16_(Sum_r_16_), 
        .i_a_15_(Sum_r_15_), .i_a_14_(Sum_r_14_), .i_a_13_(Sum_r_13_), 
        .i_a_12_(Sum_r_12_), .i_a_11_(Sum_r_11_), .i_a_10_(Sum_r_10_), 
        .i_a_9_(Sum_r_9_), .i_a_8_(Sum_r_8_), .i_a_7_(Sum_r_7_), .i_a_6_(
        Sum_r_6_), .i_a_5_(Sum_r_5_), .i_a_4_(Sum_r_4_), .i_a_3_(Sum_r_3_), 
        .i_a_2_(Sum_r_2_) );
  DFFHQXL PP2_r_reg_21_ ( .D(N88), .CK(clk), .Q(PP2_r[21]) );
  DFFHQXL PP7_r_reg_31_ ( .D(N258), .CK(clk), .Q(PP7_r[31]) );
  DFFHQXL PP4_r_reg_25_ ( .D(N156), .CK(clk), .Q(PP4_r[25]) );
  DFFHQXL PP6_r_reg_29_ ( .D(N224), .CK(clk), .Q(PP6_r[29]) );
  DFFHQXL PP1_r_reg_19_ ( .D(N54), .CK(clk), .Q(PP1_r[19]) );
  DFFHQXL PP3_r_reg_23_ ( .D(N122), .CK(clk), .Q(PP3_r[23]) );
  DFFHQXL PP5_r_reg_27_ ( .D(N190), .CK(clk), .Q(PP5_r[27]) );
  DFFHQXL PP0_r_reg_17_ ( .D(N20), .CK(clk), .Q(PP0_r[17]) );
  DFFHQXL PP6_r_reg_14_ ( .D(N209), .CK(clk), .Q(PP6_r[14]) );
  DFFHQXL PP7_r_reg_18_ ( .D(N245), .CK(clk), .Q(PP7_r[18]) );
  DFFHQXL PP0_r_reg_8_ ( .D(N11), .CK(clk), .Q(PP0_r[8]) );
  DFFHQXL PP1_r_reg_12_ ( .D(N47), .CK(clk), .Q(PP1_r[12]) );
  DFFHQXL PP2_r_reg_16_ ( .D(N83), .CK(clk), .Q(PP2_r[16]) );
  DFFHQXL PP3_r_reg_20_ ( .D(N119), .CK(clk), .Q(PP3_r[20]) );
  DFFHQXL PP4_r_reg_24_ ( .D(N155), .CK(clk), .Q(PP4_r[24]) );
  DFFHQXL PP4_r_reg_9_ ( .D(N140), .CK(clk), .Q(PP4_r[9]) );
  DFFHQXL PP5_r_reg_14_ ( .D(N177), .CK(clk), .Q(PP5_r[14]) );
  DFFHQXL Carry_r_reg_23_ ( .D(N314), .CK(clk), .Q(Carry_r[23]) );
  DFFHQXL Carry_r_reg_8_ ( .D(N299), .CK(clk), .Q(Carry_r[8]) );
  DFFHQXL Sum_r_reg_21_ ( .D(N280), .CK(clk), .Q(Sum_r_21_) );
  DFFHQXL Sum_r_reg_6_ ( .D(N265), .CK(clk), .Q(Sum_r_6_) );
  DFFHQXL PP5_r_reg_28_ ( .D(n2150), .CK(clk), .Q(PP5_r[28]) );
  DFFHQXL PP4_r_reg_12_ ( .D(N143), .CK(clk), .Q(PP4_r[12]) );
  DFFHQXL PP5_r_reg_12_ ( .D(N175), .CK(clk), .Q(PP5_r[12]) );
  DFFHQXL PP5_r_reg_11_ ( .D(N174), .CK(clk), .Q(PP5_r[11]) );
  DFFHQXL PP4_r_reg_15_ ( .D(N146), .CK(clk), .Q(PP4_r[15]) );
  DFFHQXL PP4_r_reg_16_ ( .D(N147), .CK(clk), .Q(PP4_r[16]) );
  DFFHQXL PP4_r_reg_17_ ( .D(N148), .CK(clk), .Q(PP4_r[17]) );
  DFFHQXL PP4_r_reg_18_ ( .D(N149), .CK(clk), .Q(PP4_r[18]) );
  DFFHQXL PP4_r_reg_19_ ( .D(N150), .CK(clk), .Q(PP4_r[19]) );
  DFFHQXL PP4_r_reg_20_ ( .D(N151), .CK(clk), .Q(PP4_r[20]) );
  DFFHQXL PP4_r_reg_21_ ( .D(N152), .CK(clk), .Q(PP4_r[21]) );
  DFFHQXL PP4_r_reg_22_ ( .D(N153), .CK(clk), .Q(PP4_r[22]) );
  DFFHQXL PP4_r_reg_23_ ( .D(N154), .CK(clk), .Q(PP4_r[23]) );
  DFFHQXL PP3_r_reg_7_ ( .D(N106), .CK(clk), .Q(PP3_r[7]) );
  DFFHQXL PP3_r_reg_8_ ( .D(N107), .CK(clk), .Q(PP3_r[8]) );
  DFFHQXL PP3_r_reg_9_ ( .D(N108), .CK(clk), .Q(PP3_r[9]) );
  DFFHQXL PP3_r_reg_10_ ( .D(N109), .CK(clk), .Q(PP3_r[10]) );
  DFFHQXL PP3_r_reg_11_ ( .D(N110), .CK(clk), .Q(PP3_r[11]) );
  DFFHQXL PP3_r_reg_12_ ( .D(N111), .CK(clk), .Q(PP3_r[12]) );
  DFFHQXL PP3_r_reg_13_ ( .D(N112), .CK(clk), .Q(PP3_r[13]) );
  DFFHQXL PP3_r_reg_14_ ( .D(N113), .CK(clk), .Q(PP3_r[14]) );
  DFFHQXL PP3_r_reg_15_ ( .D(N114), .CK(clk), .Q(PP3_r[15]) );
  DFFHQXL PP3_r_reg_17_ ( .D(N116), .CK(clk), .Q(PP3_r[17]) );
  DFFHQXL PP3_r_reg_18_ ( .D(N117), .CK(clk), .Q(PP3_r[18]) );
  DFFHQXL PP3_r_reg_19_ ( .D(N118), .CK(clk), .Q(PP3_r[19]) );
  DFFHQXL PP0_r_reg_7_ ( .D(N10), .CK(clk), .Q(PP0_r[7]) );
  DFFHQXL PP0_r_reg_9_ ( .D(N12), .CK(clk), .Q(PP0_r[9]) );
  DFFHQXL PP0_r_reg_10_ ( .D(N13), .CK(clk), .Q(PP0_r[10]) );
  DFFHQXL PP0_r_reg_11_ ( .D(N14), .CK(clk), .Q(PP0_r[11]) );
  DFFHQXL PP0_r_reg_12_ ( .D(N15), .CK(clk), .Q(PP0_r[12]) );
  DFFHQXL PP0_r_reg_13_ ( .D(N16), .CK(clk), .Q(PP0_r[13]) );
  DFFHQXL PP0_r_reg_14_ ( .D(N17), .CK(clk), .Q(PP0_r[14]) );
  DFFHQXL PP0_r_reg_15_ ( .D(N18), .CK(clk), .Q(PP0_r[15]) );
  DFFHQXL PP0_r_reg_16_ ( .D(N19), .CK(clk), .Q(PP0_r[16]) );
  DFFHQXL PP0_r_reg_18_ ( .D(N21), .CK(clk), .Q(PP0_r[18]) );
  DFFHQXL PP0_r_reg_19_ ( .D(N22), .CK(clk), .Q(PP0_r[19]) );
  DFFHQXL PP7_r_reg_15_ ( .D(N242), .CK(clk), .Q(PP7_r[15]) );
  DFFHQXL PP7_r_reg_16_ ( .D(N243), .CK(clk), .Q(PP7_r[16]) );
  DFFHQXL PP7_r_reg_17_ ( .D(N244), .CK(clk), .Q(PP7_r[17]) );
  DFFHQXL PP7_r_reg_19_ ( .D(N246), .CK(clk), .Q(PP7_r[19]) );
  DFFHQXL PP7_r_reg_20_ ( .D(N247), .CK(clk), .Q(PP7_r[20]) );
  DFFHQXL PP7_r_reg_21_ ( .D(N248), .CK(clk), .Q(PP7_r[21]) );
  DFFHQXL PP7_r_reg_22_ ( .D(N249), .CK(clk), .Q(PP7_r[22]) );
  DFFHQXL PP7_r_reg_23_ ( .D(N250), .CK(clk), .Q(PP7_r[23]) );
  DFFHQXL PP7_r_reg_24_ ( .D(N251), .CK(clk), .Q(PP7_r[24]) );
  DFFHQXL PP7_r_reg_25_ ( .D(N252), .CK(clk), .Q(PP7_r[25]) );
  DFFHQXL PP7_r_reg_26_ ( .D(N253), .CK(clk), .Q(PP7_r[26]) );
  DFFHQXL Sum_r_reg_30_ ( .D(N289), .CK(clk), .Q(Sum_r_30_) );
  DFFHQXL Carry_r_reg_30_ ( .D(N321), .CK(clk), .Q(Carry_r[30]) );
  DFFHQXL Sum_r_reg_2_ ( .D(N261), .CK(clk), .Q(Sum_r_2_) );
  DFFHQXL Carry_r_reg_2_ ( .D(N293), .CK(clk), .Q(Carry_r[2]) );
  DFFHQXL PP6_r_reg_12_ ( .D(N207), .CK(clk), .Q(PP6_r[12]) );
  DFFHQXL PP4_r_reg_13_ ( .D(N144), .CK(clk), .Q(PP4_r[13]) );
  DFFHQXL Carry_r_reg_1_ ( .D(N292), .CK(clk), .Q(Carry_r[1]) );
  DFFHQXL PP2_r_reg_6_ ( .D(N73), .CK(clk), .Q(PP2_r[6]) );
  DFFHQXL PP6_r_reg_26_ ( .D(N221), .CK(clk), .Q(PP6_r[26]) );
  DFFHQXL PP6_r_reg_25_ ( .D(N220), .CK(clk), .Q(PP6_r[25]) );
  DFFHQXL PP6_r_reg_24_ ( .D(N219), .CK(clk), .Q(PP6_r[24]) );
  DFFHQXL PP6_r_reg_23_ ( .D(N218), .CK(clk), .Q(PP6_r[23]) );
  DFFHQXL PP6_r_reg_22_ ( .D(N217), .CK(clk), .Q(PP6_r[22]) );
  DFFHQXL PP6_r_reg_21_ ( .D(N216), .CK(clk), .Q(PP6_r[21]) );
  DFFHQXL PP6_r_reg_20_ ( .D(N215), .CK(clk), .Q(PP6_r[20]) );
  DFFHQXL PP6_r_reg_19_ ( .D(N214), .CK(clk), .Q(PP6_r[19]) );
  DFFHQXL PP6_r_reg_18_ ( .D(N213), .CK(clk), .Q(PP6_r[18]) );
  DFFHQXL PP6_r_reg_17_ ( .D(N212), .CK(clk), .Q(PP6_r[17]) );
  DFFHQXL PP6_r_reg_16_ ( .D(N211), .CK(clk), .Q(PP6_r[16]) );
  DFFHQXL PP6_r_reg_15_ ( .D(N210), .CK(clk), .Q(PP6_r[15]) );
  DFFHQXL PP2_r_reg_19_ ( .D(N86), .CK(clk), .Q(PP2_r[19]) );
  DFFHQXL PP2_r_reg_18_ ( .D(N85), .CK(clk), .Q(PP2_r[18]) );
  DFFHQXL PP2_r_reg_17_ ( .D(N84), .CK(clk), .Q(PP2_r[17]) );
  DFFHQXL PP2_r_reg_15_ ( .D(N82), .CK(clk), .Q(PP2_r[15]) );
  DFFHQXL PP2_r_reg_14_ ( .D(N81), .CK(clk), .Q(PP2_r[14]) );
  DFFHQXL PP2_r_reg_13_ ( .D(N80), .CK(clk), .Q(PP2_r[13]) );
  DFFHQXL PP2_r_reg_12_ ( .D(N79), .CK(clk), .Q(PP2_r[12]) );
  DFFHQXL PP2_r_reg_11_ ( .D(N78), .CK(clk), .Q(PP2_r[11]) );
  DFFHQXL PP2_r_reg_10_ ( .D(N77), .CK(clk), .Q(PP2_r[10]) );
  DFFHQXL PP2_r_reg_9_ ( .D(N76), .CK(clk), .Q(PP2_r[9]) );
  DFFHQXL PP2_r_reg_8_ ( .D(N75), .CK(clk), .Q(PP2_r[8]) );
  DFFHQXL PP2_r_reg_7_ ( .D(N74), .CK(clk), .Q(PP2_r[7]) );
  DFFHQXL PP3_r_reg_16_ ( .D(N115), .CK(clk), .Q(PP3_r[16]) );
  DFFHQXL PP4_r_reg_11_ ( .D(N142), .CK(clk), .Q(PP4_r[11]) );
  DFFHQXL PP6_r_reg_28_ ( .D(N223), .CK(clk), .Q(PP6_r[28]) );
  DFFHQXL PP6_r_reg_27_ ( .D(N222), .CK(clk), .Q(PP6_r[27]) );
  DFFHQXL PP6_r_reg_13_ ( .D(N208), .CK(clk), .Q(PP6_r[13]) );
  DFFHQXL PP7_r_reg_30_ ( .D(N257), .CK(clk), .Q(PP7_r[30]) );
  DFFHQXL PP7_r_reg_29_ ( .D(N256), .CK(clk), .Q(PP7_r[29]) );
  DFFHQXL PP7_r_reg_28_ ( .D(N255), .CK(clk), .Q(PP7_r[28]) );
  DFFHQXL PP7_r_reg_27_ ( .D(N254), .CK(clk), .Q(PP7_r[27]) );
  DFFHQXL PP7_r_reg_14_ ( .D(N241), .CK(clk), .Q(PP7_r[14]) );
  DFFHQXL PP0_r_reg_6_ ( .D(N9), .CK(clk), .Q(PP0_r[6]) );
  DFFHQXL PP0_r_reg_5_ ( .D(N8), .CK(clk), .Q(PP0_r[5]) );
  DFFHQXL PP0_r_reg_4_ ( .D(N7), .CK(clk), .Q(PP0_r[4]) );
  DFFHQXL PP0_r_reg_3_ ( .D(N6), .CK(clk), .Q(PP0_r[3]) );
  DFFHQXL PP0_r_reg_2_ ( .D(N5), .CK(clk), .Q(PP0_r[2]) );
  DFFHQXL PP0_r_reg_1_ ( .D(N4), .CK(clk), .Q(PP0_r[1]) );
  DFFHQXL PP0_r_reg_0_ ( .D(N3), .CK(clk), .Q(PP0_r[0]) );
  DFFHQXL PP1_r_reg_18_ ( .D(N53), .CK(clk), .Q(PP1_r[18]) );
  DFFHQXL PP1_r_reg_17_ ( .D(N52), .CK(clk), .Q(PP1_r[17]) );
  DFFHQXL PP1_r_reg_16_ ( .D(N51), .CK(clk), .Q(PP1_r[16]) );
  DFFHQXL PP1_r_reg_15_ ( .D(N50), .CK(clk), .Q(PP1_r[15]) );
  DFFHQXL PP1_r_reg_14_ ( .D(N49), .CK(clk), .Q(PP1_r[14]) );
  DFFHQXL PP1_r_reg_13_ ( .D(N48), .CK(clk), .Q(PP1_r[13]) );
  DFFHQXL PP1_r_reg_11_ ( .D(N46), .CK(clk), .Q(PP1_r[11]) );
  DFFHQXL PP1_r_reg_10_ ( .D(N45), .CK(clk), .Q(PP1_r[10]) );
  DFFHQXL PP1_r_reg_9_ ( .D(N44), .CK(clk), .Q(PP1_r[9]) );
  DFFHQXL PP1_r_reg_8_ ( .D(N43), .CK(clk), .Q(PP1_r[8]) );
  DFFHQXL PP1_r_reg_7_ ( .D(N42), .CK(clk), .Q(PP1_r[7]) );
  DFFHQXL PP1_r_reg_6_ ( .D(N41), .CK(clk), .Q(PP1_r[6]) );
  DFFHQXL PP1_r_reg_5_ ( .D(N40), .CK(clk), .Q(PP1_r[5]) );
  DFFHQXL PP1_r_reg_4_ ( .D(N39), .CK(clk), .Q(PP1_r[4]) );
  DFFHQXL PP1_r_reg_3_ ( .D(N38), .CK(clk), .Q(PP1_r[3]) );
  DFFHQXL PP1_r_reg_2_ ( .D(N37), .CK(clk), .Q(PP1_r[2]) );
  DFFHQXL PP2_r_reg_20_ ( .D(N87), .CK(clk), .Q(PP2_r[20]) );
  DFFHQXL PP2_r_reg_5_ ( .D(N72), .CK(clk), .Q(PP2_r[5]) );
  DFFHQXL PP2_r_reg_4_ ( .D(N71), .CK(clk), .Q(PP2_r[4]) );
  DFFHQXL PP3_r_reg_22_ ( .D(N121), .CK(clk), .Q(PP3_r[22]) );
  DFFHQXL PP3_r_reg_21_ ( .D(N120), .CK(clk), .Q(PP3_r[21]) );
  DFFHQXL PP3_r_reg_6_ ( .D(N105), .CK(clk), .Q(PP3_r[6]) );
  DFFHQXL PP4_r_reg_14_ ( .D(N145), .CK(clk), .Q(PP4_r[14]) );
  DFFHQXL PP4_r_reg_10_ ( .D(N141), .CK(clk), .Q(PP4_r[10]) );
  DFFHQXL PP4_r_reg_8_ ( .D(N139), .CK(clk), .Q(PP4_r[8]) );
  DFFHQXL PP5_r_reg_26_ ( .D(N189), .CK(clk), .Q(PP5_r[26]) );
  DFFHQXL PP5_r_reg_25_ ( .D(N188), .CK(clk), .Q(PP5_r[25]) );
  DFFHQXL PP5_r_reg_24_ ( .D(N187), .CK(clk), .Q(PP5_r[24]) );
  DFFHQXL PP5_r_reg_23_ ( .D(N186), .CK(clk), .Q(PP5_r[23]) );
  DFFHQXL PP5_r_reg_22_ ( .D(N185), .CK(clk), .Q(PP5_r[22]) );
  DFFHQXL PP5_r_reg_21_ ( .D(N184), .CK(clk), .Q(PP5_r[21]) );
  DFFHQXL PP5_r_reg_20_ ( .D(N183), .CK(clk), .Q(PP5_r[20]) );
  DFFHQXL PP5_r_reg_19_ ( .D(N182), .CK(clk), .Q(PP5_r[19]) );
  DFFHQXL PP5_r_reg_18_ ( .D(N181), .CK(clk), .Q(PP5_r[18]) );
  DFFHQXL PP5_r_reg_17_ ( .D(N180), .CK(clk), .Q(PP5_r[17]) );
  DFFHQXL PP5_r_reg_16_ ( .D(N179), .CK(clk), .Q(PP5_r[16]) );
  DFFHQXL PP5_r_reg_15_ ( .D(N178), .CK(clk), .Q(PP5_r[15]) );
  DFFHQXL PP5_r_reg_13_ ( .D(N176), .CK(clk), .Q(PP5_r[13]) );
  DFFHQXL PP5_r_reg_10_ ( .D(N173), .CK(clk), .Q(PP5_r[10]) );
  DFFHQXL Sum_r_reg_31_ ( .D(N290), .CK(clk), .Q(Sum_r_31_) );
  DFFHQXL Carry_r_reg_31_ ( .D(N322), .CK(clk), .Q(Carry_r[31]) );
  DFFHQXL Carry_r_reg_0_ ( .D(N291), .CK(clk), .Q(Carry_r[0]) );
  DFFHQXL Carry_r_reg_29_ ( .D(N320), .CK(clk), .Q(Carry_r[29]) );
  DFFHQXL Carry_r_reg_28_ ( .D(N319), .CK(clk), .Q(Carry_r[28]) );
  DFFHQXL Carry_r_reg_27_ ( .D(N318), .CK(clk), .Q(Carry_r[27]) );
  DFFHQXL Carry_r_reg_26_ ( .D(N317), .CK(clk), .Q(Carry_r[26]) );
  DFFHQXL Carry_r_reg_25_ ( .D(N316), .CK(clk), .Q(Carry_r[25]) );
  DFFHQXL Carry_r_reg_24_ ( .D(N315), .CK(clk), .Q(Carry_r[24]) );
  DFFHQXL Carry_r_reg_22_ ( .D(N313), .CK(clk), .Q(Carry_r[22]) );
  DFFHQXL Carry_r_reg_21_ ( .D(N312), .CK(clk), .Q(Carry_r[21]) );
  DFFHQXL Carry_r_reg_20_ ( .D(N311), .CK(clk), .Q(Carry_r[20]) );
  DFFHQXL Carry_r_reg_19_ ( .D(N310), .CK(clk), .Q(Carry_r[19]) );
  DFFHQXL Carry_r_reg_18_ ( .D(N309), .CK(clk), .Q(Carry_r[18]) );
  DFFHQXL Carry_r_reg_17_ ( .D(N308), .CK(clk), .Q(Carry_r[17]) );
  DFFHQXL Carry_r_reg_16_ ( .D(N307), .CK(clk), .Q(Carry_r[16]) );
  DFFHQXL Carry_r_reg_15_ ( .D(N306), .CK(clk), .Q(Carry_r[15]) );
  DFFHQXL Carry_r_reg_14_ ( .D(N305), .CK(clk), .Q(Carry_r[14]) );
  DFFHQXL Carry_r_reg_13_ ( .D(N304), .CK(clk), .Q(Carry_r[13]) );
  DFFHQXL Carry_r_reg_12_ ( .D(N303), .CK(clk), .Q(Carry_r[12]) );
  DFFHQXL Carry_r_reg_11_ ( .D(N302), .CK(clk), .Q(Carry_r[11]) );
  DFFHQXL Carry_r_reg_10_ ( .D(N301), .CK(clk), .Q(Carry_r[10]) );
  DFFHQXL Carry_r_reg_9_ ( .D(N300), .CK(clk), .Q(Carry_r[9]) );
  DFFHQXL Carry_r_reg_7_ ( .D(N298), .CK(clk), .Q(Carry_r[7]) );
  DFFHQXL Carry_r_reg_6_ ( .D(N297), .CK(clk), .Q(Carry_r[6]) );
  DFFHQXL Carry_r_reg_5_ ( .D(N296), .CK(clk), .Q(Carry_r[5]) );
  DFFHQXL Carry_r_reg_4_ ( .D(N295), .CK(clk), .Q(Carry_r[4]) );
  DFFHQXL Carry_r_reg_3_ ( .D(N294), .CK(clk), .Q(Carry_r[3]) );
  DFFHQXL Sum_r_reg_29_ ( .D(N288), .CK(clk), .Q(Sum_r_29_) );
  DFFHQXL Sum_r_reg_28_ ( .D(N287), .CK(clk), .Q(Sum_r_28_) );
  DFFHQXL Sum_r_reg_27_ ( .D(N286), .CK(clk), .Q(Sum_r_27_) );
  DFFHQXL Sum_r_reg_26_ ( .D(N285), .CK(clk), .Q(Sum_r_26_) );
  DFFHQXL Sum_r_reg_25_ ( .D(N284), .CK(clk), .Q(Sum_r_25_) );
  DFFHQXL Sum_r_reg_24_ ( .D(N283), .CK(clk), .Q(Sum_r_24_) );
  DFFHQXL Sum_r_reg_23_ ( .D(N282), .CK(clk), .Q(Sum_r_23_) );
  DFFHQXL Sum_r_reg_22_ ( .D(N281), .CK(clk), .Q(Sum_r_22_) );
  DFFHQXL Sum_r_reg_20_ ( .D(N279), .CK(clk), .Q(Sum_r_20_) );
  DFFHQXL Sum_r_reg_19_ ( .D(N278), .CK(clk), .Q(Sum_r_19_) );
  DFFHQXL Sum_r_reg_18_ ( .D(N277), .CK(clk), .Q(Sum_r_18_) );
  DFFHQXL Sum_r_reg_17_ ( .D(N276), .CK(clk), .Q(Sum_r_17_) );
  DFFHQXL Sum_r_reg_16_ ( .D(N275), .CK(clk), .Q(Sum_r_16_) );
  DFFHQXL Sum_r_reg_15_ ( .D(N274), .CK(clk), .Q(Sum_r_15_) );
  DFFHQXL Sum_r_reg_14_ ( .D(N273), .CK(clk), .Q(Sum_r_14_) );
  DFFHQXL Sum_r_reg_13_ ( .D(N272), .CK(clk), .Q(Sum_r_13_) );
  DFFHQXL Sum_r_reg_12_ ( .D(N271), .CK(clk), .Q(Sum_r_12_) );
  DFFHQXL Sum_r_reg_11_ ( .D(N270), .CK(clk), .Q(Sum_r_11_) );
  DFFHQXL Sum_r_reg_10_ ( .D(N269), .CK(clk), .Q(Sum_r_10_) );
  DFFHQXL Sum_r_reg_9_ ( .D(N268), .CK(clk), .Q(Sum_r_9_) );
  DFFHQXL Sum_r_reg_8_ ( .D(N267), .CK(clk), .Q(Sum_r_8_) );
  DFFHQXL Sum_r_reg_7_ ( .D(N266), .CK(clk), .Q(Sum_r_7_) );
  DFFHQXL Sum_r_reg_5_ ( .D(N264), .CK(clk), .Q(Sum_r_5_) );
  DFFHQXL Sum_r_reg_4_ ( .D(N263), .CK(clk), .Q(Sum_r_4_) );
  DFFHQXL Sum_r_reg_3_ ( .D(N262), .CK(clk), .Q(Sum_r_3_) );
  INVX1 U324 ( .A(rst_n), .Y(n69) );
  AND2X1 U325 ( .A(n2140), .B(PP0[18]), .Y(N21) );
  AND2X1 U326 ( .A(n2140), .B(PP0[17]), .Y(N20) );
  AND2X1 U327 ( .A(n2150), .B(PP0[19]), .Y(N22) );
  AND2X1 U328 ( .A(n2120), .B(PP0[15]), .Y(N18) );
  AND2X1 U329 ( .A(n2120), .B(PP0[16]), .Y(N19) );
  AND2X1 U330 ( .A(n2001), .B(PP4[23]), .Y(N154) );
  AND2X1 U331 ( .A(n2070), .B(PP2[21]), .Y(N88) );
  AND2X1 U332 ( .A(n206), .B(PP2[19]), .Y(N86) );
  AND2X1 U333 ( .A(n192), .B(PP7[31]), .Y(N258) );
  AND2X1 U334 ( .A(n1911), .B(PP7[29]), .Y(N256) );
  AND2X1 U335 ( .A(n201), .B(PP4[25]), .Y(N156) );
  AND2X1 U336 ( .A(n197), .B(PP5[25]), .Y(N188) );
  AND2X1 U337 ( .A(n1811), .B(PP0[14]), .Y(N17) );
  AND2X1 U338 ( .A(n198), .B(PP5[27]), .Y(N190) );
  AND2X1 U339 ( .A(n195), .B(PP6[29]), .Y(N224) );
  AND2X1 U340 ( .A(n203), .B(PP3[21]), .Y(N120) );
  AND2X1 U341 ( .A(n197), .B(PP5[26]), .Y(N189) );
  AND2X1 U342 ( .A(n1911), .B(PP7[30]), .Y(N257) );
  AND2X1 U343 ( .A(n2001), .B(PP4[24]), .Y(N155) );
  AND2X1 U344 ( .A(n194), .B(PP6[27]), .Y(N222) );
  AND2X1 U345 ( .A(n2100), .B(PP1[19]), .Y(N54) );
  AND2X1 U346 ( .A(n204), .B(PP3[23]), .Y(N122) );
  AND2X1 U347 ( .A(n206), .B(PP2[20]), .Y(N87) );
  AND2X1 U348 ( .A(n2090), .B(PP1[17]), .Y(N52) );
  AND2X1 U349 ( .A(n194), .B(PP6[28]), .Y(N223) );
  AND2X1 U350 ( .A(n1840), .B(PP5[24]), .Y(N187) );
  AND2X1 U351 ( .A(n1860), .B(PP2[18]), .Y(N85) );
  AND2X1 U352 ( .A(n2090), .B(PP1[18]), .Y(N53) );
  AND2X1 U353 ( .A(n1880), .B(PP4[22]), .Y(N153) );
  AND2X1 U354 ( .A(n203), .B(PP3[22]), .Y(N121) );
  AND2X1 U355 ( .A(n1820), .B(PP1[16]), .Y(N51) );
  AND2X1 U356 ( .A(n1830), .B(PP6[26]), .Y(N221) );
  AND2X1 U357 ( .A(n1850), .B(PP3[20]), .Y(N119) );
  AND2X1 U358 ( .A(n1820), .B(PP1[15]), .Y(N50) );
  INVX1 U359 ( .A(n1000), .Y(n390) );
  INVX1 U360 ( .A(n1910), .Y(n1000) );
  INVX1 U361 ( .A(n2111), .Y(n1890) );
  AND2XL U362 ( .A(n1870), .B(PP7[28]), .Y(N255) );
  AND2XL U363 ( .A(n1840), .B(PP5[23]), .Y(N186) );
  AND2XL U364 ( .A(n1870), .B(PP7[27]), .Y(N254) );
  AND2XL U365 ( .A(n166), .B(PP5[22]), .Y(N185) );
  AND2XL U366 ( .A(n169), .B(PP1[14]), .Y(N49) );
  AND2XL U367 ( .A(n166), .B(PP5[21]), .Y(N184) );
  AND2XL U368 ( .A(n1510), .B(PP5[20]), .Y(N183) );
  AND2XL U369 ( .A(n1500), .B(PP1[12]), .Y(N47) );
  AND2XL U370 ( .A(n1510), .B(PP5[19]), .Y(N182) );
  AND2XL U371 ( .A(n1500), .B(PP1[11]), .Y(N46) );
  AND2XL U372 ( .A(n137), .B(PP5[18]), .Y(N181) );
  AND2XL U373 ( .A(n136), .B(PP1[10]), .Y(N45) );
  AND2XL U374 ( .A(n137), .B(PP5[17]), .Y(N180) );
  AND2XL U375 ( .A(n1170), .B(PP0[6]), .Y(N9) );
  AND2XL U376 ( .A(n1220), .B(PP4[14]), .Y(N145) );
  AND2XL U377 ( .A(n1220), .B(PP4[13]), .Y(N144) );
  INVX1 U378 ( .A(n800), .Y(n95) );
  INVX1 U379 ( .A(n720), .Y(n1001) );
  INVX1 U380 ( .A(n31), .Y(n1570) );
  INVX1 U381 ( .A(n800), .Y(n1430) );
  INVX1 U382 ( .A(n720), .Y(n1120) );
  INVX1 U383 ( .A(n770), .Y(n131) );
  INVX1 U384 ( .A(n760), .Y(n790) );
  INVX1 U385 ( .A(n31), .Y(n551) );
  INVX1 U386 ( .A(n770), .Y(n1130) );
  INVX1 U387 ( .A(n1910), .Y(n25) );
  INVX1 U388 ( .A(n760), .Y(n1440) );
  INVX1 U389 ( .A(n740), .Y(n800) );
  INVX1 U390 ( .A(n710), .Y(n720) );
  INVX1 U391 ( .A(n740), .Y(n770) );
  INVX1 U392 ( .A(n1410), .Y(n1910) );
  INVX1 U393 ( .A(n125), .Y(n2111) );
  INVX1 U394 ( .A(n1410), .Y(n31) );
  INVX1 U395 ( .A(n710), .Y(n760) );
  INVX1 U396 ( .A(n28), .Y(n1410) );
  INVX1 U397 ( .A(n28), .Y(n710) );
  INVX1 U398 ( .A(n730), .Y(n125) );
  INVX1 U399 ( .A(n730), .Y(n740) );
  INVX1 U400 ( .A(n69), .Y(n730) );
  INVX1 U401 ( .A(n69), .Y(n28) );
  INVXL U402 ( .A(n95), .Y(n132) );
  INVXL U403 ( .A(n1001), .Y(n128) );
  INVXL U404 ( .A(n1120), .Y(n1470) );
  INVXL U405 ( .A(n1130), .Y(n1450) );
  INVXL U406 ( .A(n131), .Y(n162) );
  INVXL U407 ( .A(n1890), .Y(n1571) );
  INVXL U408 ( .A(n1570), .Y(n1810) );
  INVXL U409 ( .A(n551), .Y(n56) );
  INVXL U410 ( .A(n551), .Y(n480) );
  INVXL U411 ( .A(n25), .Y(n2110) );
  INVXL U412 ( .A(n25), .Y(n36) );
  INVXL U413 ( .A(n1570), .Y(n1700) );
  INVXL U414 ( .A(n790), .Y(n1140) );
  INVXL U415 ( .A(n1440), .Y(n1760) );
  INVXL U416 ( .A(n1440), .Y(n96) );
  INVXL U417 ( .A(n131), .Y(n820) );
  INVXL U418 ( .A(n1130), .Y(n1750) );
  INVXL U419 ( .A(n95), .Y(n164) );
  INVXL U420 ( .A(n1430), .Y(n1150) );
  INVXL U421 ( .A(n1430), .Y(n1740) );
  INVXL U422 ( .A(n125), .Y(n93) );
  INVXL U423 ( .A(n1120), .Y(n750) );
  INVXL U424 ( .A(n1001), .Y(n1790) );
  INVXL U425 ( .A(n790), .Y(n159) );
  INVXL U426 ( .A(n159), .Y(n1770) );
  INVXL U427 ( .A(n1470), .Y(n163) );
  INVXL U428 ( .A(n1571), .Y(n1730) );
  INVXL U429 ( .A(n1450), .Y(n158) );
  INVXL U430 ( .A(n162), .Y(n1800) );
  INVXL U431 ( .A(n162), .Y(n1480) );
  INVXL U432 ( .A(n164), .Y(n1780) );
  INVXL U433 ( .A(n2111), .Y(n2130) );
  INVXL U434 ( .A(n1760), .Y(n161) );
  INVXL U435 ( .A(n1760), .Y(n196) );
  INVXL U436 ( .A(n96), .Y(n850) );
  INVXL U437 ( .A(n820), .Y(n199) );
  INVXL U438 ( .A(n1750), .Y(n202) );
  INVXL U439 ( .A(n164), .Y(n205) );
  INVXL U440 ( .A(n1740), .Y(n1601) );
  INVXL U441 ( .A(n1740), .Y(n2080) );
  INVXL U442 ( .A(n1790), .Y(n1900) );
  INVXL U443 ( .A(n159), .Y(n193) );
  INVXL U444 ( .A(n1780), .Y(n1860) );
  INVXL U445 ( .A(n1770), .Y(n1830) );
  INVXL U446 ( .A(n2130), .Y(n2120) );
  INVXL U447 ( .A(n1730), .Y(n1811) );
  INVXL U448 ( .A(n1730), .Y(n165) );
  INVXL U449 ( .A(n1800), .Y(n1880) );
  INVXL U450 ( .A(n1800), .Y(n171) );
  INVXL U451 ( .A(n199), .Y(n2001) );
  INVXL U452 ( .A(n202), .Y(n1850) );
  INVXL U453 ( .A(n2130), .Y(n2140) );
  INVXL U454 ( .A(n810), .Y(n192) );
  INVXL U455 ( .A(n193), .Y(n195) );
  INVXL U456 ( .A(n161), .Y(n166) );
  INVXL U457 ( .A(n196), .Y(n1840) );
  INVXL U458 ( .A(n196), .Y(n197) );
  INVXL U459 ( .A(n850), .Y(n198) );
  INVXL U460 ( .A(n199), .Y(n201) );
  INVXL U461 ( .A(n202), .Y(n203) );
  INVXL U462 ( .A(n840), .Y(n204) );
  INVXL U463 ( .A(n205), .Y(n206) );
  INVXL U464 ( .A(n205), .Y(n2070) );
  INVXL U465 ( .A(n2080), .Y(n1820) );
  INVXL U466 ( .A(n2080), .Y(n2090) );
  INVXL U467 ( .A(n780), .Y(n2100) );
  INVXL U468 ( .A(n1900), .Y(n1870) );
  INVXL U469 ( .A(n1900), .Y(n1911) );
  INVXL U470 ( .A(n193), .Y(n194) );
  AND2XL U471 ( .A(n102), .B(PP4[11]), .Y(N142) );
  AND2XL U472 ( .A(n1520), .B(PP3[16]), .Y(N115) );
  AND2XL U473 ( .A(n1231), .B(PP2[9]), .Y(N76) );
  AND2XL U474 ( .A(n1231), .B(PP2[10]), .Y(N77) );
  AND2XL U475 ( .A(n138), .B(PP2[11]), .Y(N78) );
  AND2XL U476 ( .A(n138), .B(PP2[12]), .Y(N79) );
  AND2XL U477 ( .A(n1540), .B(PP2[13]), .Y(N80) );
  AND2XL U478 ( .A(n1540), .B(PP2[14]), .Y(N81) );
  AND2XL U479 ( .A(n1701), .B(PP2[15]), .Y(N82) );
  AND2XL U480 ( .A(n1860), .B(PP2[17]), .Y(N84) );
  AND2XL U481 ( .A(n1060), .B(PP6[16]), .Y(N211) );
  AND2XL U482 ( .A(n1180), .B(PP6[17]), .Y(N212) );
  AND2XL U483 ( .A(n1180), .B(PP6[18]), .Y(N213) );
  AND2XL U484 ( .A(n134), .B(PP6[19]), .Y(N214) );
  AND2XL U485 ( .A(n134), .B(PP6[20]), .Y(N215) );
  AND2XL U486 ( .A(n1530), .B(PP6[21]), .Y(N216) );
  AND2XL U487 ( .A(n1530), .B(PP6[22]), .Y(N217) );
  AND2XL U488 ( .A(n167), .B(PP6[23]), .Y(N218) );
  AND2XL U489 ( .A(n167), .B(PP6[24]), .Y(N219) );
  AND2XL U490 ( .A(n1830), .B(PP6[25]), .Y(N220) );
  AND2XL U491 ( .A(n172), .B(PP7[26]), .Y(N253) );
  AND2XL U492 ( .A(n172), .B(PP7[25]), .Y(N252) );
  AND2XL U493 ( .A(n1550), .B(PP7[24]), .Y(N251) );
  AND2XL U494 ( .A(n1550), .B(PP7[23]), .Y(N250) );
  AND2XL U495 ( .A(n1390), .B(PP7[22]), .Y(N249) );
  AND2XL U496 ( .A(n1390), .B(PP7[21]), .Y(N248) );
  AND2XL U497 ( .A(n124), .B(PP7[20]), .Y(N247) );
  AND2XL U498 ( .A(n124), .B(PP7[19]), .Y(N246) );
  AND2XL U499 ( .A(n1811), .B(PP0[13]), .Y(N16) );
  AND2XL U500 ( .A(n165), .B(PP0[12]), .Y(N15) );
  AND2XL U501 ( .A(n165), .B(PP0[11]), .Y(N14) );
  AND2XL U502 ( .A(n1490), .B(PP0[10]), .Y(N13) );
  AND2XL U503 ( .A(n1490), .B(PP0[9]), .Y(N12) );
  AND2XL U504 ( .A(n133), .B(PP0[7]), .Y(N10) );
  AND2XL U505 ( .A(n1850), .B(PP3[19]), .Y(N118) );
  AND2XL U506 ( .A(n168), .B(PP3[18]), .Y(N117) );
  AND2XL U507 ( .A(n168), .B(PP3[17]), .Y(N116) );
  AND2XL U508 ( .A(n1520), .B(PP3[15]), .Y(N114) );
  AND2XL U509 ( .A(n135), .B(PP3[14]), .Y(N113) );
  AND2XL U510 ( .A(n135), .B(PP3[13]), .Y(N112) );
  AND2XL U511 ( .A(n1210), .B(PP3[12]), .Y(N111) );
  AND2XL U512 ( .A(n1210), .B(PP3[11]), .Y(N110) );
  AND2XL U513 ( .A(n1050), .B(PP3[10]), .Y(N109) );
  AND2XL U514 ( .A(n1880), .B(PP4[21]), .Y(N152) );
  AND2XL U515 ( .A(n171), .B(PP4[20]), .Y(N151) );
  AND2XL U516 ( .A(n171), .B(PP4[19]), .Y(N150) );
  AND2XL U517 ( .A(n1560), .B(PP4[18]), .Y(N149) );
  AND2XL U518 ( .A(n1560), .B(PP4[17]), .Y(N148) );
  AND2XL U519 ( .A(n1400), .B(PP4[16]), .Y(N147) );
  AND2XL U520 ( .A(n1400), .B(PP4[15]), .Y(N146) );
  AND2XL U521 ( .A(n102), .B(PP4[12]), .Y(N143) );
  INVXL U522 ( .A(n1890), .Y(n2150) );
  AND2XL U523 ( .A(n1701), .B(PP2[16]), .Y(N83) );
  AND2XL U524 ( .A(n133), .B(PP0[8]), .Y(N11) );
  AND2XL U525 ( .A(n1200), .B(PP5[15]), .Y(N178) );
  AND2XL U526 ( .A(n1200), .B(PP5[16]), .Y(N179) );
  AND2XL U527 ( .A(n880), .B(PP4[10]), .Y(N141) );
  AND2XL U528 ( .A(n1190), .B(PP1[7]), .Y(N42) );
  AND2XL U529 ( .A(n1190), .B(PP1[8]), .Y(N43) );
  AND2XL U530 ( .A(n136), .B(PP1[9]), .Y(N44) );
  AND2XL U531 ( .A(n169), .B(PP1[13]), .Y(N48) );
  AND2XL U532 ( .A(n101), .B(PP0[4]), .Y(N7) );
  AND2XL U533 ( .A(n1170), .B(PP0[5]), .Y(N8) );
  INVXL U534 ( .A(n700), .Y(n1) );
  INVXL U535 ( .A(n1), .Y(n2) );
  INVXL U536 ( .A(n1), .Y(n3000) );
  INVXL U537 ( .A(n700), .Y(n410) );
  INVXL U538 ( .A(n410), .Y(n550) );
  INVXL U539 ( .A(n410), .Y(n600) );
  BUFX1 U540 ( .A(PP5_r[28]), .Y(n700) );
  BUFX1 U541 ( .A(PP5_r[28]), .Y(n890) );
  AND2XL U542 ( .A(n370), .B(Sum[7]), .Y(N266) );
  AND2XL U543 ( .A(n63), .B(Sum[22]), .Y(N281) );
  AND2XL U544 ( .A(n500), .B(Carry[9]), .Y(N300) );
  AND2XL U545 ( .A(n380), .B(Carry[24]), .Y(N315) );
  AND2XL U546 ( .A(n201), .B(PP3[6]), .Y(N105) );
  AND2XL U547 ( .A(n1060), .B(PP6[15]), .Y(N210) );
  INVXL U548 ( .A(n1000), .Y(n900) );
  AND2XL U549 ( .A(n900), .B(Carry[0]), .Y(N291) );
  AND2XL U550 ( .A(n900), .B(Carry[1]), .Y(N292) );
  AND2XL U551 ( .A(rst_n), .B(Carry[2]), .Y(N293) );
  INVXL U552 ( .A(n390), .Y(n1110) );
  INVXL U553 ( .A(n1110), .Y(n1300) );
  AND2XL U554 ( .A(n1300), .B(Carry[3]), .Y(N294) );
  INVXL U555 ( .A(n1110), .Y(n1230) );
  AND2XL U556 ( .A(n1230), .B(Carry[6]), .Y(N297) );
  AND2XL U557 ( .A(n1230), .B(Carry[5]), .Y(N296) );
  AND2XL U558 ( .A(n1300), .B(Carry[4]), .Y(N295) );
  INVXL U559 ( .A(n1810), .Y(n32) );
  INVXL U560 ( .A(n32), .Y(n23) );
  AND2XL U561 ( .A(n23), .B(Sum[6]), .Y(N265) );
  INVXL U562 ( .A(n1700), .Y(n1600) );
  INVXL U563 ( .A(n1600), .Y(n24) );
  AND2XL U564 ( .A(n24), .B(Sum[3]), .Y(N262) );
  INVXL U565 ( .A(n1600), .Y(n530) );
  AND2XL U566 ( .A(n530), .B(Sum[2]), .Y(N261) );
  INVXL U567 ( .A(n1700), .Y(n411) );
  INVXL U568 ( .A(n411), .Y(n430) );
  AND2XL U569 ( .A(n430), .B(Carry[30]), .Y(N321) );
  INVXL U570 ( .A(n1810), .Y(n62) );
  INVXL U571 ( .A(n62), .Y(n34) );
  AND2XL U572 ( .A(n34), .B(Sum[9]), .Y(N268) );
  INVXL U573 ( .A(n2110), .Y(n33) );
  INVXL U574 ( .A(n33), .Y(n2000) );
  AND2XL U575 ( .A(n2000), .B(Carry[13]), .Y(N304) );
  AND2XL U576 ( .A(n2000), .B(Carry[14]), .Y(N305) );
  INVXL U577 ( .A(n2110), .Y(n29) );
  INVXL U578 ( .A(n29), .Y(n226) );
  AND2XL U579 ( .A(n226), .B(Carry[15]), .Y(N306) );
  AND2XL U580 ( .A(n226), .B(Carry[16]), .Y(N307) );
  AND2XL U581 ( .A(n23), .B(Sum[5]), .Y(N264) );
  AND2XL U582 ( .A(n24), .B(Sum[4]), .Y(N263) );
  INVXL U583 ( .A(n36), .Y(n27) );
  INVXL U584 ( .A(n27), .Y(n26) );
  AND2XL U585 ( .A(n26), .B(Carry[19]), .Y(N310) );
  AND2XL U586 ( .A(n26), .B(Carry[20]), .Y(N311) );
  INVXL U587 ( .A(n27), .Y(n35) );
  AND2XL U588 ( .A(n35), .B(Carry[21]), .Y(N312) );
  INVXL U589 ( .A(n750), .Y(n540) );
  INVXL U590 ( .A(n540), .Y(n460) );
  AND2XL U591 ( .A(n460), .B(Sum[29]), .Y(N288) );
  INVXL U592 ( .A(n29), .Y(n3010) );
  AND2XL U593 ( .A(n3010), .B(Carry[17]), .Y(N308) );
  AND2XL U594 ( .A(n3010), .B(Carry[18]), .Y(N309) );
  INVXL U595 ( .A(n480), .Y(n440) );
  INVXL U596 ( .A(n440), .Y(n470) );
  AND2XL U597 ( .A(n470), .B(Sum[26]), .Y(N285) );
  INVXL U598 ( .A(n32), .Y(n370) );
  AND2XL U599 ( .A(n370), .B(Sum[8]), .Y(N267) );
  INVXL U600 ( .A(n33), .Y(n510) );
  AND2XL U601 ( .A(n510), .B(Carry[12]), .Y(N303) );
  AND2XL U602 ( .A(n34), .B(Sum[10]), .Y(N269) );
  AND2XL U603 ( .A(n35), .B(Carry[22]), .Y(N313) );
  INVXL U604 ( .A(n36), .Y(n400) );
  INVXL U605 ( .A(n400), .Y(n380) );
  AND2XL U606 ( .A(n380), .B(Carry[23]), .Y(N314) );
  INVXL U607 ( .A(n390), .Y(n490) );
  INVXL U608 ( .A(n490), .Y(n66) );
  AND2XL U609 ( .A(n66), .B(Carry[8]), .Y(N299) );
  INVXL U610 ( .A(n400), .Y(n520) );
  AND2XL U611 ( .A(n520), .B(Carry[26]), .Y(N317) );
  INVXL U612 ( .A(n411), .Y(n420) );
  AND2XL U613 ( .A(n420), .B(Carry[27]), .Y(N318) );
  AND2XL U614 ( .A(n420), .B(Carry[28]), .Y(N319) );
  AND2XL U615 ( .A(n430), .B(Carry[29]), .Y(N320) );
  INVXL U616 ( .A(n440), .Y(n450) );
  AND2XL U617 ( .A(n450), .B(Sum[28]), .Y(N287) );
  AND2XL U618 ( .A(n450), .B(Sum[27]), .Y(N286) );
  AND2XL U619 ( .A(n460), .B(Sum[30]), .Y(N289) );
  AND2XL U620 ( .A(n470), .B(Sum[25]), .Y(N284) );
  INVXL U621 ( .A(n480), .Y(n59) );
  INVXL U622 ( .A(n59), .Y(n58) );
  AND2XL U623 ( .A(n58), .B(Sum[24]), .Y(N283) );
  INVXL U624 ( .A(n490), .Y(n500) );
  AND2XL U625 ( .A(n500), .B(Carry[10]), .Y(N301) );
  AND2XL U626 ( .A(n510), .B(Carry[11]), .Y(N302) );
  AND2XL U627 ( .A(n520), .B(Carry[25]), .Y(N316) );
  AND2XL U628 ( .A(n530), .B(Carry[31]), .Y(N322) );
  INVXL U629 ( .A(n540), .Y(n830) );
  AND2XL U630 ( .A(n830), .B(Sum[31]), .Y(N290) );
  INVXL U631 ( .A(n56), .Y(n64) );
  INVXL U632 ( .A(n64), .Y(n67) );
  AND2XL U633 ( .A(n67), .B(Sum[16]), .Y(N275) );
  INVXL U634 ( .A(n56), .Y(n601) );
  INVXL U635 ( .A(n601), .Y(n57) );
  AND2XL U636 ( .A(n57), .B(Sum[20]), .Y(N279) );
  AND2XL U637 ( .A(n57), .B(Sum[19]), .Y(N278) );
  AND2XL U638 ( .A(n58), .B(Sum[23]), .Y(N282) );
  INVXL U639 ( .A(n59), .Y(n63) );
  AND2XL U640 ( .A(n63), .B(Sum[21]), .Y(N280) );
  INVXL U641 ( .A(n601), .Y(n61) );
  AND2XL U642 ( .A(n61), .B(Sum[18]), .Y(N277) );
  AND2XL U643 ( .A(n61), .B(Sum[17]), .Y(N276) );
  INVXL U644 ( .A(n62), .Y(n68) );
  AND2XL U645 ( .A(n68), .B(Sum[12]), .Y(N271) );
  INVXL U646 ( .A(n64), .Y(n65) );
  AND2XL U647 ( .A(n65), .B(Sum[14]), .Y(N273) );
  AND2XL U648 ( .A(n65), .B(Sum[13]), .Y(N272) );
  AND2XL U649 ( .A(n66), .B(Carry[7]), .Y(N298) );
  AND2XL U650 ( .A(n67), .B(Sum[15]), .Y(N274) );
  AND2XL U651 ( .A(n68), .B(Sum[11]), .Y(N270) );
  INVXL U652 ( .A(n93), .Y(n780) );
  INVXL U653 ( .A(n780), .Y(n701) );
  AND2XL U654 ( .A(n701), .B(PP0[2]), .Y(N5) );
  AND2XL U655 ( .A(n701), .B(PP0[1]), .Y(N4) );
  INVXL U656 ( .A(n1140), .Y(n99) );
  INVXL U657 ( .A(n99), .Y(n91) );
  AND2XL U658 ( .A(n91), .B(PP5[11]), .Y(N174) );
  INVXL U659 ( .A(n1790), .Y(n810) );
  INVXL U660 ( .A(n810), .Y(n92) );
  AND2XL U661 ( .A(n92), .B(PP6[13]), .Y(N208) );
  INVXL U662 ( .A(n820), .Y(n97) );
  INVXL U663 ( .A(n97), .Y(n901) );
  AND2XL U664 ( .A(n901), .B(PP3[7]), .Y(N106) );
  INVXL U665 ( .A(n1150), .Y(n98) );
  INVXL U666 ( .A(n98), .Y(n891) );
  AND2XL U667 ( .A(n891), .B(PP1[3]), .Y(N38) );
  INVXL U668 ( .A(n750), .Y(n94) );
  INVXL U669 ( .A(n94), .Y(n860) );
  AND2XL U670 ( .A(n860), .B(PP7[15]), .Y(N242) );
  INVXL U671 ( .A(n850), .Y(n880) );
  AND2XL U672 ( .A(n880), .B(PP4[9]), .Y(N140) );
  INVXL U673 ( .A(n1750), .Y(n840) );
  INVXL U674 ( .A(n840), .Y(n870) );
  AND2XL U675 ( .A(n870), .B(PP2[5]), .Y(N72) );
  AND2XL U676 ( .A(n2100), .B(PP0[0]), .Y(N3) );
  AND2XL U677 ( .A(n195), .B(PP5[10]), .Y(N173) );
  AND2XL U678 ( .A(n2070), .B(PP1[2]), .Y(N37) );
  AND2XL U679 ( .A(n192), .B(PP6[12]), .Y(N207) );
  AND2XL U680 ( .A(n830), .B(PP7[14]), .Y(N241) );
  AND2XL U681 ( .A(n204), .B(PP2[4]), .Y(N71) );
  AND2XL U682 ( .A(n198), .B(PP4[8]), .Y(N139) );
  AND2XL U683 ( .A(n860), .B(PP7[16]), .Y(N243) );
  AND2XL U684 ( .A(n870), .B(PP2[6]), .Y(N73) );
  AND2XL U685 ( .A(n891), .B(PP1[4]), .Y(N39) );
  AND2XL U686 ( .A(n901), .B(PP3[8]), .Y(N107) );
  AND2XL U687 ( .A(n91), .B(PP5[12]), .Y(N175) );
  AND2XL U688 ( .A(n92), .B(PP6[14]), .Y(N209) );
  INVXL U689 ( .A(n93), .Y(n1090) );
  INVXL U690 ( .A(n1090), .Y(n101) );
  AND2XL U691 ( .A(n101), .B(PP0[3]), .Y(N6) );
  INVXL U692 ( .A(n94), .Y(n103) );
  AND2XL U693 ( .A(n103), .B(PP7[17]), .Y(N244) );
  INVXL U694 ( .A(n132), .Y(n1111) );
  INVXL U695 ( .A(n1111), .Y(n104) );
  AND2XL U696 ( .A(n104), .B(PP2[7]), .Y(N74) );
  INVXL U697 ( .A(n96), .Y(n1100) );
  INVXL U698 ( .A(n1100), .Y(n102) );
  INVXL U699 ( .A(n97), .Y(n1050) );
  AND2XL U700 ( .A(n1050), .B(PP3[9]), .Y(N108) );
  INVXL U701 ( .A(n98), .Y(n1070) );
  AND2XL U702 ( .A(n1070), .B(PP1[5]), .Y(N40) );
  INVXL U703 ( .A(n99), .Y(n1080) );
  AND2XL U704 ( .A(n1080), .B(PP5[13]), .Y(N176) );
  INVXL U705 ( .A(n128), .Y(n1160) );
  INVXL U706 ( .A(n1160), .Y(n1060) );
  AND2XL U707 ( .A(n103), .B(PP7[18]), .Y(N245) );
  AND2XL U708 ( .A(n104), .B(PP2[8]), .Y(N75) );
  AND2XL U709 ( .A(n1070), .B(PP1[6]), .Y(N41) );
  AND2XL U710 ( .A(n1080), .B(PP5[14]), .Y(N177) );
  INVXL U711 ( .A(n1090), .Y(n1170) );
  INVXL U712 ( .A(n1100), .Y(n1220) );
  INVXL U713 ( .A(n1111), .Y(n1231) );
  INVXL U714 ( .A(n1470), .Y(n1301) );
  INVXL U715 ( .A(n1301), .Y(n124) );
  INVXL U716 ( .A(n1450), .Y(n126) );
  INVXL U717 ( .A(n126), .Y(n1210) );
  INVXL U718 ( .A(n1140), .Y(n127) );
  INVXL U719 ( .A(n127), .Y(n1200) );
  INVXL U720 ( .A(n1150), .Y(n129) );
  INVXL U721 ( .A(n129), .Y(n1190) );
  INVXL U722 ( .A(n1160), .Y(n1180) );
  INVXL U723 ( .A(n1571), .Y(n1411) );
  INVXL U724 ( .A(n1411), .Y(n133) );
  INVXL U725 ( .A(n126), .Y(n135) );
  INVXL U726 ( .A(n127), .Y(n137) );
  INVXL U727 ( .A(n128), .Y(n1420) );
  INVXL U728 ( .A(n1420), .Y(n134) );
  INVXL U729 ( .A(n129), .Y(n136) );
  INVXL U730 ( .A(n1301), .Y(n1390) );
  INVXL U731 ( .A(n1480), .Y(n1400) );
  INVXL U732 ( .A(n132), .Y(n1460) );
  INVXL U733 ( .A(n1460), .Y(n138) );
  INVXL U734 ( .A(n1411), .Y(n1490) );
  INVXL U735 ( .A(n1420), .Y(n1530) );
  INVXL U736 ( .A(n1601), .Y(n1500) );
  INVXL U737 ( .A(n161), .Y(n1510) );
  INVXL U738 ( .A(n158), .Y(n1520) );
  INVXL U739 ( .A(n1460), .Y(n1540) );
  INVXL U740 ( .A(n163), .Y(n1550) );
  INVXL U741 ( .A(n1480), .Y(n1560) );
  INVXL U742 ( .A(n158), .Y(n168) );
  INVXL U743 ( .A(n1770), .Y(n167) );
  INVXL U744 ( .A(n1601), .Y(n169) );
  INVXL U745 ( .A(n163), .Y(n172) );
  INVXL U746 ( .A(n1780), .Y(n1701) );
endmodule

