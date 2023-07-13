import pandas as pd
from fastapi import FastAPI
from fastapi.responses import HTMLResponse

from app.utils.drawRegion import generate_region_chart
from app.utils.drawRemark import generate_remark_chart
from app.utils.drawTimeLocation import generate_timeSpan_chart

app = FastAPI()

# 如果没有header = None，会自动将第一行设置为表头哦
data = pd.read_table('./data/movie.csv', sep=',', header=None)


@app.get("/region", response_class=HTMLResponse)
async def return_region():
    return generate_region_chart(data)


@app.get("/remark", response_class=HTMLResponse)
async def return_remark():
    return generate_remark_chart(data)


@app.get("/time-span", response_class=HTMLResponse)
async def return_timeSpan():
    return generate_timeSpan_chart(data)
