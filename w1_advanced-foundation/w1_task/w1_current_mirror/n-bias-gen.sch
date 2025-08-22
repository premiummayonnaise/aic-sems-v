v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {*VDD or Vsupply = 1V for 10uA} 360 -100 0 0 0.4 0.4 {}
N 190 -150 210 -150 {lab=#net1}
N 190 -200 190 -150 {lab=#net1}
N 190 -200 250 -200 {lab=#net1}
N 250 -200 250 -180 {lab=#net1}
N 250 -210 250 -200 {lab=#net1}
N 250 -280 250 -270 {lab=#net1}
N 250 -270 250 -210 {lab=#net1}
N 250 -150 330 -150 {lab=VSS}
N 250 -120 250 -80 {lab=VSS}
N 250 -420 360 -420 {lab=#net2}
N 360 -480 360 -420 {lab=#net2}
N 360 -480 480 -480 {lab=#net2}
N 480 -420 590 -420 {lab=#net3}
N 590 -480 590 -420 {lab=#net3}
N 590 -480 680 -480 {lab=#net3}
N 680 -420 800 -420 {lab=#net4}
N 800 -480 800 -420 {lab=#net4}
N 800 -480 900 -480 {lab=#net4}
N 900 -420 1030 -420 {lab=#net5}
N 1030 -480 1030 -420 {lab=#net5}
N 1030 -480 1120 -480 {lab=#net5}
N 1120 -420 1120 -350 {lab=#net6}
N 900 -350 1020 -350 {lab=#net7}
N 800 -290 900 -290 {lab=#net8}
N 800 -350 800 -290 {lab=#net8}
N 680 -350 800 -350 {lab=#net8}
N 1030 -290 1120 -290 {lab=#net7}
N 1030 -350 1030 -290 {lab=#net7}
N 1020 -350 1030 -350 {lab=#net7}
N 590 -290 680 -290 {lab=#net9}
N 590 -350 590 -290 {lab=#net9}
N 480 -350 590 -350 {lab=#net9}
N 360 -290 480 -290 {lab=#net10}
N 360 -350 360 -290 {lab=#net10}
N 250 -290 250 -280 {lab=#net1}
N 250 -350 360 -350 {lab=#net10}
C {symbols/nfet_03v3.sym} 230 -150 0 0 {name=M1
L=2u
W=37.5u
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
C {lab_pin.sym} 330 -150 0 1 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 250 -80 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {symbols/ppolyf_u_1k.sym} 250 -320 0 0 {name=R1
W=4e-6
L=100e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_pin.sym} 230 -320 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 250 -480 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 250 -240 0 1 {name=p4 sig_type=std_logic lab=VBIAS}
C {iopin.sym} 440 -220 0 0 {name=p6 lab=VDD}
C {iopin.sym} 440 -190 0 0 {name=p7 lab=VSS}
C {opin.sym} 440 -160 0 0 {name=p8 lab=VBIAS}
C {symbols/ppolyf_u_1k.sym} 250 -450 0 0 {name=R2
W=4e-6
L=100e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 480 -450 0 0 {name=R3
W=4e-6
L=100e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 480 -320 0 0 {name=R4
W=4e-6
L=100e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 680 -450 0 0 {name=R5
W=4e-6
L=100e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 680 -320 0 0 {name=R6
W=4e-6
L=100e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 900 -450 0 0 {name=R7
W=4e-6
L=100e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 900 -320 0 0 {name=R8
W=4e-6
L=100e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 1120 -450 0 0 {name=R9
W=4e-6
L=100e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 1120 -320 0 0 {name=R10
W=4e-6
L=100e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_pin.sym} 230 -450 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 460 -450 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 460 -320 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 660 -450 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 660 -320 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 880 -450 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 880 -320 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1100 -450 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1100 -320 0 0 {name=p17 sig_type=std_logic lab=VSS}
