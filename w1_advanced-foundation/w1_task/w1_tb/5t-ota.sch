v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 370 -270 620 -270 {lab=VSS}
N 290 -270 330 -270 {lab=VP}
N 660 -270 700 -270 {lab=VN}
N 370 -240 370 -210 {lab=#net1}
N 370 -210 620 -210 {lab=#net1}
N 620 -240 620 -210 {lab=#net1}
N 410 -430 580 -430 {lab=#net2}
N 370 -400 370 -300 {lab=#net2}
N 620 -400 620 -300 {lab=OUT}
N 370 -350 500 -350 {lab=#net2}
N 500 -430 500 -350 {lab=#net2}
N 370 -460 620 -460 {lab=VDD}
N 370 -460 370 -430 {lab=VDD}
N 620 -350 680 -350 {lab=OUT}
N 620 -460 620 -430 {lab=VDD}
N 500 -210 500 -140 {lab=#net1}
N 300 -110 460 -110 {lab=IBIAS}
N 260 -220 260 -140 {lab=IBIAS}
N 260 -180 370 -180 {lab=IBIAS}
N 370 -180 370 -110 {lab=IBIAS}
N 260 -80 260 -50 {lab=VSS}
N 500 -80 500 -50 {lab=VSS}
N 500 -110 500 -80 {lab=VSS}
N 260 -110 260 -80 {lab=VSS}
N 500 -480 500 -460 {lab=VDD}
C {symbols/nfet_03v3.sym} 640 -270 0 1 {name=M1
L=2u
W=83.875u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 350 -270 0 0 {name=M2
L=2u
W=83.875u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 290 -270 0 0 {name=p1 sig_type=std_logic lab=VP}
C {lab_pin.sym} 700 -270 0 1 {name=p2 sig_type=std_logic lab=VN}
C {symbols/pfet_03v3.sym} 390 -430 0 1 {name=M3
L=2u
W=55u
nf=1
m=32
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 600 -430 0 0 {name=M4
L=2u
W=55u
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
C {lab_pin.sym} 680 -350 0 1 {name=p3 sig_type=std_logic lab=OUT}
C {lab_pin.sym} 500 -270 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {symbols/nfet_03v3.sym} 480 -110 0 0 {name=M5
L=2u
W=67.67u
nf=1
m=32
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 280 -110 0 1 {name=M6
L=2u
W=40u
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
C {lab_pin.sym} 500 -50 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 260 -50 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 260 -220 0 1 {name=p7 sig_type=std_logic lab=IBIAS}
C {lab_pin.sym} 500 -480 0 1 {name=p8 sig_type=std_logic lab=VDD}
C {iopin.sym} 920 -410 0 0 {name=p9 lab=VDD}
C {iopin.sym} 920 -380 0 0 {name=p10 lab=VSS}
C {ipin.sym} 940 -330 0 0 {name=p11 lab=VP}
C {ipin.sym} 940 -290 0 0 {name=p12 lab=VN}
C {ipin.sym} 940 -250 0 0 {name=p13 lab=IBIAS}
C {opin.sym} 920 -210 0 0 {name=p14 lab=OUT}
