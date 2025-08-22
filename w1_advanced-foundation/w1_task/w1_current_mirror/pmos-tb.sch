v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 830 -690 1630 -290 {flags=graph
y1=-55.565235
y2=7.822335
ypos1=0
ypos2=2
divy=5
subdivy=8
unity=k
x1=0.00014473126
x2=0.0001447313
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=i(vmeas)
color=4
dataset=-1
unitx=u
logx=0
logy=1
rawfile=$netlist_dir/pmos-tb.raw
sim_type=dc
autoload=1}
N 210 -620 230 -620 {lab=GND}
N 610 -760 610 -730 {lab=VDS}
N 530 -700 570 -700 {lab=VGS}
N 610 -700 660 -700 {lab=VSS}
N 660 -700 670 -700 {lab=VSS}
N 610 -760 620 -760 {lab=VDS}
N 610 -670 610 -650 {lab=#net1}
N 610 -610 630 -610 {lab=VSS}
C {vsource.sym} 352.5 -650 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} 352.5 -750 0 0 {name=V2 value=1.65 savecurrent=false}
C {lab_pin.sym} 352.5 -620 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 352.5 -720 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 662.5 -700 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 622.5 -610 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 40 -225 0 0 {name=MODELS only_toplevel=true
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
C {devices/code_shown.sym} 25 -522.5 0 0 {name=NGSPICE only_toplevel=true
value="
.control
dc V1 0 3.3 0.01 V2 0 3.3 1.1
let id = i(Vmeas)
let gm = deriv(id)
plot id
plot gm
write pmos-tb.raw 
.endc
"}
C {lab_pin.sym} 352.5 -680 0 1 {name=p5 sig_type=std_logic lab=VGS}
C {lab_pin.sym} 352.5 -780 0 1 {name=p6 sig_type=std_logic lab=VDS}
C {lab_pin.sym} 612.5 -760 0 1 {name=p7 sig_type=std_logic lab=VDS}
C {lab_pin.sym} 532.5 -700 0 0 {name=p8 sig_type=std_logic lab=VGS}
C {symbols/pfet_03v3.sym} 590 -700 0 0 {name=M1
L=0.28u
W=0.22u
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
C {vsource.sym} 232.5 -650 0 0 {name=V3 value=0 savecurrent=false}
C {lab_pin.sym} 232.5 -680 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {gnd.sym} 210 -620 0 0 {name=l1 lab=GND}
C {ammeter.sym} 610 -640 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {launcher.sym} 1020 -730 0 0 {name=h5
descr="LOAD DC WAVES" 
tclcommand="xschem raw_read $netlist_dir/pmos-tb.raw dc"
}
