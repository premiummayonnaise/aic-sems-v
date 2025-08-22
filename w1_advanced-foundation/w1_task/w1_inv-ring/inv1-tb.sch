v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 320 -80 320 -70 {lab=GND}
C {vsource.sym} 180 -110 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 250 -110 0 0 {name=V2 value=3.3 savecurrent=false}
C {vsource.sym} 320 -110 0 0 {name=V3 value=0 savecurrent=false}
C {lab_pin.sym} 250 -140 0 1 {name=p2 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 180 -140 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 250 -80 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 180 -80 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 320 -140 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {gnd.sym} 320 -70 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -610 -190 0 0 {name=MODELS only_toplevel=true
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
C {devices/code_shown.sym} -510 -370 0 0 {name=NGSPICE only_toplevel=true
value="
.control
dc V2 0 3.3 0.01
plot OUT VIN
write inv1-tb.raw
.endc
"}
C {lab_pin.sym} 400 -230 0 1 {name=p11 sig_type=std_logic lab=OUT}
C {inv1.sym} 250 -230 0 0 {name=x4}
C {lab_pin.sym} 400 -250 0 1 {name=p14 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 400 -210 0 1 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 100 -250 0 0 {name=p1 sig_type=std_logic lab=VIN}
