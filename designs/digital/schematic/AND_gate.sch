v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 350 -380 350 -330 {lab=VSS}
N 350 -330 760 -330 {lab=VSS}
N 760 -430 760 -330 {lab=VSS}
N 760 -460 800 -460 {lab=VSS}
N 800 -460 800 -330 {lab=VSS}
N 770 -330 800 -330 {lab=VSS}
N 760 -330 770 -330 {lab=VSS}
N 760 -560 760 -490 {lab=Out}
N 760 -730 760 -620 {lab=VDD}
N 280 -730 760 -730 {lab=VDD}
N 280 -730 280 -680 {lab=VDD}
N 280 -650 510 -650 {lab=VDD}
N 410 -730 410 -650 {lab=VDD}
N 510 -730 510 -680 {lab=VDD}
N 550 -650 610 -650 {lab=B}
N 190 -650 240 -650 {lab=A}
N 280 -620 280 -590 {lab=#net1}
N 280 -590 510 -590 {lab=#net1}
N 510 -620 510 -590 {lab=#net1}
N 350 -590 350 -550 {lab=#net1}
N 270 -520 310 -520 {lab=B}
N 270 -410 310 -410 {lab=A}
N 350 -490 350 -440 {lab=#net2}
N 350 -520 390 -520 {lab=VSS}
N 390 -520 390 -330 {lab=VSS}
N 350 -410 390 -410 {lab=VSS}
N 510 -590 680 -590 {lab=#net1}
N 680 -590 720 -590 {lab=#net1}
N 680 -590 680 -460 {lab=#net1}
N 680 -460 720 -460 {lab=#net1}
N 760 -590 800 -590 {lab=VDD}
N 800 -730 800 -590 {lab=VDD}
N 760 -730 800 -730 {lab=VDD}
C {title.sym} 160 -30 0 0 {name=l1 author="Lei Chen"}
C {symbols/nfet_03v3.sym} 330 -520 0 0 {name=M1
L=0.28u
W=8u
nf=2
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 260 -650 0 0 {name=M2
L=0.28u
W=4u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 530 -650 0 1 {name=M3
L=0.28u
W=4u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 330 -410 0 0 {name=M4
L=0.28u
W=8u
nf=2
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 740 -460 0 0 {name=M5
L=0.28u
W=4u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 740 -590 0 0 {name=M6
L=0.28u
W=8u
nf=2
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {ipin.sym} 50 -490 0 0 {name=p1 lab=VDD}
C {ipin.sym} 50 -460 0 0 {name=p2 lab=VSS}
C {ipin.sym} 50 -430 0 0 {name=p3 lab=A}
C {ipin.sym} 50 -400 0 0 {name=p4 lab=B}
C {opin.sym} 90 -490 0 0 {name=p5 lab=Out}
C {lab_wire.sym} 540 -730 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 550 -330 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 290 -410 0 0 {name=p8 sig_type=std_logic lab=A}
C {lab_wire.sym} 290 -520 0 0 {name=p9 sig_type=std_logic lab=B}
C {lab_wire.sym} 570 -650 0 1 {name=p10 sig_type=std_logic lab=B}
C {lab_wire.sym} 210 -650 0 0 {name=p11 sig_type=std_logic lab=A}
C {lab_wire.sym} 760 -520 0 1 {name=p12 sig_type=std_logic lab=Out}
