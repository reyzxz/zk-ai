#!/bin/bash
cargo build
cargo test

echo "Running linear regression demo..."
python3 run_model.py data.csv model.onnx
