v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 240 -350 260 -350 {lab=VBIAS}
N 240 -120 260 -120 {lab=VBIAS}
N 480 -120 510 -120 {lab=VBIAS}
N 480 -350 510 -350 {lab=VBIAS}
N 730 -220 750 -220 {lab=VBIAS}
N 790 -220 840 -220 {lab=VSS}
N 790 -190 790 -150 {lab=VSS}
N 550 -350 600 -350 {lab=VSS}
N 550 -320 550 -290 {lab=VSS}
N 300 -320 300 -290 {lab=VSS}
N 300 -350 340 -350 {lab=VSS}
N 300 -120 340 -120 {lab=VSS}
N 300 -90 300 -50 {lab=VSS}
N 550 -120 600 -120 {lab=VSS}
N 550 -90 550 -50 {lab=VSS}
N 790 -300 790 -250 {lab=I5}
N 550 -200 550 -150 {lab=I4}
N 300 -200 300 -150 {lab=I3}
N 300 -430 300 -380 {lab=I1}
N 550 -430 550 -380 {lab=I2}
C {symbols/nfet_03v3.sym} 280 -350 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} 530 -350 0 0 {name=M2
L=2u
W=37.5u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 280 -120 0 0 {name=M3
L=2u
W=37.5u
nf=1
m=3
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 530 -120 0 0 {name=M4
L=2u
W=37.5u
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
C {symbols/nfet_03v3.sym} 770 -220 0 0 {name=M5
L=2u
W=37.5u
nf=1
m=5
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 560 -520 0 1 {name=p1 sig_type=std_logic lab=VBIAS}
C {lab_pin.sym} 560 -540 0 1 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 560 -560 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 240 -350 0 0 {name=p4 sig_type=std_logic lab=VBIAS}
C {lab_pin.sym} 480 -350 0 0 {name=p5 sig_type=std_logic lab=VBIAS}
C {lab_pin.sym} 480 -120 0 0 {name=p6 sig_type=std_logic lab=VBIAS}
C {lab_pin.sym} 240 -120 0 0 {name=p7 sig_type=std_logic lab=VBIAS}
C {lab_pin.sym} 730 -220 0 0 {name=p8 sig_type=std_logic lab=VBIAS}
C {lab_pin.sym} 600 -350 0 1 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 340 -350 0 1 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 340 -120 0 1 {name=p11 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 600 -120 0 1 {name=p12 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 840 -220 0 1 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 550 -290 0 1 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 300 -290 0 1 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 300 -50 0 1 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 550 -50 0 1 {name=p17 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 790 -150 0 1 {name=p18 sig_type=std_logic lab=VSS}
C {opin.sym} 550 -200 0 0 {name=p19 lab=I4}
C {opin.sym} 300 -200 0 0 {name=p20 lab=I3}
C {opin.sym} 300 -430 0 0 {name=p21 lab=I1}
C {opin.sym} 550 -430 0 0 {name=p22 lab=I2}
C {opin.sym} 790 -300 0 0 {name=p23 lab=I5}
C {iopin.sym} 730 -560 0 0 {name=p24 lab=VDD}
C {iopin.sym} 730 -530 0 0 {name=p25 lab=VSS}
C {opin.sym} 730 -500 0 0 {name=p26 lab=VBIAS}
C {/foss/designs/aic-sems-v/w1_advanced-foundation/w1_task/w1_current_mirror/n-bias-gen.sym} 410 -540 0 0 {name=x1}
