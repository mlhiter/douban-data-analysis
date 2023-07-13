import numpy as np
import pandas as pd


def washData(data):
    # print(data.isnull().any())  # 查看是否有缺失值数据
    data.duplicated().sum()  # 查看是否有重复值数据
    data.columns = ['排名', '片名', '评分', '评价人数', '制片国家',
                    '类型', '上映日期', '时长', '影片链接']
    data.to_csv('movie(washed).csv')
    return data
