from fastapi import FastAPI
from fastapi.responses import HTMLResponse

from app.db.getData import get_data_from_mysql
from app.api.controller.generateRegionChart import generate_region_chart
from app.api.controller.generateRemarkChart import generate_remark_chart
from app.api.controller.generateTimeLocationChart import generate_timeSpan_chart

app = FastAPI()

# 如果没有header = None，会自动将第一行设置为表头哦
data = get_data_from_mysql()


@app.get("/region", response_class=HTMLResponse)
async def return_region():
    return generate_region_chart(data)


@app.get("/remark", response_class=HTMLResponse)
async def return_remark():
    return generate_remark_chart(data)


@app.get("/time-span", response_class=HTMLResponse)
async def return_timeSpan():
    return generate_timeSpan_chart(data)
