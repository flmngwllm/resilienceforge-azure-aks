from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "App front page"}

@app.get("/health/live")
def live():
    return {"status": "alive"}

@app.get("/health/ready")
def ready():
    return {"status": "ready"}

"""
@app.get("/secret-check")
def secrets():
    return KEY_VAULT_URL, SECRET_NAME
"""