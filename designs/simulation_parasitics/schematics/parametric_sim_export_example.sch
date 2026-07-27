v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 20 -60 20 -30 {lab=Vi}
N 190 30 190 70 {lab=0}
N 20 70 190 70 {lab=0}
N 20 30 20 70 {lab=0}
N 20 -110 20 -60 {lab=Vi}
N 20 -110 70 -110 {lab=Vi}
N 130 -110 190 -110 {lab=Vo}
N 190 -110 190 -40 {lab=Vo}
N 190 -40 190 -30 {lab=Vo}
C {res.sym} 190 0 0 0 {name=R1
value=2k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 20 0 0 0 {name=Vi value="DC 0 AC 0 sin(0 1 1 0 0 0)" savecurrent=false}
C {lab_wire.sym} 170 70 0 0 {name=p2 sig_type=std_logic lab=0}
C {code_shown.sym} 60 260 0 0 {name=NGSPICE only_toplevel=false value="
** PARAMS 
.control
destroy all
save all

;set sweep parameters

set sample_rate_start = 1
set sample_rate_end = 1000
set n_sims = 10

;linear vector of sweep paramter
compose sample_rates lin=$n_sims start=$sample_rate_start stop=$sample_rate_end 
let sample_periods=1/sample_rates

set wr_vecname
let val = 1

;for each parameter, perform a simulation and save it in /foss/designs/NYCMOS/designs/ as test_#, save only vo vi
foreach period $&sample_periods
	tran $period 10
	wrdata /foss/designs/NYCMOS/designs/test_$&val vo vi
	let val = val + 1
end
.endc
"
}
C {res.sym} 100 -110 3 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 50 -110 0 0 {name=p1 sig_type=std_logic lab=Vi}
C {lab_wire.sym} 180 -110 0 0 {name=p3 sig_type=std_logic lab=Vo}
