v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {200 MHz CLK - Disable when not in use

 } 50 1370 0 0 0.4 0.4 {}
T {1 MHz CLK - Disable when not in use} 2040 1420 0 0 0.4 0.4 {}
T {100 MHz CLK - Disable when not in use} 3790 1440 0 0 0.4 0.4 {}
T {Frequency Sweep - Disable when not in use} -10 3000 0 0 0.4 0.4 {}
N 10 -340 10 -290 {lab=0}
N 550 -300 550 -170 {lab=0}
N 550 -480 550 -460 {lab=VDD}
N 10 -170 210 -170 {lab=0}
N 10 -290 10 -170 {lab=0}
N 210 -170 550 -170 {lab=0}
N 10 -470 10 -400 {lab=VDD}
N 10 -480 10 -470 {lab=VDD}
N 10 -480 550 -480 {lab=VDD}
N 210 -390 400 -390 {lab=V_LO_REF}
N 700 -420 810 -420 {lab=V_LOI_p}
N 810 -520 810 -420 {lab=V_LOI_p}
N 700 -400 830 -400 {lab=V_LOI_m}
N 830 -400 840 -400 {lab=V_LOI_m}
N 840 -520 840 -400 {lab=V_LOI_m}
N 900 -520 940 -520 {lab=0}
N 710 -520 750 -520 {lab=0}
N 900 -260 940 -260 {lab=0}
N 710 -260 750 -260 {lab=0}
N 700 -360 840 -360 {lab=V_LOQ_p}
N 840 -360 840 -260 {lab=V_LOQ_p}
N 700 -340 810 -340 {lab=V_LOQ_m}
N 810 -340 810 -260 {lab=V_LOQ_m}
N 610 1370 610 1410 {lab=V_LO_REF_unbuffered
spice_ignore=true}
N 610 1370 660 1370 {lab=V_LO_REF_unbuffered
spice_ignore=true}
N 610 1470 610 1510 {lab=0
spice_ignore=true}
N 760 1370 800 1370 {lab=V_LO_REF
spice_ignore=true}
N 710 1290 710 1330 {lab=VDD
spice_ignore=true}
N 710 1410 710 1440 {lab=0
spice_ignore=true}
N 350 -370 400 -370 {lab=#net1}
N 350 -360 350 -340 {lab=#net1}
N 350 -200 350 -190 {lab=VDD}
N 350 -190 410 -190 {lab=VDD}
N 350 -340 350 -300 {lab=#net1}
N 350 -240 350 -200 {lab=VDD}
N 2610 1440 2610 1480 {lab=V_LO_REF_unbuffered
spice_ignore=true}
N 2610 1440 2660 1440 {lab=V_LO_REF_unbuffered
spice_ignore=true}
N 2610 1540 2610 1580 {lab=0
spice_ignore=true}
N 2760 1440 2800 1440 {lab=V_LO_REF
spice_ignore=true}
N 2710 1360 2710 1400 {lab=VDD
spice_ignore=true}
N 2710 1480 2710 1510 {lab=0
spice_ignore=true}
N 4360 1460 4360 1500 {lab=V_LO_REF_unbuffered
spice_ignore=true}
N 4360 1460 4410 1460 {lab=V_LO_REF_unbuffered
spice_ignore=true}
N 4360 1560 4360 1600 {lab=0
spice_ignore=true}
N 4510 1460 4550 1460 {lab=V_LO_REF
spice_ignore=true}
N 4460 1380 4460 1420 {lab=VDD
spice_ignore=true}
N 4460 1500 4460 1530 {lab=0
spice_ignore=true}
N 350 -370 350 -360 {lab=#net1}
N 560 3020 560 3060 {lab=V_LO_REF_unbuffered
}
N 560 3020 610 3020 {lab=V_LO_REF_unbuffered
}
N 560 3120 560 3160 {lab=0
}
N 710 3020 750 3020 {lab=V_LO_REF
}
N 660 2940 660 2980 {lab=VDD
}
N 660 3060 660 3090 {lab=0
}
C {title.sym} 160 -30 0 0 {name=LO Divider author="Lei Chen"}
C {code_shown.sym} -10 1680 0 0 {name="200 MHz CLK" only_toplevel=false value="
** PARAMS 

.PARAM PAR_VDD=3.3

.control
destroy all
save all
write tb_divider_with_tail.raw

op
print v(V_LOI_p) v(V_LOI_n)


;transient analysis
tran 0.001n 200n
 
let V_LOI = v_loi_p - v_loi_m
let V_LOQ = v_loq_p - v_loq_m

plot v(V_LO_REF) v(V_LOI_p)+4 v(V_LOI_m)+4  v(V_LOQ_p)-4 v(V_LOQ_m)-4 ;xlimit 10n 20n;plot divider output
plot v(V_LO_REF) V_LOI+4 V_LOQ+8 ;xlimit 10n 20n; plot differential output
;plot v(V_EN) v(x1.EN_BAR) v(x1.LO_REF_GATED) v(x1.LO_REF_BAR); plot enable signal and clock signal status

plot i(vdd)*3.3 ;transient power

;plot i(v.x1.v1) plot i(v.x1.v2)
;plot v(V_LO_REF) v(x1.LO_REF_BAR)

meas tran t_diff TRIG v(V_LOI) VAL=0 TD=10n RISE=1 TARG v(V_LOQ) VAL=0 TD=10n RISE=1 ; time difference between first rising 0 crossing of V_LOI and first rising 0 cross of V_LOQ after 10ns

;fft of input and output 
linearize v(V_LOI) v(v_loq)
fft v(V_LOI) v(v_loq)
plot db(v_loi) db(v_loq) xlimit 1 5G


let V_LOI_MAG = mag(V_LOI)
let V_LOQ_MAG = mag(V_LOQ)
let V_LOI_MAX = maximum(V_LOI_MAG)-0.001; subtract small amount so that meas can find it
meas sp f_har_1 WHEN v(V_LOI_MAG)=V_LOI_MAX; measure first harmonic frequency by measuring frequency of the largest voltage component

;calculate phase error with transient data
let phase_diff_transient = tran1.t_diff * f_har_1 * 360; phase difference = t_diff/t_period = t_diff * f * 360 deg/1
;print phase_diff_transient


;calculate phase error with FFT
let phase_diff_fft = (cph(V_LOI)-cph(V_LOQ))*360/2/pi
meas sp phase_diff_har_1 FIND phase_diff_fft WHEN frequency=f_har_1
;print phase_diff_har_1

echo 'Phase Error with Transient (deg)' 
print phase_diff_transient-90
echo 'Phase Error with FFT (deg)' 
print phase_diff_har_1-90
echo 'I/Q Amplitude Error (%)'
print (maximum(V_LOQ_MAG)/maximum(V_LOI_MAG)-1)*100

.endc
"
spice_ignore=true}
C {vsource.sym} 10 -370 0 0 {name=VDD value="PAR_VDD" savecurrent=false}
C {gnd.sym} 230 -170 0 0 {name=l1 lab=0}
C {lab_wire.sym} 780 1370 0 1 {name=p1 sig_type=std_logic lab=V_LO_REF
spice_ignore=true}
C {lab_wire.sym} 290 -480 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {capa.sym} 870 -520 3 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 780 -520 1 0 {name=C2
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 870 -260 3 0 {name=C3
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 780 -260 1 0 {name=C4
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 750 -420 0 0 {name=p3 sig_type=std_logic lab=V_LOI_p
}
C {lab_wire.sym} 790 -400 0 0 {name=p4 sig_type=std_logic lab=V_LOI_m}
C {lab_wire.sym} 760 -360 0 0 {name=p5 sig_type=std_logic lab=V_LOQ_p}
C {lab_wire.sym} 800 -340 0 0 {name=p6 sig_type=std_logic lab=V_LOQ_m}
C {lab_wire.sym} 730 -260 0 0 {name=p7 sig_type=std_logic lab=0}
C {lab_wire.sym} 920 -260 0 0 {name=p8 sig_type=std_logic lab=0}
C {lab_wire.sym} 740 -520 0 0 {name=p9 sig_type=std_logic lab=0}
C {lab_wire.sym} 930 -520 0 0 {name=p10 sig_type=std_logic lab=0}
C {code_shown.sym} 0 70 0 0 {name=MODELS5 only_toplevel=true  
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
C {code_shown.sym} 560 70 0 0 {name=MODELS1 only_toplevel=true  
format="tcleval( @value )" 
value="
; PVT - ff - 27C
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice ff
.lib $::180MCU_MODELS/smbb000149.ngspice ff
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice res_ff
.lib $::180MCU_MODELS/sm141064.ngspice moscap_ff
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_ff
"
spice_ignore=true}
C {code_shown.sym} 1130 70 0 0 {name=MODELS2 only_toplevel=true  
format="tcleval( @value )" 
value="
; PVT - ss - 27c
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice ss
.lib $::180MCU_MODELS/smbb000149.ngspice ss
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice res_ss
.lib $::180MCU_MODELS/sm141064.ngspice moscap_ss
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_ss
"
spice_ignore=true}
C {code_shown.sym} 0 320 0 0 {name=MODELS3 only_toplevel=true  
format="tcleval( @value )" 
value="
; PVT - sf - 27C
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice sf
.lib $::180MCU_MODELS/smbb000149.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
"
spice_ignore=true}
C {code_shown.sym} 570 330 0 0 {name=MODELS4 only_toplevel=true  
format="tcleval( @value )" 
value="
; PVT - fs - 27C
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice fs
.lib $::180MCU_MODELS/smbb000149.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
"
spice_ignore=true}
C {vsource.sym} 610 1440 0 0 {name=V_LO_REF1 value="DC 0 pulse(0 3.3 0 50p 50p 2.5n 5n)" savecurrent=false
spice_ignore=true}
C {lab_wire.sym} 610 1510 0 0 {name=p12 sig_type=std_logic lab=0
spice_ignore=true}
C {simulation_parasitics/schematics/digital_input_buffer.sym} 710 1370 0 0 {name=x7
spice_ignore=true}
C {lab_wire.sym} 710 1310 0 1 {name=p30 sig_type=std_logic lab=VDD
spice_ignore=true}
C {lab_wire.sym} 710 1440 0 0 {name=p32 sig_type=std_logic lab=0
spice_ignore=true}
C {lab_wire.sym} 290 -390 0 0 {name=p13 sig_type=std_logic lab=V_LO_REF}
C {code_shown.sym} -800 70 0 0 {name=NGSPICE1 only_toplevel=false value="
** PARAMS 

.PARAM PAR_VDD=3.3

.control
destroy all
save all
write tb_divider.raw

op


;transient analysis
tran .001n 100n
 
let V_LOI = v_loi_p-v_loi_m
let V_LOQ = v_loq_p-v_loq_m

plot x1.lo_q_p_internal x1.lo_q_m_internal

plot x1.lo_i_p_internal x1.va v_loi_p v_lo_ref+4; xlimit 0 100u
plot x1.lo_i_m_internal x1.vb v_loi_m v_lo_ref+4; xlimit 0 100u

plot i(vdd)

plot i(v.x1.v_i_1) i(v.x1.v_i_2)
plot i(v.x1.v_i_buf_1) i(v.x1.v_i_buf_2)
plot i(v.x1.v_i_tail_1) i(v.x1.v_i_tail_2)
.endc
"
spice_ignore=true}
C {divider/schematic/divider_with_tail.sym} 550 -380 0 0 {name=x1}
C {lab_wire.sym} 390 -190 0 1 {name=p14 sig_type=std_logic lab=VDD}
C {isource.sym} 350 -270 0 0 {name=I0 value=100u}
C {lab_wire.sym} 640 1370 0 0 {name=p15 sig_type=std_logic lab=V_LO_REF_unbuffered
spice_ignore=true}
C {code_shown.sym} 2050 1660 0 0 {name="1 MHz CLK" only_toplevel=false value="
** PARAMS 

.PARAM PAR_VDD=3.3

.control
destroy all
save all
write tb_divider_with_tail.raw

op
print v(V_LOI_p) v(V_LOI_n)


;transient analysis
tran 0.01u 75u
 
let V_LOI = v_loi_p - v_loi_m
let V_LOQ = v_loq_p - v_loq_m

plot v(V_LO_REF) v(V_LOI_p)+4 v(V_LOI_m)+4  v(V_LOQ_p)-4 v(V_LOQ_m)-4 ;xlimit 10n 20n;plot divider output
plot v(V_LO_REF) V_LOI+24 V_LOQ+12 ;xlimit 10n 20n; plot differential output
;plot v(V_EN) v(x1.EN_BAR) v(x1.LO_REF_GATED) v(x1.LO_REF_BAR); plot enable signal and clock signal status

plot i(vdd);transient current

;plot i(v.x1.v1) plot i(v.x1.v2)
;plot v(V_LO_REF) v(x1.LO_REF_BAR)

meas tran t_diff TRIG v(V_LOI) VAL=0 TD=50u RISE=1 TARG v(V_LOQ) VAL=0 TD=50u RISE=1 ; time difference between first rising 0 crossing of V_LOI and first rising 0 cross of V_LOQ after 10ns

;fft of input and output 
linearize v(V_LOI) v(v_loq)
fft v(V_LOI) v(v_loq)
plot db(v_loi) db(v_loq) xlimit 1 5MEG


let V_LOI_MAG = mag(V_LOI)
let V_LOQ_MAG = mag(V_LOQ)
let V_LOI_MAX = maximum(V_LOI_MAG)-0.001; subtract small amount so that meas can find it
meas sp f_har_1 WHEN v(V_LOI_MAG)=V_LOI_MAX; measure first harmonic frequency by measuring frequency of the largest voltage component

;calculate phase error with transient data
let phase_diff_transient = tran1.t_diff * f_har_1 * 360; phase difference = t_diff/t_period = t_diff * f * 360 deg/1
;print phase_diff_transient


;calculate phase error with FFT
let phase_diff_fft = (cph(V_LOI)-cph(V_LOQ))*360/2/pi
meas sp phase_diff_har_1 FIND phase_diff_fft WHEN frequency=f_har_1
;print phase_diff_har_1

echo 'Phase Error with Transient (deg)' 
print phase_diff_transient-90
echo 'Phase Error with FFT (deg)' 
print phase_diff_har_1-90
echo 'I/Q Amplitude Error (%)'
print (maximum(V_LOQ_MAG)/maximum(V_LOI_MAG)-1)*100

.endc
"
spice_ignore=true}
C {lab_wire.sym} 2780 1440 0 1 {name=p16 sig_type=std_logic lab=V_LO_REF
spice_ignore=true}
C {vsource.sym} 2610 1510 0 0 {name=V_LO_REF2 value="DC 0 pulse(0 3.3 0 50n 50n .5u 1u)" savecurrent=false
spice_ignore=true}
C {lab_wire.sym} 2610 1580 0 0 {name=p17 sig_type=std_logic lab=0
spice_ignore=true}
C {simulation_parasitics/schematics/digital_input_buffer.sym} 2710 1440 0 0 {name=x2
spice_ignore=true}
C {lab_wire.sym} 2710 1380 0 1 {name=p18 sig_type=std_logic lab=VDD
spice_ignore=true}
C {lab_wire.sym} 2710 1510 0 0 {name=p19 sig_type=std_logic lab=0
spice_ignore=true}
C {lab_wire.sym} 2640 1440 0 0 {name=p20 sig_type=std_logic lab=V_LO_REF_unbuffered
spice_ignore=true}
C {code_shown.sym} 3800 1680 0 0 {name=1 only_toplevel=false value="
** PARAMS 

.PARAM PAR_VDD=3.3

.control
destroy all
save all
write tb_divider_with_tail.raw

op
print v(V_LOI_p) v(V_LOI_n)


;transient analysis
tran .833n 400n
 
let V_LOI = v_loi_p - v_loi_m
let V_LOQ = v_loq_p - v_loq_m

plot v(V_LO_REF) v(V_LOI_p)+4 v(V_LOI_m)+4  v(V_LOQ_p)-4 v(V_LOQ_m)-4 ;xlimit 10n 20n;plot divider output
plot v(V_LO_REF) V_LOI+24 V_LOQ+12 ;xlimit 10n 20n; plot differential output
;plot v(V_EN) v(x1.EN_BAR) v(x1.LO_REF_GATED) v(x1.LO_REF_BAR); plot enable signal and clock signal status

plot i(vdd);transient current

;plot i(v.x1.v1) plot i(v.x1.v2)
;plot v(V_LO_REF) v(x1.LO_REF_BAR)

meas tran t_diff TRIG v(V_LOI) VAL=0 TD=.94u RISE=1 TARG v(V_LOQ) VAL=0 TD=.94u RISE=1 ; time difference between first rising 0 crossing of V_LOI and first rising 0 cross of V_LOQ after 10ns

;fft of input and output 
linearize v(V_LOI) v(v_loq)
fft v(V_LOI) v(v_loq)
plot db(v_loi) db(v_loq) xlimit 1 100MEG


let V_LOI_MAG = mag(V_LOI)
let V_LOQ_MAG = mag(V_LOQ)
let V_LOI_MAX = maximum(V_LOI_MAG)-0.001; subtract small amount so that meas can find it
meas sp f_har_1 WHEN v(V_LOI_MAG)=V_LOI_MAX; measure first harmonic frequency by measuring frequency of the largest voltage component

;calculate phase error with transient data
let phase_diff_transient = tran1.t_diff * f_har_1 * 360; phase difference = t_diff/t_period = t_diff * f * 360 deg/1
;print phase_diff_transient


;calculate phase error with FFT
let phase_diff_fft = (cph(V_LOI)-cph(V_LOQ))*360/2/pi
meas sp phase_diff_har_1 FIND phase_diff_fft WHEN frequency=f_har_1
;print phase_diff_har_1

echo 'Phase Error with Transient (deg)' 
print phase_diff_transient-90
echo 'Phase Error with FFT (deg)' 
print phase_diff_har_1-90
echo 'I/Q Amplitude Error (%)'
print (maximum(V_LOQ_MAG)/maximum(V_LOI_MAG)-1)*100

.endc
"
spice_ignore=true}
C {lab_wire.sym} 4530 1460 0 1 {name=p21 sig_type=std_logic lab=V_LO_REF
spice_ignore=true}
C {vsource.sym} 4360 1530 0 0 {name=V_LO_REF3 value="DC 0 pulse(0 3.3 0 .0833n .0833n 4.16n 8.33n)" savecurrent=false
spice_ignore=true}
C {lab_wire.sym} 4360 1600 0 0 {name=p22 sig_type=std_logic lab=0
spice_ignore=true}
C {simulation_parasitics/schematics/digital_input_buffer.sym} 4460 1460 0 0 {name=x3
spice_ignore=true}
C {lab_wire.sym} 4460 1400 0 1 {name=p23 sig_type=std_logic lab=VDD
spice_ignore=true}
C {lab_wire.sym} 4460 1530 0 0 {name=p24 sig_type=std_logic lab=0
spice_ignore=true}
C {lab_wire.sym} 4390 1460 0 0 {name=p25 sig_type=std_logic lab=V_LO_REF_unbuffered
spice_ignore=true}
C {code_shown.sym} 0 3240 0 0 {name=2 only_toplevel=false value="
** PARAMS 

.PARAM PAR_VDD=3.3
.PARAM PAR_PERIOD = 1

.control
destroy all

write tb_divider_with_tail_pvt.raw

compose clk_frequency lin=10 start=1MEG stop=100MEG ;output frequency we want
let CLK_FREQUENCY = CLK_FREQUENCY*2 ; convert to input frequency
let CLK_PERIOD = 1/CLK_FREQUENCY ; convert to period
echo $&CLK_FREQUENCY
foreach period $&CLK_PERIOD
	echo ---------------------------------------------
	echo $period ; print period
	let tran_step = $period/100 ; set transient step to 0.1 of clock period
	let tran_stop = $period*200 ; 200 cycles
	let trig_delay = $period*44.25 ; trigger after 44.9 cycles so that I/Q are both rising

	print tran_step
	print tran_stop
	print trig_delay
	alterparam PAR_period = $period
	reset
	save all

	tran $&tran_step $&tran_stop
	
	let V_LOI = v_loi_p - v_loi_m
	let V_LOQ = v_loq_p - v_loq_m
	
	meas tran t_diff TRIG v(V_LOI) VAL=0 TD=$&trig_delay RISE=1 TARG v(V_LOQ) VAL=0 TD=$&trig_delay RISE=1 ; time difference between first rising 0 crossing of V_LOI and first rising 0 cross of V_LOQ after 10ns

	linearize
	fft v(V_LOI) v(v_loq)

	let V_LOI_MAG = mag(V_LOI)
	let V_LOQ_MAG = mag(V_LOQ)
	let V_LOI_MAX = maximum(V_LOI_MAG)-0.001; subtract small amount so that meas can find it
	meas sp f_har_1 WHEN v(V_LOI_MAG)=V_LOI_MAX; measure first harmonic frequency by measuring frequency of the largest voltage component
	
	;calculate phase error with transient data
	;let phase_diff_transient = tran1.t_diff * f_har_1 * 360; phase difference = t_diff/t_period = t_diff * f * 360 deg/1
	
	;echo 'Phase Error with Transient (deg)' 
	;print phase_diff_transient-90
	;echo 'I/Q Amplitude Error (%)'
	;print (maximum(V_LOQ_MAG)/maximum(V_LOI_MAG)-1)*100


end
.endc
"
}
C {lab_wire.sym} 730 3020 0 1 {name=p11 sig_type=std_logic lab=V_LO_REF
}
C {vsource.sym} 560 3090 0 0 {name=V_LO_REF4 value="DC 0 pulse(0 3.3 0 '.01*PAR_PERIOD' '.01*PAR_PERIOD' 'PAR_PERIOD/2' 'PAR_PERIOD')" savecurrent=false
}
C {lab_wire.sym} 560 3160 0 0 {name=p26 sig_type=std_logic lab=0
}
C {simulation_parasitics/schematics/digital_input_buffer.sym} 660 3020 0 0 {name=x4
}
C {lab_wire.sym} 660 2960 0 1 {name=p27 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 660 3090 0 0 {name=p28 sig_type=std_logic lab=0
}
C {lab_wire.sym} 590 3020 0 0 {name=p29 sig_type=std_logic lab=V_LO_REF_unbuffered
}
