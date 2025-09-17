include "hashes/poseidon.circom";

template ModelCommit(n) {
    signal input data[n];
    signal output hash;

    component hasher = Poseidon(n);
    for (var i = 0; i < n; i++) {
        hasher.inputs[i] <== data[i];
    }
    hash <== hasher.out;
}

component main = ModelCommit(3);
