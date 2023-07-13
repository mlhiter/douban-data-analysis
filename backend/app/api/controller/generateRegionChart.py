import pandas as pd
from pyecharts import options as opts
from app.utils.washData import washData


def generate_region_chart(data):
    data = washData(data)
    country_all = data['制片国家'].str.replace(",", " ").str.split(" ", expand=True)
    country_all = country_all.apply(pd.value_counts).fillna(0).astype("int")
    country_all['count'] = country_all.apply(lambda x: x.sum(), axis=1)
    country_all.sort_values('count', ascending=False)
    data1 = country_all['count'].sort_values(ascending=False).head(10)
    country_counts = data1
    country_counts.columns = ['制片国家', '数量']
    country_counts = country_counts.sort_values(ascending=True)
    from pyecharts.charts import Bar

    bar = (
        Bar()
        .add_xaxis(list(country_counts.index)[-10:])
        .add_yaxis('地区上映数量', country_counts.values.tolist()[-10:])
        .reversal_axis()
        .set_global_opts(
            title_opts=opts.TitleOpts(title='地区上映电影数量Top10'),
            yaxis_opts=opts.AxisOpts(name='国家'),
            xaxis_opts=opts.AxisOpts(name='上映数量'),
        )
        .set_series_opts(label_opts=opts.LabelOpts(position="right"))
    )
    chart_html = bar.render_embed()
    return chart_html
