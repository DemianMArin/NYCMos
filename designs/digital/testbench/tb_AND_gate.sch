v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 350 -590 350 -380 {lab=VDD}
N 350 -590 690 -590 {lab=VDD}
N 690 -590 690 -560 {lab=VDD}
N 690 -430 690 -270 {lab=0}
N 350 -270 690 -270 {lab=0}
N 350 -320 350 -270 {lab=0}
N 800 -490 830 -490 {lab=Vout}
N 830 -430 830 -270 {lab=0}
N 690 -270 830 -270 {lab=0}
N 520 -510 620 -510 {lab=Va}
N 580 -470 620 -470 {lab=Vb}
N 450 -510 520 -510 {lab=Va}
N 440 -510 450 -510 {lab=Va}
N 530 -470 580 -470 {lab=Vb}
N 440 -450 440 -370 {lab=0}
N 530 -400 530 -370 {lab=0}
N 530 -410 530 -400 {lab=0}
N 530 -370 530 -270 {lab=0}
N 440 -370 440 -280 {lab=0}
N 440 -280 440 -270 {lab=0}
C {title.sym} 160 -30 0 0 {name=l1 author="Lei Chen"}
C {vsource.sym} 350 -350 0 0 {name=VDD value=3.3 savecurrent=false}
C {digital/schematic/AND_gate.sym} 720 -500 0 0 {name=x1}
C {capa.sym} 830 -460 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 440 -480 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 530 -440 0 0 {name=V2 value="DC 0 AC 0 pulse(0 3.3 0 0.1n 0.1n 3n 6n)" savecurrent=false}
C {lab_wire.sym} 490 -590 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 600 -270 0 0 {name=p2 sig_type=std_logic lab=0}
C {lab_wire.sym} 560 -510 0 0 {name=p3 sig_type=std_logic lab=Va}
C {lab_wire.sym} 580 -470 0 0 {name=p4 sig_type=std_logic lab=Vb}
C {lab_wire.sym} 820 -490 0 1 {name=p5 sig_type=std_logic lab=Vout}
C {code_shown.sym} 0 120 0 0 {name=MODELS5 only_toplevel=true  
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
C {code_shown.sym} 0 370 0 0 {name=NGSPICE only_toplevel=false value="
** PARAMS 


.control
destroy all
save all

write tb_AND_gate.raw
tran .01n 20n

plot Va Vb Vout
.endc
"
}
