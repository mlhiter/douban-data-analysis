# @author 李晨洋
# @date 2023/7/12 11:26
# @description 先列表爬取电影详细链接，然后进入每个电影爬取相应信息
import re
import requests
import csv

from bs4 import BeautifulSoup


def request_page(params_url):
    header = {
        'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) '
                      'Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62'}
    resp = requests.get(params_url, headers=header)
    resp.encoding = 'utf-8'
    return_page = resp.text
    resp.close()  # 早点关闭请求
    return return_page


for i in range(0, 250, 25):
    url = r"https://movie.douban.com/top250?start=%d" % i
    page_content = request_page(url)

    obj = re.compile(
        r'<li>.*?<div class="hd">.*?<a href="(?P<movie_url>.*?)" class="">.*?<span class="title">(?P<name>.*?)</span>',
        re.S)
    result = obj.finditer(page_content)
    # 电影-url映射关系存入文件
    with open('name-url.csv', mode='w', newline='', encoding='utf-8-sig') as f:
        csvwriter = csv.writer(f)
        for it in result:
            temp_dict = it.groupdict()
            csvwriter.writerow(temp_dict.values())
    # 爬取电影详细信息
    # 爬取内容：电影的ID，名称、上映时间、导演、编剧、时长、语言、评论数量、豆瓣总评分、国家/地区
    for it in result:
        movie_url = it.group('movie_url')
        name = it.group('name')
        page_content = request_page(movie_url)

        page = BeautifulSoup(page_content, "html.parser")
        info = page.find("div", id="info")
        # 获取导演
        directors = info.find('span', string='导演').find_next_sibling('span').find_all('a')
        director_names = [director.get_text(strip=True).strip() for director in directors]
        print('导演:', ', '.join(director_names))

        # 获取编剧
        writers = info.find('span', string='编剧').find_next_sibling('span').find_all('a')
        writer_names = [writer.get_text(strip=True).strip() for writer in writers]
        print('导演:', ', '.join(writer_names))

        # 获取主演
        actors = info.find('span', class_='actor').find_all('a')
        actor_names = [actor.get_text(strip=True).strip() for actor in actors]
        print('主演:', ', '.join(actor_names))

        # 获取类型
        genres = info.find('span', string='类型:').find_next_siblings('span', property='v:genre')
        genre_names = [genre.get_text(strip=True).strip() for genre in genres]
        print('类型:', ', '.join(genre_names))

        # 获取制片国家/地区
        country = info.find('span', string='制片国家/地区:').next_sibling.get_text(strip=True)
        print('制片国家/地区:', country)

        # 获取语言
        language = info.find('span', string='语言:').next_sibling.get_text(strip=True)
        print('语言:', language)

        # 获取上映日期
        release_dates = info.find_all('span', property='v:initialReleaseDate')
        release_date_values = [date['content'].strip() for date in release_dates]
        print('上映日期:', ', '.join(release_date_values))

        # 获取片长
        runtime = info.find('span', property='v:runtime').get_text(strip=True)
        print('片长:', runtime)

print("over!")
