#!/bin/bash
set -e

for r1cs in ../circuits/*.r1cs; do
    snarkjs groth16 setup "$r1cs" pot12_final.ptau "${r1cs%.r1cs}_zkey"
done
