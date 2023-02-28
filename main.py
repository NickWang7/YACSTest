from enum import Enum

from fastapi import FastAPI


class ModelName(str, Enum):
    gittens = "Gittens"
    yener = "Yener"
    cutler = "Cutler"


app = FastAPI()


@app.get("/Professors/{model_name}")
async def get_model(model_name: ModelName):
    if model_name is ModelName.gittens:
        return {"model_name": model_name, "message": "I don't actually like FOCS that much"}
    if model_name.value == "Yener":
        return {"model_name": model_name, "message": "PSOFT is amazing"}
    if model_name is ModelName.cutler:
        return {"model_name": model_name, "message": "I hate all my students and DS. I hope they fail."}

    return {"model_name": model_name, "message": "I AM NOT A PROFESSOR HERE AT RPI"}