import time
import onnxruntime as ort
import numpy as np

# Linear Regression benchmark
linear_model = "examples/linear_regression/model.onnx"
sess = ort.InferenceSession(linear_model)

inputs = np.random.rand(3,).astype(np.float32)
start = time.time()
output = sess.run(None, {"x": inputs, "weights": inputs})
end = time.time()
print(f"Linear Regression inference time: {end - start:.6f}s")

# Sentiment Classifier benchmark
sentiment_model = "examples/sentiment_classifier/model.onnx"
sess2 = ort.InferenceSession(sentiment_model)

sample_text = np.random.rand(10,).astype(np.float32)  # dummy input
start2 = time.time()
output2 = sess2.run(None, {"input": sample_text})
end2 = time.time()
print(f"Sentiment Classifier inference time: {end2 - start2:.6f}s")
