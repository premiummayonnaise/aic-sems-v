v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 930 -780 1730 -380 {flags=graph
y1=-0.00050282586
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=m
x1=6.9791e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/nmos-tb.raw
sim_type=dc
y2=0.0025740493
color=4
node=i(id)
x2=3.8
rainbow=0
linewidth_mult=3}
B 2 930 -340 1730 60 {flags=graph
y1=-0.00050282586
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=m
x1=6.9791e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/nmos-tb.raw
sim_type=dc
y2=0.0025740493
x2=3.8
rainbow=0
color=4
node=i(gm)
linewidth_mult=1.3}
N 612.5 -675 612.5 -625 {lab=VSS}
N 512.5 -705 572.5 -705 {lab=VGS}
N 612.5 -705 672.5 -705 {lab=VSS}
N 612.5 -755 612.5 -735 {lab=VDS}
N 612.5 -775 612.5 -755 {lab=VDS}
N 237.5 -695 257.5 -695 {lab=GND}
C {symbols/nfet_03v3.sym} 592.5 -705 0 0 {name=M1
L=2u
W=10u
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
C {vsource.sym} 372.5 -635 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} 372.5 -755 0 0 {name=V2 value=1.65 savecurrent=false}
C {lab_pin.sym} 372.5 -605 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 372.5 -725 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 672.5 -705 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 612.5 -625 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 40 -180 0 0 {name=MODELS only_toplevel=true
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
C {devices/code_shown.sym} 25 -477.5 0 0 {name=NGSPICE only_toplevel=true
value="
.control
dc V1 0 3.3 0.01 V2 0 3.3 0.3
let id = -i(V2)
let gm = deriv(id)
let gm_over_id = @m.M1[gm]/abs(@m.M1[id])
let id_over_w = abs(@m.M1[id])/10u
let Vov = 2*abs(@m.M1[id])/@m.M1[gm]
let fT = @m.M1[gm]/(2*3.14*(@m.M1[cgs]+@m.M1[cgd]))
plot gm
write nmos-tb.raw 
.endc
"}
C {lab_pin.sym} 372.5 -665 0 1 {name=p5 sig_type=std_logic lab=VGS}
C {lab_pin.sym} 372.5 -785 0 1 {name=p6 sig_type=std_logic lab=VDS}
C {lab_pin.sym} 612.5 -775 0 1 {name=p7 sig_type=std_logic lab=VDS}
C {lab_pin.sym} 512.5 -705 0 0 {name=p8 sig_type=std_logic lab=VGS}
C {launcher.sym} 1020 -830 0 0 {name=h5
descr="LOAD WAVES DC" 
tclcommand="xschem raw_read $netlist_dir/nmos-tb.raw dc"
}
C {vsource.sym} 260 -725 0 0 {name=V3 value=1.65 savecurrent=false}
C {lab_pin.sym} 260 -755 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {gnd.sym} 237.5 -695 0 0 {name=l1 lab=GND}
