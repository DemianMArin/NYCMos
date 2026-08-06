v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Truth Table
EN | SEL2 | SEL1 | SEL0 | Mixer4 | Mixer3 | Mixer2 | Mixer1 | Div3 | Div2 | Div1 | Description
 0  |    x    |    x    |    x    |      0     |      0     |      0     |      0    |    0    |    0    |    0  | Chip Off
 1  |    0    |    0    |    0    |      0     |      0     |      1     |      1    |    0    |    0    |    1  | Single Stage Quadrature Mixer - Mixer 1,2 On, Divider 1 On
 1  |    0    |    0    |    1    |      1     |      1     |      1     |      1    |    1    |    0    |    1  | Two Stage Quadrature Mixer - Mixer 1,2,3,4 On, Divider 1,3 On
 1  |    0    |    1    |    0    |      1     |      1     |      1     |      1    |    0    |    1    |    1  | Sliding IF Quadrature Mixer - Mixer 1,2,3,4 On, Divider 1,2 On
 1  |    0    |    1    |    1    |      0     |      0     |      0     |      1    |    0    |    0    |    1  | Single Stage Non-Quadrature Mixer = Mixer 1 On, Divider 1 On
 1  |    1    |    0    |    0    |      0     |      1     |      0     |      1    |    1    |    0    |    1  | Two Stage Non-Quadrature Mixer = Mixer 1,3 On, Divider 1,3 On
 1  |    1    |    0    |    1    |      0     |      0     |      0     |      0    |    0    |    0    |    0  | Unused
 1  |    1    |    1    |    0    |      0     |      0     |      0     |      0    |    0    |    0    |    0  | Unused
 1  |    1    |    1    |    1    |      0     |      0     |      0     |      0    |    0    |    0    |    0  | Unused } -2020 -550 0 0 0.5 0.5 {}
