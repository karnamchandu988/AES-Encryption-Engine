
// ===================== sub_bytes.v =====================
module sub_bytes (
    input  [127:0] state,
    output [127:0] sb_out
);
    function [7:0] sbox;
        input [7:0] in;
        reg [7:0] sbox_table [0:255];
        begin
        sbox_table[0] = 8'h63; sbox_table[1] = 8'h7c; sbox_table[2] = 8'h77; sbox_table[3] = 8'h7b;
        sbox_table[4] = 8'hf2; sbox_table[5] = 8'h6b; sbox_table[6] = 8'h6f; sbox_table[7] = 8'hc5;
        sbox_table[8] = 8'h30; sbox_table[9] = 8'h01; sbox_table[10] = 8'h67; sbox_table[11] = 8'h2b;
        sbox_table[12] = 8'hfe; sbox_table[13] = 8'hd7; sbox_table[14] = 8'hab; sbox_table[15] = 8'h76;
        sbox_table[16] = 8'hca; sbox_table[17] = 8'h82; sbox_table[18] = 8'hc9; sbox_table[19] = 8'h7d;
        sbox_table[20] = 8'hfa; sbox_table[21] = 8'h59; sbox_table[22] = 8'h47; sbox_table[23] = 8'hf0;
        sbox_table[24] = 8'had; sbox_table[25] = 8'hd4; sbox_table[26] = 8'ha2; sbox_table[27] = 8'haf;
        sbox_table[28] = 8'h9c; sbox_table[29] = 8'ha4; sbox_table[30] = 8'h72; sbox_table[31] = 8'hc0;
        sbox_table[32] = 8'hb7; sbox_table[33] = 8'hfd; sbox_table[34] = 8'h93; sbox_table[35] = 8'h26;
        sbox_table[36] = 8'h36; sbox_table[37] = 8'h3f; sbox_table[38] = 8'hf7; sbox_table[39] = 8'hcc;
        sbox_table[40] = 8'h34; sbox_table[41] = 8'ha5; sbox_table[42] = 8'he5; sbox_table[43] = 8'hf1;
        sbox_table[44] = 8'h71; sbox_table[45] = 8'hd8; sbox_table[46] = 8'h31; sbox_table[47] = 8'h15;
        sbox_table[48] = 8'h04; sbox_table[49] = 8'hc7; sbox_table[50] = 8'h23; sbox_table[51] = 8'hc3;
        sbox_table[52] = 8'h18; sbox_table[53] = 8'h96; sbox_table[54] = 8'h05; sbox_table[55] = 8'h9a;
        sbox_table[56] = 8'h07; sbox_table[57] = 8'h12; sbox_table[58] = 8'h80; sbox_table[59] = 8'he2;
        sbox_table[60] = 8'heb; sbox_table[61] = 8'h27; sbox_table[62] = 8'hb2; sbox_table[63] = 8'h75;
        sbox_table[64] = 8'h09; sbox_table[65] = 8'h83; sbox_table[66] = 8'h2c; sbox_table[67] = 8'h1a;
        sbox_table[68] = 8'h1b; sbox_table[69] = 8'h6e; sbox_table[70] = 8'h5a; sbox_table[71] = 8'ha0;
        sbox_table[72] = 8'h52; sbox_table[73] = 8'h3b; sbox_table[74] = 8'hd6; sbox_table[75] = 8'hb3;
        sbox_table[76] = 8'h29; sbox_table[77] = 8'he3; sbox_table[78] = 8'h2f; sbox_table[79] = 8'h84;
        sbox_table[80] = 8'h53; sbox_table[81] = 8'hd1; sbox_table[82] = 8'h00; sbox_table[83] = 8'hed;
        sbox_table[84] = 8'h20; sbox_table[85] = 8'hfc; sbox_table[86] = 8'hb1; sbox_table[87] = 8'h5b;
        sbox_table[88] = 8'h6a; sbox_table[89] = 8'hcb; sbox_table[90] = 8'hbe; sbox_table[91] = 8'h39;
        sbox_table[92] = 8'h4a; sbox_table[93] = 8'h4c; sbox_table[94] = 8'h58; sbox_table[95] = 8'hcf;
        sbox_table[96] = 8'hd0; sbox_table[97] = 8'hef; sbox_table[98] = 8'haa; sbox_table[99] = 8'hfb;
        sbox_table[100] = 8'h43; sbox_table[101] = 8'h4d; sbox_table[102] = 8'h33; sbox_table[103] = 8'h85;
        sbox_table[104] = 8'h45; sbox_table[105] = 8'hf9; sbox_table[106] = 8'h02; sbox_table[107] = 8'h7f;
        sbox_table[108] = 8'h50; sbox_table[109] = 8'h3c; sbox_table[110] = 8'h9f; sbox_table[111] = 8'ha8;
        sbox_table[112] = 8'h51; sbox_table[113] = 8'ha3; sbox_table[114] = 8'h40; sbox_table[115] = 8'h8f;
        sbox_table[116] = 8'h92; sbox_table[117] = 8'h9d; sbox_table[118] = 8'h38; sbox_table[119] = 8'hf5;
        sbox_table[120] = 8'hbc; sbox_table[121] = 8'hb6; sbox_table[122] = 8'hda; sbox_table[123] = 8'h21;
        sbox_table[124] = 8'h10; sbox_table[125] = 8'hff; sbox_table[126] = 8'hf3; sbox_table[127] = 8'hd2;
        sbox_table[128] = 8'hcd; sbox_table[129] = 8'h0c; sbox_table[130] = 8'h13; sbox_table[131] = 8'hec;
        sbox_table[132] = 8'h5f; sbox_table[133] = 8'h97; sbox_table[134] = 8'h44; sbox_table[135] = 8'h17;
        sbox_table[136] = 8'hc4; sbox_table[137] = 8'ha7; sbox_table[138] = 8'h7e; sbox_table[139] = 8'h3d;
        sbox_table[140] = 8'h64; sbox_table[141] = 8'h5d; sbox_table[142] = 8'h19; sbox_table[143] = 8'h73;
        sbox_table[144] = 8'h60; sbox_table[145] = 8'h81; sbox_table[146] = 8'h4f; sbox_table[147] = 8'hdc;
        sbox_table[148] = 8'h22; sbox_table[149] = 8'h2a; sbox_table[150] = 8'h90; sbox_table[151] = 8'h88;
        sbox_table[152] = 8'h46; sbox_table[153] = 8'hee; sbox_table[154] = 8'hb8; sbox_table[155] = 8'h14;
        sbox_table[156] = 8'hde; sbox_table[157] = 8'h5e; sbox_table[158] = 8'h0b; sbox_table[159] = 8'hdb;
        sbox_table[160] = 8'he0; sbox_table[161] = 8'h32; sbox_table[162] = 8'h3a; sbox_table[163] = 8'h0a;
        sbox_table[164] = 8'h49; sbox_table[165] = 8'h06; sbox_table[166] = 8'h24; sbox_table[167] = 8'h5c;
        sbox_table[168] = 8'hc2; sbox_table[169] = 8'hd3; sbox_table[170] = 8'hac; sbox_table[171] = 8'h62;
        sbox_table[172] = 8'h91; sbox_table[173] = 8'h95; sbox_table[174] = 8'he4; sbox_table[175] = 8'h79;
        sbox_table[176] = 8'he7; sbox_table[177] = 8'hc8; sbox_table[178] = 8'h37; sbox_table[179] = 8'h6d;
        sbox_table[180] = 8'h8d; sbox_table[181] = 8'hd5; sbox_table[182] = 8'h4e; sbox_table[183] = 8'ha9;
        sbox_table[184] = 8'h6c; sbox_table[185] = 8'h56; sbox_table[186] = 8'hf4; sbox_table[187] = 8'hea;
        sbox_table[188] = 8'h65; sbox_table[189] = 8'h7a; sbox_table[190] = 8'hae; sbox_table[191] = 8'h08;
        sbox_table[192] = 8'hba; sbox_table[193] = 8'h78; sbox_table[194] = 8'h25; sbox_table[195] = 8'h2e;
        sbox_table[196] = 8'h1c; sbox_table[197] = 8'ha6; sbox_table[198] = 8'hb4; sbox_table[199] = 8'hc6;
        sbox_table[200] = 8'he8; sbox_table[201] = 8'hdd; sbox_table[202] = 8'h74; sbox_table[203] = 8'h1f;
        sbox_table[204] = 8'h4b; sbox_table[205] = 8'hbd; sbox_table[206] = 8'h8b; sbox_table[207] = 8'h8a;
        sbox_table[208] = 8'h70; sbox_table[209] = 8'h3e; sbox_table[210] = 8'hb5; sbox_table[211] = 8'h66;
        sbox_table[212] = 8'h48; sbox_table[213] = 8'h03; sbox_table[214] = 8'hf6; sbox_table[215] = 8'h0e;
        sbox_table[216] = 8'h61; sbox_table[217] = 8'h35; sbox_table[218] = 8'h57; sbox_table[219] = 8'hb9;
        sbox_table[220] = 8'h86; sbox_table[221] = 8'hc1; sbox_table[222] = 8'h1d; sbox_table[223] = 8'h9e;
        sbox_table[224] = 8'he1; sbox_table[225] = 8'hf8; sbox_table[226] = 8'h98; sbox_table[227] = 8'h11;
        sbox_table[228] = 8'h69; sbox_table[229] = 8'hd9; sbox_table[230] = 8'h8e; sbox_table[231] = 8'h94;
        sbox_table[232] = 8'h9b; sbox_table[233] = 8'h1e; sbox_table[234] = 8'h87; sbox_table[235] = 8'he9;
        sbox_table[236] = 8'hce; sbox_table[237] = 8'h55; sbox_table[238] = 8'h28; sbox_table[239] = 8'hdf;
        sbox_table[240] = 8'h8c; sbox_table[241] = 8'ha1; sbox_table[242] = 8'h89; sbox_table[243] = 8'h0d;
        sbox_table[244] = 8'hbf; sbox_table[245] = 8'he6; sbox_table[246] = 8'h42; sbox_table[247] = 8'h68;
        sbox_table[248] = 8'h41; sbox_table[249] = 8'h99; sbox_table[250] = 8'h2d; sbox_table[251] = 8'h0f;
        sbox_table[252] = 8'hb0; sbox_table[253] = 8'h54; sbox_table[254] = 8'hbb; sbox_table[255] = 8'h16;
