v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 780 -250 780 -240 {lab=GND}
N 640 -50 670 -50 {lab=I1}
N 640 -130 670 -130 {lab=I2}
N 640 -210 670 -210 {lab=I3}
N 640 -290 670 -290 {lab=I4}
N 640 -360 670 -360 {lab=I5}
C {devices/code_shown.sym} -560 -220 0 0 {name=MODELS only_toplevel=true
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
C {vsource.sym} 780 -150 0 0 {name=V1 value="dc 3.3" savecurrent=false}
C {vsource.sym} 780 -280 0 0 {name=V2 value=0 savecurrent=false}
C {lab_pin.sym} 780 -180 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 780 -310 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {gnd.sym} 780 -240 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 780 -120 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} -570 -380 0 0 {name=NGSPICE only_toplevel=true
value="
.control
tran 0.1u 10u
plot I(Vmeas) I(Vmeas1) I(Vmeas2) I(Vmeas3) I(Vmeas4)
plot (Vmeas5)
.endc
"}
C {/foss/designs/aic-sems-v/w1_advanced-foundation/w1_task/w1_current_mirror/nmos-current-mirror.sym} 240 -290 0 0 {name=x1}
C {ammeter.sym} 610 -50 3 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {ammeter.sym} 610 -130 3 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {ammeter.sym} 610 -210 3 0 {name=Vmeas2 savecurrent=true spice_ignore=0}
C {ammeter.sym} 610 -290 3 0 {name=Vmeas3 savecurrent=true spice_ignore=0}
C {ammeter.sym} 610 -360 3 0 {name=Vmeas4 savecurrent=true spice_ignore=0}
C {lab_pin.sym} 670 -50 3 0 {name=p1 sig_type=std_logic lab=I1}
C {lab_pin.sym} 670 -130 3 0 {name=p2 sig_type=std_logic lab=I2}
C {lab_pin.sym} 670 -210 3 0 {name=p3 sig_type=std_logic lab=I3}
C {lab_pin.sym} 670 -290 3 0 {name=p6 sig_type=std_logic lab=I4}
C {lab_pin.sym} 670 -360 3 0 {name=p7 sig_type=std_logic lab=I5}
C {lab_pin.sym} 390 -300 0 1 {name=p9 sig_type=std_logic lab=I1}
C {lab_pin.sym} 390 -280 0 1 {name=p10 sig_type=std_logic lab=I2}
C {lab_pin.sym} 390 -260 0 1 {name=p11 sig_type=std_logic lab=I3}
C {lab_pin.sym} 390 -240 0 1 {name=p12 sig_type=std_logic lab=I4}
C {lab_pin.sym} 390 -220 0 1 {name=p13 sig_type=std_logic lab=I5}
C {lab_pin.sym} 390 -360 0 1 {name=p14 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 390 -340 0 1 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 390 -320 0 1 {name=p16 sig_type=std_logic lab=VOUT}
C {lab_pin.sym} 580 -360 0 0 {name=p18 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 580 -290 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 580 -210 0 0 {name=p20 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 580 -130 0 0 {name=p21 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 580 -50 0 0 {name=p22 sig_type=std_logic lab=VDD}
