use zk_ai::{model::Model, inference::InferenceEngine};

#[test]
fn test_inference_run() {
    let model = Model::new("linear_regression").unwrap();
    let engine = InferenceEngine::new(model);

    let input = vec![1.0, 2.0, 3.0];
    let output = engine.run(&input);

    // Dummy assertion: output ada isinya
    assert!(!output.is_empty());
}

#[test]
fn test_inference_output_values() {
    let model = Model::new("linear_regression").unwrap();
    let engine = InferenceEngine::new(model);

    let input = vec![0.5, 1.0, 1.5];
    let output = engine.run(&input);

    // Contoh check nilai minimal
    for val in output {
        assert!(val >= 0.0);
    }
}
