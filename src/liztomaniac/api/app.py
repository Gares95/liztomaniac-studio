from fastapi import FastAPI

app = FastAPI(title="Liztomaniac Studio")


@app.get("/health")
def health() -> dict[str, str]:
    return {"status": "ok"}
