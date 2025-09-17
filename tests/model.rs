use zk_ai::model::Model;

#[test]
fn test_model_load() {
    let model = Model::new("linear_regression");
    assert!(model.is_ok());
}

#[test]
fn test_model_hash() {
    let model = Model::new("linear_regression").unwrap();
    let hash = model.hash();
    assert!(!hash.is_empty());
}
