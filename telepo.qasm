OPENQASM 2.0;
include "qelib1.inc";

qreg q[3];
creg c0[1];
creg c1[1];
creg c2[1];

ry(pi/3) q[0];
barrier q[0],q[1],q[2];

h q[1];
cx q[1],q[2];
barrier q[0],q[1],q[2];

cx q[0],q[1];
h q[0];
barrier q[0],q[1],q[2];

cz q[0],q[2];
cx q[1],q[2];

measure q[2] -> c0[0];