T {For OP analysis:
Each mixer that is on draws 500 uA(mixer tail) + 4 mA(2x buffer quiescent current)
Divider draws ~ 1mA
Digital draws 0 static current} -2020 -120 0 0 0.5 0.5 {}
N 930 -1160 930 -1110 {lab=VDD_on_chip}
N 930 -870 930 -830 {lab=0}
N 710 -990 780 -990 {lab=V_EN}
N 710 -970 780 -970 {lab=V_sel_0}
N 710 -950 780 -950 {lab=V_sel_1}
N 710 -930 780 -930 {lab=V_sel_2}
N 710 -910 780 -910 {lab=i_ref_100u}
N 710 -1070 780 -1070 {lab=V_RF_p}
N 710 -1050 780 -1050 {lab=V_RF_m}
N 710 -1030 780 -1030 {lab=V_LO_1}
N 710 -1010 780 -1010 {lab=V_LO_2}
N 1170 -1070 1240 -1070 {lab=IF_I_p}
N 1170 -1050 1240 -1050 {lab=IF_I_m}
N 1170 -1030 1240 -1030 {lab=IF_Q_p}
N 1170 -1010 1240 -1010 {lab=IF_Q_m}
N 1170 -970 1240 -970 {lab=BB_I_p}
N 1170 -950 1240 -950 {lab=BB_I_m}
N 1170 -930 1240 -930 {lab=BB_Q_p}
N 1170 -910 1240 -910 {lab=BB_Q_m}
N 480 -1320 540 -1320 {lab=0}
N 930 -1200 930 -1160 {lab=VDD_on_chip}
N 840 -1320 860 -1320 {lab=VDD}
N 50 -1340 50 -1300 {lab=V_RF_p}
N 50 -1340 100 -1340 {lab=V_RF_p}
N 50 -1240 50 -1200 {lab=0}
N 50 -1150 50 -1110 {lab=V_RF_m}
N 50 -1150 100 -1150 {lab=V_RF_m}
N 50 -1050 50 -1010 {lab=0}
N 50 -890 50 -850 {lab=V_LO_1_off_chip}
N 50 -890 100 -890 {lab=V_LO_1_off_chip}
N 50 -790 50 -750 {lab=0}
N 350 -890 350 -850 {lab=V_LO_2_off_chip}
N 350 -890 400 -890 {lab=V_LO_2_off_chip}
N 350 -790 350 -750 {lab=0}
N 50 -520 50 -480 {lab=#net1}
N 50 -520 100 -520 {lab=#net1}
N 50 -420 50 -380 {lab=0}
N 260 -520 260 -480 {lab=#net2}
N 260 -520 310 -520 {lab=#net2}
N 260 -420 260 -380 {lab=0}
N 490 -520 490 -480 {lab=#net3}
N 490 -520 540 -520 {lab=#net3}
N 490 -420 490 -380 {lab=0}
N 750 -520 750 -480 {lab=#net4}
N 750 -520 800 -520 {lab=#net4}
N 750 -420 750 -380 {lab=0}
N 50 -250 50 -210 {lab=0}
N 50 -330 50 -310 {lab=i_ref_100u}
N 50 -330 80 -330 {lab=i_ref_100u}
N 200 -890 240 -890 {lab=V_LO_1}
N 500 -890 530 -890 {lab=V_LO_2}
N 450 -850 450 -810 {lab=0}
N 450 -970 450 -930 {lab=VDD}
N 150 -970 150 -930 {lab=VDD}
N 150 -850 150 -820 {lab=0}
N 750 -1320 840 -1320 {lab=VDD}
N 150 -590 150 -560 {lab=VDD}
N 150 -590 850 -590 {lab=VDD}
N 850 -590 850 -560 {lab=VDD}
N 590 -590 590 -560 {lab=VDD}
N 360 -590 360 -560 {lab=VDD}
N 150 -480 150 -450 {lab=0}
N 360 -480 360 -450 {lab=0}
N 590 -480 590 -450 {lab=0}
N 850 -480 850 -450 {lab=0}
N 200 -520 230 -520 {lab=V_EN}
N 410 -520 450 -520 {lab=V_sel_2}
N 640 -520 680 -520 {lab=V_sel_1}
N 900 -520 940 -520 {lab=V_sel_0}
N 2140 -1220 2190 -1220 {lab=IF_I_p}
N 2280 -1280 2280 -1250 {lab=0}
N 2140 -1100 2190 -1100 {lab=IF_I_m}
N 2280 -1070 2280 -1040 {lab=0}
N 2350 -1100 2400 -1100 {lab=IF_I_m_scope}
N 2350 -1220 2400 -1220 {lab=IF_I_p_scope}
N 2450 -1220 2500 -1220 {lab=IF_Q_p}
N 2590 -1280 2590 -1250 {lab=0}
N 2450 -1100 2500 -1100 {lab=IF_Q_m}
N 2590 -1070 2590 -1040 {lab=0}
N 2660 -1100 2710 -1100 {lab=IF_Q_m_scope}
N 2660 -1220 2710 -1220 {lab=IF_Q_p_scope}
N 2140 -930 2190 -930 {lab=BB_I_p}
N 2280 -990 2280 -960 {lab=0}
N 2140 -810 2190 -810 {lab=BB_I_m}
N 2280 -780 2280 -750 {lab=0}
N 2350 -810 2400 -810 {lab=BB_I_m_scope}
N 2350 -930 2400 -930 {lab=BB_I_p_scope}
N 2450 -930 2500 -930 {lab=BB_Q_p}
N 2590 -990 2590 -960 {lab=0}
N 2450 -810 2500 -810 {lab=BB_Q_m}
N 2590 -780 2590 -750 {lab=0}
N 2660 -810 2710 -810 {lab=BB_Q_m_scope}
N 2660 -930 2710 -930 {lab=BB_Q_p_scope}
N 2280 -990 2590 -990 {lab=0}
N 2280 -750 2590 -750 {lab=0}
N 2280 -1040 2590 -1040 {lab=0}
N 2280 -1280 2590 -1280 {lab=0}
N 600 -1320 640 -1320 {lab=VDD}
N 700 -1320 750 -1320 {lab=VDD}
N 920 -1320 930 -1320 {lab=#net5}
N 930 -1220 930 -1200 {lab=VDD_on_chip}
N 930 -1320 930 -1280 {lab=#net5}
N 640 -1320 700 -1320 {lab=VDD}
N 1080 -1070 1110 -1070 {lab=#net6}
N 1080 -1050 1110 -1050 {lab=#net7}
N 1080 -1030 1110 -1030 {lab=#net8}
N 1080 -1010 1110 -1010 {lab=#net9}
N 1080 -970 1110 -970 {lab=#net10}
N 1080 -950 1110 -950 {lab=#net11}
N 1080 -930 1110 -930 {lab=#net12}
N 1080 -910 1110 -910 {lab=#net13}
N 1240 -1050 1300 -1050 {lab=IF_I_m}
N 1240 -1070 1300 -1070 {lab=IF_I_p}
N 1300 -1170 1300 -1130 {lab=0}
N 1300 -990 1300 -940 {lab=0}
N 1400 -1170 1400 -1130 {lab=0}
N 1400 -990 1400 -940 {lab=0}
N 1330 -1050 1400 -1050 {lab=IF_Q_m}
N 1330 -1070 1400 -1070 {lab=IF_Q_p}
N 1240 -790 1300 -790 {lab=BB_I_m}
N 1240 -810 1300 -810 {lab=BB_I_p}
N 1300 -910 1300 -870 {lab=0}
N 1300 -730 1300 -680 {lab=0}
N 1400 -910 1400 -870 {lab=0}
N 1400 -730 1400 -680 {lab=0}
N 1330 -790 1400 -790 {lab=BB_Q_m}
N 1330 -810 1400 -810 {lab=BB_Q_p}
C {title.sym} 160 -30 0 0 {name=l1 author="Lei Chen"}
C {top_level/schematic/top.sym} 930 -990 0 0 {name=x1}
C {vsource.sym} 570 -1320 1 0 {name=VDD value="PAR_VDD" savecurrent=false}
C {vsource.sym} 50 -1270 0 0 {name=V_RF_p value="dc 1.3 ac 0.5 sin(1.3 1m 70MEG 0 0 0)" savecurrent=false}
C {res.sym} 890 -1320 1 0 {name=R_wire_sim
value=10
footprint=1206
device=resistor
m=1
}
C {gnd.sym} 480 -1320 0 0 {name=l2 lab=0}
C {lab_wire.sym} 930 -830 0 0 {name=p1 sig_type=std_logic lab=0}
C {lab_wire.sym} 50 -1200 0 0 {name=p2 sig_type=std_logic lab=0}
C {vsource.sym} 50 -1080 0 0 {name=V_RF_m value="dc 1.3 ac 0.5 sin(1.3 1m 70MEG 0 0 180)" savecurrent=false}
C {lab_wire.sym} 50 -1010 0 0 {name=p3 sig_type=std_logic lab=0}
C {vsource.sym} 50 -820 0 0 {name=V_LO_1 value="DC 0 pulse(0 3.3 0 500p 500p 5n 10n)" savecurrent=false}
C {lab_wire.sym} 50 -750 0 0 {name=p4 sig_type=std_logic lab=0}
C {vsource.sym} 350 -820 0 0 {name=V_LO_2 value="DC 0 pulse(0 3.3 0 500p 500p 25n 50n)" savecurrent=false}
C {lab_wire.sym} 350 -750 0 0 {name=p5 sig_type=std_logic lab=0}
C {vsource.sym} 50 -450 0 0 {name=V_EN value=3.3 savecurrent=false}
C {lab_wire.sym} 50 -380 0 0 {name=p6 sig_type=std_logic lab=0}
C {vsource.sym} 260 -450 0 0 {name=V_sel_2 value=0 savecurrent=false}
C {lab_wire.sym} 260 -380 0 0 {name=p7 sig_type=std_logic lab=0}
C {vsource.sym} 490 -450 0 0 {name=V_sel_1 value=0 savecurrent=false}
C {lab_wire.sym} 490 -380 0 0 {name=p8 sig_type=std_logic lab=0}
C {vsource.sym} 750 -450 0 0 {name=V_sel_0 value=3.3 savecurrent=false}
C {lab_wire.sym} 750 -380 0 0 {name=p9 sig_type=std_logic lab=0}
C {isource.sym} 50 -280 2 0 {name=i_ref_100u value=100u}
C {lab_wire.sym} 50 -210 0 0 {name=p10 sig_type=std_logic lab=0}
C {lab_wire.sym} 80 -1340 0 0 {name=p11 sig_type=std_logic lab=V_RF_p}
C {lab_wire.sym} 930 -1190 0 1 {name=p12 sig_type=std_logic lab=VDD_on_chip}
C {lab_wire.sym} 90 -1150 0 0 {name=p13 sig_type=std_logic lab=V_RF_m}
C {lab_wire.sym} 210 -890 0 1 {name=p14 sig_type=std_logic lab=V_LO_1}
C {lab_wire.sym} 510 -890 0 1 {name=p15 sig_type=std_logic lab=V_LO_2
}
C {lab_wire.sym} 210 -520 0 1 {name=p16 sig_type=std_logic lab=V_EN}
C {lab_wire.sym} 920 -520 0 1 {name=p19 sig_type=std_logic lab=V_sel_0}
C {lab_wire.sym} 650 -520 0 1 {name=p17 sig_type=std_logic lab=V_sel_1}
C {lab_wire.sym} 420 -520 0 1 {name=p18 sig_type=std_logic lab=V_sel_2}
C {lab_wire.sym} 70 -330 0 0 {name=p20 sig_type=std_logic lab=i_ref_100u}
C {lab_wire.sym} 1170 -1070 0 1 {name=p21 sig_type=std_logic lab=IF_I_p}
C {lab_wire.sym} 1170 -1050 0 1 {name=p22 sig_type=std_logic lab=IF_I_m}
C {lab_wire.sym} 1170 -1030 0 1 {name=p23 sig_type=std_logic lab=IF_Q_p}
C {lab_wire.sym} 1170 -1010 0 1 {name=p24 sig_type=std_logic lab=IF_Q_m}
C {lab_wire.sym} 1170 -970 0 1 {name=p25 sig_type=std_logic lab=BB_I_p}
C {lab_wire.sym} 1170 -930 0 1 {name=p26 sig_type=std_logic lab=BB_Q_p}
C {lab_wire.sym} 1170 -950 0 1 {name=p27 sig_type=std_logic lab=BB_I_m}
C {lab_wire.sym} 1170 -910 0 1 {name=p28 sig_type=std_logic lab=BB_Q_m}
C {simulation_parasitics/schematics/digital_input_buffer.sym} 150 -520 0 0 {name=x2}
C {simulation_parasitics/schematics/digital_input_buffer.sym} 360 -520 0 0 {name=x3}
C {simulation_parasitics/schematics/digital_input_buffer.sym} 590 -520 0 0 {name=x4}
C {simulation_parasitics/schematics/digital_input_buffer.sym} 850 -520 0 0 {name=x5}
C {simulation_parasitics/schematics/digital_input_buffer.sym} 450 -890 0 0 {name=x6}
C {simulation_parasitics/schematics/digital_input_buffer.sym} 150 -890 0 0 {name=x7}
C {lab_wire.sym} 800 -1320 0 1 {name=p29 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 150 -950 0 1 {name=p30 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 450 -940 0 1 {name=p31 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 150 -820 0 0 {name=p32 sig_type=std_logic lab=0}
C {lab_wire.sym} 450 -810 0 0 {name=p33 sig_type=std_logic lab=0}
C {lab_wire.sym} 490 -590 0 1 {name=p34 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 150 -450 0 0 {name=p35 sig_type=std_logic lab=0}
C {lab_wire.sym} 360 -450 0 0 {name=p36 sig_type=std_logic lab=0}
C {lab_wire.sym} 590 -450 0 0 {name=p37 sig_type=std_logic lab=0}
C {lab_wire.sym} 850 -450 0 0 {name=p38 sig_type=std_logic lab=0}
C {simulation_parasitics/schematics/10x_attenuation_probe.sym} 2290 -1220 2 0 {name=x8}
C {simulation_parasitics/schematics/10x_attenuation_probe.sym} 2290 -1100 0 1 {name=x9}
C {simulation_parasitics/schematics/10x_attenuation_probe.sym} 2600 -1220 2 0 {name=x10}
C {simulation_parasitics/schematics/10x_attenuation_probe.sym} 2600 -1100 0 1 {name=x11}
C {simulation_parasitics/schematics/10x_attenuation_probe.sym} 2290 -930 2 0 {name=x12}
C {simulation_parasitics/schematics/10x_attenuation_probe.sym} 2290 -810 0 1 {name=x13}
C {simulation_parasitics/schematics/10x_attenuation_probe.sym} 2600 -930 2 0 {name=x14}
C {simulation_parasitics/schematics/10x_attenuation_probe.sym} 2600 -810 0 1 {name=x15}
C {lab_wire.sym} 2140 -1220 0 1 {name=p39 sig_type=std_logic lab=IF_I_p}
C {lab_wire.sym} 2140 -1100 0 1 {name=p40 sig_type=std_logic lab=IF_I_m}
C {lab_wire.sym} 2450 -1220 0 1 {name=p41 sig_type=std_logic lab=IF_Q_p}
C {lab_wire.sym} 2450 -1100 0 1 {name=p42 sig_type=std_logic lab=IF_Q_m}
C {lab_wire.sym} 2140 -930 0 1 {name=p43 sig_type=std_logic lab=BB_I_p}
C {lab_wire.sym} 2140 -810 0 1 {name=p44 sig_type=std_logic lab=BB_I_m}
C {lab_wire.sym} 2450 -930 0 1 {name=p45 sig_type=std_logic lab=BB_Q_p}
C {lab_wire.sym} 2450 -810 0 1 {name=p46 sig_type=std_logic lab=BB_Q_m}
C {lab_wire.sym} 2430 -1280 0 0 {name=p47 sig_type=std_logic lab=0}
C {lab_wire.sym} 2430 -1040 0 0 {name=p48 sig_type=std_logic lab=0}
C {lab_wire.sym} 2430 -990 0 0 {name=p49 sig_type=std_logic lab=0}
C {lab_wire.sym} 2440 -750 0 0 {name=p50 sig_type=std_logic lab=0}
C {lab_wire.sym} 2360 -1220 0 1 {name=p51 sig_type=std_logic lab=IF_I_p_scope}
C {lab_wire.sym} 2360 -1100 0 1 {name=p52 sig_type=std_logic lab=IF_I_m_scope}
C {lab_wire.sym} 2670 -1100 0 1 {name=p53 sig_type=std_logic lab=IF_Q_m_scope}
C {lab_wire.sym} 2670 -1220 0 1 {name=p54 sig_type=std_logic lab=IF_Q_p_scope}
C {lab_wire.sym} 2360 -930 0 1 {name=p55 sig_type=std_logic lab=BB_I_p_scope}
C {lab_wire.sym} 2360 -810 0 1 {name=p56 sig_type=std_logic lab=BB_I_m_scope}
C {lab_wire.sym} 2670 -930 0 1 {name=p57 sig_type=std_logic lab=BB_Q_p_scope}
C {lab_wire.sym} 2670 -810 0 1 {name=p58 sig_type=std_logic lab=BB_Q_m_scope}
C {code_shown.sym} 0 60 0 0 {name=MODELS5 only_toplevel=true  
format="tcleval( @value )" 
value="
; PVT - typical - 27C
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/smbb000149.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
"
}
C {code_shown.sym} 0 310 0 0 {name=NGSPICE only_toplevel=false value="
** PARAMS 

.PARAM PAR_VDD=3.3

.control
destroy all
save all

write tb_top.raw

op

echo 'Chip Current'
print i(v_i_vdd_on_chip)

echo 'VDD_on_chip'
print vdd_on_chip

echo 'Internal ENABLE Status'
print x1.EN_mix_div_1
print x1.EN_mix_2
print x1.EN_mix_3
print x1.EN_mix_4
print x1.EN_div_2
print x1.EN_div_3


echo 'Internal Tail Currents'
print i(v.x1.v_i_mix_1)
print i(v.x1.v_i_mix_2)
print i(v.x1.v_i_mix_3)
print i(v.x1.v_i_mix_4)
print i(v.x1.v_i_div_1)
print i(v.x1.v_i_div_2)
print i(v.x1.v_i_div_3)
print i(v.x1.v_i_tail_total)
print i(v.x1.v_i_buf_mix_1_p)
print i(v.x1.v_i_buf_mix_1_m)
print i(v.x1.v_i_buf_mix_2_p)
print i(v.x1.v_i_buf_mix_2_m)
print i(v.x1.v_i_buf_mix_3_p)
print i(v.x1.v_i_buf_mix_3_m)
print i(v.x1.v_i_buf_mix_4_p)
print i(v.x1.v_i_buf_mix_4_m)
print i(v.x1.v_i_and_gates)

echo 'OUTPUT DC Current'
print i(v_i_IF_I_p)
print i(v_i_IF_I_m)
print i(v_i_IF_Q_p)
print i(v_i_IF_Q_m)
print i(v_i_BB_I_p)
print i(v_i_BB_I_m)
print i(v_i_BB_Q_p)
print i(v_i_BB_Q_m)

echo 'MIXER DC VOLTAGE'
print x1.mix_1_if_p
print x1.mix_1_if_m
print x1.mix_2_if_p
print x1.mix_2_if_m
print x1.mix_3_if_p
print x1.mix_3_if_m
print x1.mix_4_if_p
print x1.mix_4_if_m

echo 'BUFFER DC VOLTAGE'
print if_i_p
print if_i_m
print if_q_p
print if_q_m
print bb_i_p
print bb_i_m
print bb_q_p
print bb_q_m

.endc
"
spice_ignore=true}
C {lab_wire.sym} 770 -1070 0 0 {name=p59 sig_type=std_logic lab=V_RF_p}
C {lab_wire.sym} 770 -1050 0 0 {name=p60 sig_type=std_logic lab=V_RF_m}
C {lab_wire.sym} 770 -1030 0 0 {name=p61 sig_type=std_logic lab=V_LO_1}
C {lab_wire.sym} 770 -1010 0 0 {name=p62 sig_type=std_logic lab=V_LO_2
}
C {lab_wire.sym} 770 -990 0 0 {name=p63 sig_type=std_logic lab=V_EN}
C {lab_wire.sym} 770 -930 0 0 {name=p64 sig_type=std_logic lab=V_sel_2}
C {lab_wire.sym} 770 -950 0 0 {name=p65 sig_type=std_logic lab=V_sel_1}
C {lab_wire.sym} 770 -970 0 0 {name=p66 sig_type=std_logic lab=V_sel_0}
C {lab_wire.sym} 770 -910 0 0 {name=p67 sig_type=std_logic lab=i_ref_100u}
C {ammeter.sym} 930 -1250 0 0 {name=v_i_vdd_on_chip savecurrent=true spice_ignore=0}
C {ammeter.sym} 1140 -1070 3 0 {name=v_i_IF_I_p savecurrent=true spice_ignore=0}
C {ammeter.sym} 1140 -1050 3 0 {name=v_i_IF_I_m savecurrent=true spice_ignore=0}
C {ammeter.sym} 1140 -1030 3 0 {name=v_i_IF_Q_p savecurrent=true spice_ignore=0}
C {ammeter.sym} 1140 -1010 3 0 {name=v_i_IF_Q_m savecurrent=true spice_ignore=0}
C {ammeter.sym} 1140 -970 3 0 {name=v_i_BB_I_p savecurrent=true spice_ignore=0}
C {ammeter.sym} 1140 -950 3 0 {name=v_i_BB_I_m savecurrent=true spice_ignore=0}
C {ammeter.sym} 1140 -930 3 0 {name=v_i_BB_Q_p savecurrent=true spice_ignore=0}
C {ammeter.sym} 1140 -910 3 0 {name=v_i_BB_Q_m savecurrent=true spice_ignore=0}
C {res.sym} 1300 -1100 0 0 {name=R1
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 1300 -1020 2 0 {name=R2
value=50
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 1300 -1160 0 0 {name=p68 sig_type=std_logic lab=0}
C {lab_wire.sym} 1300 -980 0 0 {name=p69 sig_type=std_logic lab=0}
C {code_shown.sym} 540 330 0 0 {name="Transient Analysis - Single Stage Quadrature Mixer" only_toplevel=false value="
** PARAMS 

.PARAM PAR_VDD=3.3

.control
destroy all
save all

write tb_top.raw

; 70 MHz RF, 100 MHz LO REF 1, LO REF 2 OFF
tran .1n 2u 

let vrf = V_rf_p - V_rf_m
let vif_i = if_i_p - if_i_m
let vif_q = if_q_p - if_q_m
let vbb_i = bb_i_p - bb_i_m
let vbb_q = bb_q_p - bb_q_m

plot vrf   ;input signal
plot vif_i ;output in phase
plot vif_q ;output q phase
plot v_lo_1 v_lo_1_off_chip x1.div_1_lo_i_p x1.div_1_lo_i_m ;clock divider

meas tran i_vdd avg i(v_i_vdd_on_chip) from=.3u to=2u ;average vdd current from .3us to 2us
meas tran i_mix_1 avg i(v.x1.v_i_mix_1) from=.3u to=2u ;average vdd current from .3us to 2us
meas tran i_mix_2 avg i(v.x1.v_i_mix_2) from=.3u to=2u ;average vdd current from .3us to 2us
meas tran i_buf_mix_1_p avg i(v.x1.v_i_buf_mix_1_p) from=.3u to=2u ;average vdd current from .3us to 2us
meas tran i_buf_mix_1_m avg i(v.x1.v_i_buf_mix_1_m) from=.3u to=2u ;average vdd current from .3us to 2us
meas tran i_buf_mix_2_p avg i(v.x1.v_i_buf_mix_2_p) from=.3u to=2u ;average vdd current from .3us to 2us
meas tran i_buf_mix_2_m avg i(v.x1.v_i_buf_mix_2_m) from=.3u to=2u ;average vdd current from .3us to 2us

plot i(v_i_vdd_on_chip) i(v.x1.v_i_mix_1) i(v.x1.v_i_mix_2) i(v.x1.v_i_buf_mix_1_p) i(v.x1.v_i_buf_mix_1_m) i(v.x1.v_i_buf_mix_2_p) i(v.x1.v_i_buf_mix_2_m); current in active blocks

print i_vdd
print i_mix_1
print i_mix_2
print i_buf_mix_1_p
print i_buf_mix_1_m
print i_buf_mix_2_p
print i_buf_mix_2_m

let i_blocks = i_mix_1+i_mix_2+i_buf_mix_1_p+i_buf_mix_1_m+i_buf_mix_2_p+i_buf_mix_2_m
print i_vdd-i_blocks

linearize vrf vif_i vif_q v_lo_1 v_lo_1_off_chip x1.div_1_lo_i_p x1.div_1_lo_i_m
fft vrf vif_i vif_q v_lo_1 v_lo_1_off_chip x1.div_1_lo_i_p x1.div_1_lo_i_m

plot db(vrf) xlimit 1 200Meg; input signal
plot db(vif_i) xlimit 1 200MEG;
plot db(vif_q) xlimit 1 200MEG;
plot db(v_lo_1_off_chip) db(x1.div_1_lo_i_p) xlimit 1 200MEG;

.endc
"
spice_ignore=true}
C {res.sym} 1400 -1100 0 0 {name=R3
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 1400 -1020 2 0 {name=R4
value=50
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 1400 -1160 0 0 {name=p70 sig_type=std_logic lab=0}
C {lab_wire.sym} 1400 -950 0 0 {name=p71 sig_type=std_logic lab=0}
C {lab_wire.sym} 1340 -1070 0 1 {name=p72 sig_type=std_logic lab=IF_Q_p}
C {lab_wire.sym} 1340 -1050 0 1 {name=p73 sig_type=std_logic lab=IF_Q_m}
C {lab_wire.sym} 50 -890 0 1 {name=p74 sig_type=std_logic lab=V_LO_1_off_chip}
C {lab_wire.sym} 390 -890 0 0 {name=p75 sig_type=std_logic lab=V_LO_2_off_chip}
C {code_shown.sym} 2500 390 0 0 {name="Transient Analysis - Two Stage Quadrature Mixer" only_toplevel=false value="
** PARAMS 

.PARAM PAR_VDD=3.3

.control
destroy all
save all

write tb_top.raw

; 70Mhz input, 100 MHz LO REF 1, 20 MHz LO REF 2

tran .1n 2u 

let vrf = V_rf_p - V_rf_m
let vif_i = if_i_p - if_i_m
let vif_q = if_q_p - if_q_m
let vbb_i = bb_i_p - bb_i_m
let vbb_q = bb_q_p - bb_q_m
let v_lo_1_i = x1.div_1_lo_i_p-x1.div_1_lo_i_m
let v_lo_1_q = x1.div_1_lo_q_p-x1.div_1_lo_q_m
let v_lo_3_i = x1.div_3_lo_i_p-x1.div_3_lo_i_m
let v_lo_3_q = x1.div_3_lo_q_p-x1.div_3_lo_q_m

plot vrf   ;input signal
plot vif_i vif_q xlimit 0 200n;output output
plot vbb_i vbb_q xlimit 0 200n;baseband output
plot v_lo_1 v_lo_1_off_chip x1.div_1_lo_i_p-x1.div_1_lo_i_m xlimit 0 200n;clock divider 1
plot v_lo_2 v_lo_2_off_chip x1.div_3_lo_i_p-x1.div_3_lo_i_m xlimit 0 200n;clock divider 2
plot x1.mix_3_4_lo_i_p x1.div_3_lo_i_p x1.mix_3_4_lo_q_p x1.div_3_lo_q_p ; actual clock input signal

meas tran i_vdd avg i(v_i_vdd_on_chip) from=.3u to=2u ;average vdd current from .3us to 2us
meas tran i_mix_1 avg i(v.x1.v_i_mix_1) from=.3u to=2u ;average mixer 1 current from .3us to 2us
meas tran i_mix_2 avg i(v.x1.v_i_mix_2) from=.3u to=2u ;average mixer 2 current from .3us to 2us
meas tran i_mix_3 avg i(v.x1.v_i_mix_3) from=.3u to=2u ;average mixer 3 current from .3us to 2us
meas tran i_mix_4 avg i(v.x1.v_i_mix_4) from=.3u to=2u ;average mixer 4 current from .3us to 2us
meas tran i_buf_mix_1_p avg i(v.x1.v_i_buf_mix_1_p) from=.3u to=2u ;average buffer current from .3us to 2us
meas tran i_buf_mix_1_m avg i(v.x1.v_i_buf_mix_1_m) from=.3u to=2u ;average buffer current from .3us to 2us
meas tran i_buf_mix_2_p avg i(v.x1.v_i_buf_mix_2_p) from=.3u to=2u ;average buffer current from .3us to 2us
meas tran i_buf_mix_2_m avg i(v.x1.v_i_buf_mix_2_m) from=.3u to=2u ;average buffer current from .3us to 2us
meas tran i_buf_mix_3_p avg i(v.x1.v_i_buf_mix_3_p) from=.3u to=2u ;average buffer current from .3us to 2us
meas tran i_buf_mix_3_m avg i(v.x1.v_i_buf_mix_3_m) from=.3u to=2u ;average buffer current from .3us to 2us
meas tran i_buf_mix_4_p avg i(v.x1.v_i_buf_mix_4_p) from=.3u to=2u ;average buffer current from .3us to 2us
meas tran i_buf_mix_4_m avg i(v.x1.v_i_buf_mix_4_m) from=.3u to=2u ;average buffer current from .3us to 2us

plot avg(i(v_i_vdd_on_chip)) i(v.x1.v_i_mix_1) i(v.x1.v_i_mix_2) i(v.x1.v_i_mix_3) i(v.x1.v_i_mix_4) i(v.x1.v_i_buf_mix_1_p) i(v.x1.v_i_buf_mix_1_m) i(v.x1.v_i_buf_mix_2_p) i(v.x1.v_i_buf_mix_2_m) i(v.x1.v_i_buf_mix_3_p) i(v.x1.v_i_buf_mix_3_m) i(v.x1.v_i_buf_mix_4_p) i(v.x1.v_i_buf_mix_4_m); current in active blocks

print i_vdd
print i_mix_1
print i_mix_2
print i_mix_3
print i_mix_4
print i_buf_mix_1_p
print i_buf_mix_1_m
print i_buf_mix_2_p
print i_buf_mix_2_m
print i_buf_mix_3_p
print i_buf_mix_3_m
print i_buf_mix_4_p
print i_buf_mix_4_m

let i_blocks = i_mix_1+i_mix_2+i_mix_3+i_mix_4+i_buf_mix_1_p+i_buf_mix_1_m+i_buf_mix_2_p+i_buf_mix_2_m+i_buf_mix_3_p+i_buf_mix_3_m+i_buf_mix_4_p+i_buf_mix_4_m
print i_vdd-i_blocks

linearize vrf vif_i vif_q vbb_i vbb_q v_lo_1 v_lo_1_off_chip x1.div_1_lo_i_p x1.div_1_lo_i_m v_lo_2 v_lo_2_off_chip x1.div_3_lo_i_p x1.div_3_lo_i_m v_lo_1_i v_lo_1_q
fft vrf vif_i vif_q vbb_i vbb_q v_lo_1 v_lo_1_off_chip x1.div_1_lo_i_p x1.div_1_lo_i_m v_lo_2 v_lo_2_off_chip x1.div_3_lo_i_p x1.div_3_lo_i_m v_lo_1_i v_lo_1_q

;plot db(vrf) xlimit 1 200Meg; input signal
plot db(vrf) db(vif_i) db(vif_q) xlimit 1 200MEG; IF output
plot db(vrf) db(vbb_i) db(vbb_q) xlimit 1 200MEG; BB output
plot db(v_lo_1_off_chip) db(x1.div_1_lo_i_p) xlimit 1 200MEG;
plot db(v_lo_2_off_chip) db(x1.div_3_lo_i_p) xlimit 1 200MEG;
plot db(v_lo_1_i) db(v_lo_1_q); difference between I/Q LO 1 signal

.endc
"
}
C {res.sym} 1300 -840 0 0 {name=R5
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 1300 -760 2 0 {name=R6
value=50
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 1300 -900 0 0 {name=p76 sig_type=std_logic lab=0}
C {lab_wire.sym} 1300 -690 0 0 {name=p77 sig_type=std_logic lab=0}
C {res.sym} 1400 -840 0 0 {name=R7
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 1400 -760 2 0 {name=R8
value=50
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 1400 -900 0 0 {name=p78 sig_type=std_logic lab=0}
C {lab_wire.sym} 1400 -690 0 0 {name=p79 sig_type=std_logic lab=0}
C {lab_wire.sym} 1330 -810 0 1 {name=p80 sig_type=std_logic lab=BB_Q_p}
C {lab_wire.sym} 1330 -790 0 1 {name=p81 sig_type=std_logic lab=BB_Q_m}
C {lab_wire.sym} 1240 -810 0 1 {name=p82 sig_type=std_logic lab=BB_I_p}
C {lab_wire.sym} 1240 -790 0 1 {name=p83 sig_type=std_logic lab=BB_I_m}
