# zk-ai

Zero-Knowledge Machine Learning playground 🚀  
Prove and verify ML inference without revealing model weights or private inputs.

---

## ✨ Features
- **Circuits**: Build and compile zk-SNARK/zk-STARK circuits (Circom, Halo2, Cairo).
- **Proofs**: Generate & verify proofs for ML model commitments and inference.
- **Rust API**: Host bindings to load models, run inference, and produce proofs.
- **Examples**: Ready-to-run demos (linear regression, sentiment classifier).
- **Benchmarks**: Measure proof size and runtime performance.
- **Docs**: Architecture overview and zkML basics.

---

## 📂 Repository Layout

```plaintext
zk-ai/
├─ .github/workflows/ci.yml      # CI pipeline (build & test)
├─ circuits/                     # ZK circuits
├─ src/                          # Rust bindings (prove/verify API)
├─ examples/                     # Demo models & data
├─ tests/                        # Unit tests
├─ benchmarks/                   # Performance measurement
├─ docs/                         # Documentation
├─ scripts/                      # Helper scripts
├─ Cargo.toml                    # Rust config
├─ README.md
└─ LICENSE
