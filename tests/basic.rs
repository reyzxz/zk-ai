use zk_ai::{Model, InferenceEngine};

#[test]
fn test_linear_model() {
    let model = Model::new("linear");
    let engine = InferenceEngine::new(model);

    let input = vec![1.0, 2.0, 3.0];
    let output = engine.run(&input);

    assert!(output.len() > 0);
}
