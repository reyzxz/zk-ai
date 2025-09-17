
include "hashes/poseidon.circom";

signal input data[3];
signal output hash;

component hasher = Poseidon(3);
hasher.inputs[0] <== data[0];
hasher.inputs[1] <== data[1];
hasher.inputs[2] <== data[2];

hash <== hasher.out;
