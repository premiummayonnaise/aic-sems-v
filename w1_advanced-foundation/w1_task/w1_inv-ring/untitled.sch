v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 260 -330 260 -310 {lab=VDD}
N 260 -280 270 -280 {lab=VDD}
N 270 -320 270 -280 {lab=VDD}
N 260 -320 270 -320 {lab=VDD}
N 260 -130 260 -110 {lab=VSS}
N 260 -160 270 -160 {lab=VSS}
N 270 -160 270 -120 {lab=VSS}
N 260 -120 270 -120 {lab=VSS}
N 220 -280 220 -160 {lab=IN}
N 260 -250 260 -190 {lab=OUT}
C {symbols/pfet_03v3.sym} 240 -160 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} 240 -280 0 0 {name=M2
L=0.28u
W=0.66u
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
C {iopin.sym} 260 -330 0 0 {name=p1 lab=VDD}
C {iopin.sym} 260 -110 0 0 {name=p2 lab=VSS}
C {ipin.sym} 220 -220 0 0 {name=p3 lab=IN}
C {opin.sym} 260 -220 0 0 {name=p4 lab=OUT}
