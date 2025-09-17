#!/bin/bash
set -e

for circuit in ../circuits/*.circom; do
    circom "$circuit" --r1cs --wasm --sym
done
