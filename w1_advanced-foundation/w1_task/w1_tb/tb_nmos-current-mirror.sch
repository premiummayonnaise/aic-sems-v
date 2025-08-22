v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 720 -240 720 -230 {lab=GND}
N 580 -40 610 -40 {lab=I1}
N 580 -120 610 -120 {lab=I2}
N 580 -200 610 -200 {lab=I3}
N 580 -280 610 -280 {lab=I4}
N 580 -350 610 -350 {lab=I5}
C {devices/code_shown.sym} -620 -210 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice ff
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {vsource.sym} 720 -140 0 0 {name=V1 value="PULSE(0 3.3 0 2u 2u 4u 8u)" savecurrent=false}
C {vsource.sym} 720 -270 0 0 {name=V2 value=0 savecurrent=false}
C {lab_pin.sym} 720 -170 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 720 -300 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {gnd.sym} 720 -230 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 720 -110 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} -630 -370 0 0 {name=NGSPICE only_toplevel=true
value="
.control
tran 0.1u 40u
plot I(Vmeas) I(Vmeas1) I(Vmeas2) I(Vmeas3) I(Vmeas4)
plot (Vmeas5)
.endc
"}
C {ammeter.sym} 550 -40 3 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {ammeter.sym} 550 -120 3 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {ammeter.sym} 550 -200 3 0 {name=Vmeas2 savecurrent=true spice_ignore=0}
C {ammeter.sym} 550 -280 3 0 {name=Vmeas3 savecurrent=true spice_ignore=0}
C {ammeter.sym} 550 -350 3 0 {name=Vmeas4 savecurrent=true spice_ignore=0}
C {lab_pin.sym} 610 -40 3 0 {name=p1 sig_type=std_logic lab=I1}
C {lab_pin.sym} 610 -120 3 0 {name=p2 sig_type=std_logic lab=I2}
C {lab_pin.sym} 610 -200 3 0 {name=p3 sig_type=std_logic lab=I3}
C {lab_pin.sym} 610 -280 3 0 {name=p6 sig_type=std_logic lab=I4}
C {lab_pin.sym} 610 -350 3 0 {name=p7 sig_type=std_logic lab=I5}
C {lab_pin.sym} 340 -220 0 1 {name=p9 sig_type=std_logic lab=I1}
C {lab_pin.sym} 340 -200 0 1 {name=p10 sig_type=std_logic lab=I2}
C {lab_pin.sym} 340 -180 0 1 {name=p11 sig_type=std_logic lab=I3}
C {lab_pin.sym} 340 -160 0 1 {name=p12 sig_type=std_logic lab=I4}
C {lab_pin.sym} 340 -140 0 1 {name=p13 sig_type=std_logic lab=I5}
C {lab_pin.sym} 340 -280 0 1 {name=p14 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 340 -260 0 1 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 340 -240 0 1 {name=p16 sig_type=std_logic lab=VOUT}
C {lab_pin.sym} 520 -350 0 0 {name=p18 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 520 -280 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 520 -200 0 0 {name=p20 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 520 -120 0 0 {name=p21 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 520 -40 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {/foss/designs/aic-sems-v/w1_advanced-foundation/w1_task/w1_current_mirror/nmos-current-mirror.sym} 190 -210 0 0 {name=x1}
