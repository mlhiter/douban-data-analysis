from pyecharts import options as opts
from pyecharts.charts import Bar


def generate_remark_chart(data):
    df = data.sort_values(by='评价人数', ascending=True)
    df = data.sort_values(by='评价人数', ascending=True)
    bar = (
        Bar()
        .add_xaxis(df['片名'].values.tolist()[-10:])
        .add_yaxis('评价人数', df['评价人数'].values.tolist()[-10:])
        .set_global_opts(
            title_opts=opts.TitleOpts(title='电影评价人数Top10'),
            yaxis_opts=opts.AxisOpts(name='人数'),
            xaxis_opts=opts.AxisOpts(name='片名', axislabel_opts=opts.LabelOpts(interval=0, rotate=40)),
        )
        .set_series_opts(label_opts=opts.LabelOpts(position="top"))
    )
    chart_html = bar.render_embed()
    return chart_html
