import pandas as pd
from pyecharts.charts import Bar
from pyecharts import options as opts


def generate_timeSpan_chart(data):
    data['时长'] = data['时长'].astype(str)  # 将列转换为字符串类型
    movie_duration_split = data['时长'].str.replace("\', \'", "~").str.split("~", expand=True).fillna(0)
    movie_duration_split = movie_duration_split.replace(regex={'分钟.*': ''})
    data['时长'] = movie_duration_split[0].astype("int")
    data['时长'].head()

    bins = [0, 80, 100, 120, 140, 160, 180, 240]
    result = pd.cut(data.时长, bins).value_counts()
    y = []
    for column, count in result.items():
        y.append(count)
    bar = (
        Bar()
        .add_xaxis(['(100,120]', '(120,140]', '(80,100]', '(140,160]', '(160,180]', '(180,240]', '(0,80]'])
        .add_yaxis('数量', y, bar_width='40%')
        .set_global_opts(
            title_opts=opts.TitleOpts(title='电影时长分布'),
            yaxis_opts=opts.AxisOpts(name='数量'),
            xaxis_opts=opts.AxisOpts(name='时长'),
            datazoom_opts=[opts.DataZoomOpts(type_='slider', range_start=0, range_end=100)],
        )
        .set_series_opts(label_opts=opts.LabelOpts(position="top"))
    )
    chart_html = bar.render_embed()
    return chart_html
