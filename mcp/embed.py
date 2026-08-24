"""
Shared embedder — used by BOTH the build-time indexer and the runtime server so the
corpus vectors and query vectors always live in the same space.

model2vec static embeddings: no torch, no onnxruntime, a few-MB model, thousands of
docs/sec on CPU. `potion-retrieval-32M` is the strongest static *retrieval* model.
Vectors are L2-normalized so sqlite-vec's L2 distance ranks identically to cosine.
"""
import numpy as np

MODEL_NAME = "minishlab/potion-retrieval-32M"
MODEL_DIM = 512

_model = None


def get_model():
    global _model
    if _model is None:
        from model2vec import StaticModel
        _model = StaticModel.from_pretrained(MODEL_NAME)
    return _model


def embed(texts):
    """Return an (N, MODEL_DIM) float32 array of unit-normalized embeddings."""
    v = np.asarray(get_model().encode(list(texts)), dtype=np.float32)
    if v.ndim == 1:
        v = v[None, :]
    norms = np.linalg.norm(v, axis=1, keepdims=True)
    norms[norms == 0] = 1.0
    return v / norms


def embed_one(text):
    return embed([text])[0]