sbox = sbox_table[in];    
end
    endfunction


    genvar i;
    generate
        for (i = 0; i < 16; i = i + 1) begin : sb_loop
            assign sb_out[i*8 +: 8] = sbox(state[i*8 +: 8]);
        end
    endgenerate
endmodule

// ===================== shift_rows.v =====================
module shift_rows (
    input  [127:0] state,
    output [127:0] shifted_state
);
    assign shifted_state[127:120] = state[127:120];
    assign shifted_state[119:112] = state[87:80];
    assign shifted_state[111:104] = state[47:40];
    assign shifted_state[103:96]  = state[7:0];

    assign shifted_state[95:88]   = state[95:88];
    assign shifted_state[87:80]   = state[55:48];
    assign shifted_state[79:72]   = state[15:8];
    assign shifted_state[71:64]   = state[103:96];

    assign shifted_state[63:56]   = state[63:56];
    assign shifted_state[55:48]   = state[23:16];
    assign shifted_state[47:40]   = state[111:104];
    assign shifted_state[39:32]   = state[79:72];

    assign shifted_state[31:24]   = state[31:24];
    assign shifted_state[23:16]   = state[127:120];
    assign shifted_state[15:8]    = state[95:88];
    assign shifted_state[7:0]     = state[63:56];
endmodule

// ===================== mix_columns.v =====================
module mix_columns (
    input  [127:0] state,
    output [127:0] mixed_state
);
    assign mixed_state = state; // Placeholder - full MixColumns logic can be added
endmodule

// ===================== add_round_key.v =====================
module add_round_key (
    input  [127:0] state,
    input  [127:0] round_key,
    output [127:0] out_state
);
    assign out_state = state ^ round_key;
endmodule

// ===================== aes_one_round.v =====================
module aes_one_round (
    input  [127:0] state_in,
    input  [127:0] round_key,
    output [127:0] state_out
);
    wire [127:0] sb_out, sr_out, mc_out;

    sub_bytes     u1 (.state(state_in), .sb_out(sb_out));
    shift_rows    u2 (.state(sb_out), .shifted_state(sr_out));
    mix_columns   u3 (.state(sr_out), .mixed_state(mc_out));
    add_round_key u4 (.state(mc_out), .round_key(round_key), .out_state(state_out));
endmodule

// ===================== aes_tb.v =====================

