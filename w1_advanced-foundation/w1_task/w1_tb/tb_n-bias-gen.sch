v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 130 -120 130 -110 {lab=GND}
N 360 -230 420 -230 {lab=#net1}
N 420 -230 420 -220 {lab=#net1}
N 420 -220 420 -210 {lab=#net1}
C {vsource.sym} 210 -150 0 0 {name=V1 value="dc 3.3 ac 1m" savecurrent=false}
C {vsource.sym} 130 -150 0 0 {name=V2 value=0 savecurrent=false}
C {lab_pin.sym} 210 -180 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 130 -180 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {gnd.sym} 130 -110 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 210 -120 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 360 -250 0 1 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 360 -270 0 1 {name=p2 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 550 -190 0 0 {name=MODELS only_toplevel=true
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
C {devices/code_shown.sym} 540 -350 0 0 {name=NGSPICE only_toplevel=true
value="
.control
dc V1 0 3.3 0.01
plot I(Vmeas)
.endc
"}
C {lab_pin.sym} 420 -150 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {ammeter.sym} 420 -180 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {/foss/designs/aic-sems-v/w1_advanced-foundation/w1_task/w1_current_mirror/n-bias-gen.sym} 210 -250 0 0 {name=x1}
