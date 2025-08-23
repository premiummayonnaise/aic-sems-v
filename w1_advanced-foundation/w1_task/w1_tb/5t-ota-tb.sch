v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 140 -160 140 -130 {lab=VDD}
N 140 -70 140 -40 {lab=VSS}
N 220 -160 220 -130 {lab=VP}
N 220 -70 220 -40 {lab=VSS}
N 300 -160 300 -130 {lab=VN}
N 300 -70 300 -40 {lab=VSS}
N 380 -160 380 -130 {lab=VSS}
N 380 -70 380 -40 {lab=GND}
N 470 -70 470 -40 {lab=IBIAS}
N 470 -160 470 -130 {lab=VDD}
C {5t-ota.sym} 290 -260 0 0 {name=x1}
C {vsource.sym} 140 -100 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 220 -100 0 0 {name=V2 value="dc 1.65 ac 1m" savecurrent=false}
C {vsource.sym} 300 -100 0 0 {name=V3 value="dc 1.65 ac -1m" savecurrent=false}
C {vsource.sym} 380 -100 0 0 {name=V4 value=0 savecurrent=false}
C {devices/code_shown.sym} -600 -180 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {lab_pin.sym} 140 -160 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 220 -160 0 0 {name=p2 sig_type=std_logic lab=VP}
C {lab_pin.sym} 300 -160 0 0 {name=p4 sig_type=std_logic lab=VN}
C {lab_pin.sym} 380 -160 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 140 -40 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 220 -40 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 300 -40 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {gnd.sym} 380 -40 0 0 {name=l1 lab=GND}
C {isource.sym} 470 -100 0 0 {name=I0 value=10u}
C {lab_pin.sym} 470 -160 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 470 -40 0 0 {name=p8 sig_type=std_logic lab=IBIAS}
C {lab_pin.sym} 440 -280 0 1 {name=p10 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 440 -260 0 1 {name=p11 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 140 -280 0 0 {name=p12 sig_type=std_logic lab=VP}
C {lab_pin.sym} 140 -260 0 0 {name=p13 sig_type=std_logic lab=VN}
C {lab_pin.sym} 140 -240 0 0 {name=p14 sig_type=std_logic lab=IBIAS}
C {lab_pin.sym} 440 -240 0 1 {name=p15 sig_type=std_logic lab=OUT}
C {devices/code_shown.sym} -610 -380 0 0 {name=NGSPICE only_toplevel=true
value="
.control
ac dec 100 1 10G
let vdiff = VP - VN
let ao = OUT/vdiff
plot db(ao)
.endc
"}
