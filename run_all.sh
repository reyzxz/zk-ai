#!/bin/bash
set -e

cargo build
cargo test
./scripts/compile_circuits.sh

cd examples/linear_regression
./run_demo.sh
cd ../sentiment_classifier
./run_demo.sh
