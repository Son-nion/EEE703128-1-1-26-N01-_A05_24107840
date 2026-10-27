module A05_array_mult4x4 (a,
    b,
    p);
 input [3:0] a;
 input [3:0] b;
 output [7:0] p;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire net1;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;

 sky130_fd_sc_hd__decap_6 FILLER_0_0_10 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_16 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_0_21 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_27 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_0_29 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_0_38 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_44 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_0_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_55 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_57 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_10_21 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_27 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_10_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_37 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_49 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_61 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_10_73 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_9 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_11_10 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_11_26 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_11_34 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_11_49 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_11_67 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_11_75 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_13 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_12_25 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_12_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_12_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_55 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_12_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_12_65 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_25 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_1_48 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_55 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_1_57 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_1_75 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_2_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_2_41 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_2_47 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_55 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_2_67 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_3_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_19 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_26 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_3_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_38 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_3_50 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_61 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_7 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_3_73 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_4_18 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_4_23 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_27 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_4_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_4_38 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_4_53 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_7 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_4_75 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_5_13 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_5_21 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_5_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_33 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_5_45 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_5_53 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_5_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_5_74 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_6_21 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_41 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_53 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_61 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_6_73 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_9 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_10 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_7_22 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_7_28 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_7_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_7_52 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_7_69 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_8_25 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_8_29 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_8_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_38 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_8_50 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_8_63 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_8_7 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_8_73 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_9_11 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_27 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_9_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_9_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_9_55 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_9_68 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_9_76 ();
 sky130_fd_sc_hd__decap_3 PHY_0 ();
 sky130_fd_sc_hd__decap_3 PHY_1 ();
 sky130_fd_sc_hd__decap_3 PHY_10 ();
 sky130_fd_sc_hd__decap_3 PHY_11 ();
 sky130_fd_sc_hd__decap_3 PHY_12 ();
 sky130_fd_sc_hd__decap_3 PHY_13 ();
 sky130_fd_sc_hd__decap_3 PHY_14 ();
 sky130_fd_sc_hd__decap_3 PHY_15 ();
 sky130_fd_sc_hd__decap_3 PHY_16 ();
 sky130_fd_sc_hd__decap_3 PHY_17 ();
 sky130_fd_sc_hd__decap_3 PHY_18 ();
 sky130_fd_sc_hd__decap_3 PHY_19 ();
 sky130_fd_sc_hd__decap_3 PHY_2 ();
 sky130_fd_sc_hd__decap_3 PHY_20 ();
 sky130_fd_sc_hd__decap_3 PHY_21 ();
 sky130_fd_sc_hd__decap_3 PHY_22 ();
 sky130_fd_sc_hd__decap_3 PHY_23 ();
 sky130_fd_sc_hd__decap_3 PHY_24 ();
 sky130_fd_sc_hd__decap_3 PHY_25 ();
 sky130_fd_sc_hd__decap_3 PHY_3 ();
 sky130_fd_sc_hd__decap_3 PHY_4 ();
 sky130_fd_sc_hd__decap_3 PHY_5 ();
 sky130_fd_sc_hd__decap_3 PHY_6 ();
 sky130_fd_sc_hd__decap_3 PHY_7 ();
 sky130_fd_sc_hd__decap_3 PHY_8 ();
 sky130_fd_sc_hd__decap_3 PHY_9 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_26 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_27 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_28 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_29 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_30 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_31 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_32 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_33 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_34 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_35 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_36 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_37 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_38 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_39 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_40 ();
 sky130_fd_sc_hd__and2_1 _052_ (.A(net5),
    .B(net1),
    .X(_000_));
 sky130_fd_sc_hd__clkbuf_1 _053_ (.A(_000_),
    .X(net9));
 sky130_fd_sc_hd__and4_1 _054_ (.A(net5),
    .B(net1),
    .C(net2),
    .D(net6),
    .X(_001_));
 sky130_fd_sc_hd__a22oi_1 _055_ (.A1(net5),
    .A2(net2),
    .B1(net6),
    .B2(net1),
    .Y(_002_));
 sky130_fd_sc_hd__nor2_1 _056_ (.A(_001_),
    .B(_002_),
    .Y(net10));
 sky130_fd_sc_hd__buf_2 _057_ (.A(net3),
    .X(_003_));
 sky130_fd_sc_hd__and3_1 _058_ (.A(net5),
    .B(net2),
    .C(net6),
    .X(_004_));
 sky130_fd_sc_hd__and3_1 _059_ (.A(_003_),
    .B(_001_),
    .C(_004_),
    .X(_005_));
 sky130_fd_sc_hd__a22oi_1 _060_ (.A1(net2),
    .A2(net6),
    .B1(_003_),
    .B2(net5),
    .Y(_006_));
 sky130_fd_sc_hd__o2111a_1 _061_ (.A1(net1),
    .A2(_003_),
    .B1(net2),
    .C1(net5),
    .D1(net6),
    .X(_007_));
 sky130_fd_sc_hd__nor2_1 _062_ (.A(_006_),
    .B(_007_),
    .Y(_008_));
 sky130_fd_sc_hd__o211ai_2 _063_ (.A1(_005_),
    .A2(_008_),
    .B1(net1),
    .C1(net7),
    .Y(_009_));
 sky130_fd_sc_hd__a211o_1 _064_ (.A1(net1),
    .A2(net7),
    .B1(_005_),
    .C1(_008_),
    .X(_010_));
 sky130_fd_sc_hd__and2_1 _065_ (.A(_009_),
    .B(_010_),
    .X(_011_));
 sky130_fd_sc_hd__clkbuf_1 _066_ (.A(_011_),
    .X(net11));
 sky130_fd_sc_hd__a22o_1 _067_ (.A1(net6),
    .A2(_003_),
    .B1(net4),
    .B2(net5),
    .X(_012_));
 sky130_fd_sc_hd__nand4_1 _068_ (.A(net5),
    .B(net6),
    .C(_003_),
    .D(net4),
    .Y(_013_));
 sky130_fd_sc_hd__nand3_1 _069_ (.A(_007_),
    .B(_012_),
    .C(_013_),
    .Y(_014_));
 sky130_fd_sc_hd__a21o_1 _070_ (.A1(_012_),
    .A2(_013_),
    .B1(_007_),
    .X(_015_));
 sky130_fd_sc_hd__and2_1 _071_ (.A(net2),
    .B(net7),
    .X(_016_));
 sky130_fd_sc_hd__and3_1 _072_ (.A(_014_),
    .B(_015_),
    .C(_016_),
    .X(_017_));
 sky130_fd_sc_hd__a21oi_1 _073_ (.A1(_014_),
    .A2(_015_),
    .B1(_016_),
    .Y(_018_));
 sky130_fd_sc_hd__nor2_1 _074_ (.A(_017_),
    .B(_018_),
    .Y(_019_));
 sky130_fd_sc_hd__xnor2_1 _075_ (.A(_009_),
    .B(_019_),
    .Y(_020_));
 sky130_fd_sc_hd__and3_1 _076_ (.A(net1),
    .B(net8),
    .C(_020_),
    .X(_021_));
 sky130_fd_sc_hd__a21oi_1 _077_ (.A1(net1),
    .A2(net8),
    .B1(_020_),
    .Y(_022_));
 sky130_fd_sc_hd__nor2_1 _078_ (.A(_021_),
    .B(_022_),
    .Y(net12));
 sky130_fd_sc_hd__nand4_1 _079_ (.A(net5),
    .B(net2),
    .C(net6),
    .D(_003_),
    .Y(_023_));
 sky130_fd_sc_hd__nand2_1 _080_ (.A(net6),
    .B(net4),
    .Y(_024_));
 sky130_fd_sc_hd__and4_1 _081_ (.A(net5),
    .B(net6),
    .C(net3),
    .D(net4),
    .X(_025_));
 sky130_fd_sc_hd__a221oi_2 _082_ (.A1(net4),
    .A2(_001_),
    .B1(_023_),
    .B2(_024_),
    .C1(_025_),
    .Y(_026_));
 sky130_fd_sc_hd__and3_1 _083_ (.A(_003_),
    .B(net7),
    .C(_026_),
    .X(_027_));
 sky130_fd_sc_hd__a21o_1 _084_ (.A1(_003_),
    .A2(net7),
    .B1(_026_),
    .X(_028_));
 sky130_fd_sc_hd__or2b_1 _085_ (.A(_027_),
    .B_N(_028_),
    .X(_029_));
 sky130_fd_sc_hd__nand3_1 _086_ (.A(_014_),
    .B(_015_),
    .C(_016_),
    .Y(_030_));
 sky130_fd_sc_hd__a21oi_1 _087_ (.A1(_009_),
    .A2(_030_),
    .B1(_018_),
    .Y(_031_));
 sky130_fd_sc_hd__xnor2_1 _088_ (.A(_029_),
    .B(_031_),
    .Y(_032_));
 sky130_fd_sc_hd__and3_1 _089_ (.A(net2),
    .B(net8),
    .C(_032_),
    .X(_033_));
 sky130_fd_sc_hd__a21o_1 _090_ (.A1(net2),
    .A2(net8),
    .B1(_032_),
    .X(_034_));
 sky130_fd_sc_hd__or2b_1 _091_ (.A(_033_),
    .B_N(_034_),
    .X(_035_));
 sky130_fd_sc_hd__xnor2_1 _092_ (.A(_021_),
    .B(_035_),
    .Y(net13));
 sky130_fd_sc_hd__a21oi_1 _093_ (.A1(net4),
    .A2(_001_),
    .B1(_025_),
    .Y(_036_));
 sky130_fd_sc_hd__nand2_1 _094_ (.A(net7),
    .B(net4),
    .Y(_037_));
 sky130_fd_sc_hd__inv_2 _095_ (.A(net7),
    .Y(_038_));
 sky130_fd_sc_hd__nor2_1 _096_ (.A(_038_),
    .B(_036_),
    .Y(_039_));
 sky130_fd_sc_hd__a21o_1 _097_ (.A1(_036_),
    .A2(_037_),
    .B1(_039_),
    .X(_040_));
 sky130_fd_sc_hd__o21a_1 _098_ (.A1(_027_),
    .A2(_031_),
    .B1(_028_),
    .X(_041_));
 sky130_fd_sc_hd__xnor2_1 _099_ (.A(_040_),
    .B(_041_),
    .Y(_042_));
 sky130_fd_sc_hd__nand3_1 _100_ (.A(_003_),
    .B(net8),
    .C(_042_),
    .Y(_043_));
 sky130_fd_sc_hd__a21o_1 _101_ (.A1(_003_),
    .A2(net8),
    .B1(_042_),
    .X(_044_));
 sky130_fd_sc_hd__nand2_1 _102_ (.A(_043_),
    .B(_044_),
    .Y(_045_));
 sky130_fd_sc_hd__o21ai_1 _103_ (.A1(_021_),
    .A2(_033_),
    .B1(_034_),
    .Y(_046_));
 sky130_fd_sc_hd__xor2_1 _104_ (.A(_045_),
    .B(_046_),
    .X(net14));
 sky130_fd_sc_hd__a21bo_1 _105_ (.A1(_043_),
    .A2(_046_),
    .B1_N(_044_),
    .X(_047_));
 sky130_fd_sc_hd__nand2_1 _106_ (.A(net4),
    .B(net8),
    .Y(_048_));
 sky130_fd_sc_hd__a31o_1 _107_ (.A1(net7),
    .A2(net4),
    .A3(_041_),
    .B1(_039_),
    .X(_049_));
 sky130_fd_sc_hd__mux2_1 _108_ (.A0(_048_),
    .A1(net8),
    .S(_049_),
    .X(_050_));
 sky130_fd_sc_hd__xor2_1 _109_ (.A(_047_),
    .B(_050_),
    .X(net15));
 sky130_fd_sc_hd__inv_2 _110_ (.A(_049_),
    .Y(_051_));
 sky130_fd_sc_hd__a21oi_1 _111_ (.A1(_047_),
    .A2(_051_),
    .B1(_048_),
    .Y(net16));
 sky130_fd_sc_hd__buf_2 input1 (.A(a[0]),
    .X(net1));
 sky130_fd_sc_hd__buf_2 input2 (.A(a[1]),
    .X(net2));
 sky130_fd_sc_hd__buf_1 input3 (.A(a[2]),
    .X(net3));
 sky130_fd_sc_hd__buf_2 input4 (.A(a[3]),
    .X(net4));
 sky130_fd_sc_hd__buf_2 input5 (.A(b[0]),
    .X(net5));
 sky130_fd_sc_hd__buf_2 input6 (.A(b[1]),
    .X(net6));
 sky130_fd_sc_hd__buf_2 input7 (.A(b[2]),
    .X(net7));
 sky130_fd_sc_hd__clkbuf_2 input8 (.A(b[3]),
    .X(net8));
 sky130_fd_sc_hd__clkbuf_4 output10 (.A(net10),
    .X(p[1]));
 sky130_fd_sc_hd__clkbuf_4 output11 (.A(net11),
    .X(p[2]));
 sky130_fd_sc_hd__clkbuf_4 output12 (.A(net12),
    .X(p[3]));
 sky130_fd_sc_hd__clkbuf_4 output13 (.A(net13),
    .X(p[4]));
 sky130_fd_sc_hd__clkbuf_4 output14 (.A(net14),
    .X(p[5]));
 sky130_fd_sc_hd__clkbuf_4 output15 (.A(net15),
    .X(p[6]));
 sky130_fd_sc_hd__buf_2 output16 (.A(net16),
    .X(p[7]));
 sky130_fd_sc_hd__clkbuf_4 output9 (.A(net9),
    .X(p[0]));
endmodule
