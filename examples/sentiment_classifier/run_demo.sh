#!/bin/bash
cargo build
cargo test

echo "Running sentiment classifier demo..."
python3 run_model.py data.csv model.onnx
