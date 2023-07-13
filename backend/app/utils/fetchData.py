"""爬取数据"""
import requests
from bs4 import BeautifulSoup
import csv


# 获取一级页面
def get_one_page(url):
    # 伪造request头部
    headDict = {
        "User-Agent": 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36',
        "Accept": 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7',
        "Cookie": 'bid=gOl6jiJfNW4; gr_user_id=34d0d92a-b4eb-4357-b23f-82354c572bc8; __gads=ID=4ce09ff204dfa886-22ce42162cd9005e:T=1672969195:RT=1672969195:S=ALNI_MbW5x-Ixj0LjQ5RZyBkU-HzoydiHA; ll="118137"; __yadk_uid=fjMXB7KZf3lx9nIT0v9XSg1DFIa5DufI; __gpi=UID=00000b9ebb84ba2e:T=1672969195:RT=1675179370:S=ALNI_Ma4KHimFKQkgT0q4EE83Wh_AukxIA; _vwo_uuid_v2=D7D35DD97D46A1E703253032CF4DBE912|71ec56a3380b4f74d9ff038bef5f8d7d; _pk_id.100001.4cf6=a9f8e9edee71fb5c.1675179369.; viewed="1070246_5362856_10546125"; douban-fav-remind=1; _pk_ref.100001.4cf6=%5B%22%22%2C%22%22%2C1689131552%2C%22https%3A%2F%2Flink.csdn.net%2F%3Ftarget%3Dhttps%3A%2F%2Fmovie.douban.com%2Ftop250%22%5D; _pk_ses.100001.4cf6=1; ap_v=0,6.0; __utma=30149280.1369667971.1672969195.1684405888.1689131553.7; __utmb=30149280.0.10.1689131553; __utmc=30149280; __utmz=30149280.1689131553.7.7.utmcsr=link.csdn.net|utmccn=(referral)|utmcmd=referral|utmcct=/; __utma=223695111.709629848.1675179369.1684121269.1689131553.4; __utmb=223695111.0.10.1689131553; __utmc=223695111; __utmz=223695111.1689131553.4.4.utmcsr=link.csdn.net|utmccn=(referral)|utmcmd=referral|utmcct=/; dbcl2="252719390:L2MHVLreqaM"; ck=2i18; push_noty_num=0; push_doumail_num=0'
    }

    r = requests.get(url, headers=headDict)
    r.encoding = r.apparent_encoding
    html = r.text
    return html


# 解析一级页面
def parse_one_page(html):
    soup = BeautifulSoup(html, 'html.parser')
    movie = soup.find("ol", class_='grid_view')
    erjilianjie = movie.find_all('li')
    # print(erjilianjie)
    for lianjie in erjilianjie:
        # 一级页面制片国家
        others = lianjie.find('div', class_='bd').find('p').text.strip('').split('\n')
        year_country = others[2].strip('').split('\xa0/\xa0')
        pro_country = year_country[1].replace(' ', ',')

        # 链接
        a = lianjie.find('a')
        erji = a['href']
        html = get_one_page(erji)

        soup = BeautifulSoup(html, 'html.parser')
        # 排名
        ranks = soup.select('#content > div.top250 > span.top250-no')[0].getText().strip()
        # 片名
        spans = soup.select('h1 span')
        movie_name1 = spans[0].get_text()
        movie_name = movie_name1.split(' ')[0]
        # print(movie_name)
        # 评分
        score = soup.select('#interest_sectl > div.rating_wrap.clearbox > div.rating_self.clearfix > strong')[
            0].getText().strip()
        # 评价人数
        sorce_people = soup.select(
            '#interest_sectl > div.rating_wrap.clearbox > div.rating_self.clearfix > div > div.rating_sum > a > span')[
            0].getText().strip()
        # info板块
        info = soup.find('div', id='info')
        # 电影类型
        movie_type = ''
        movie_types = info.find_all('span', property='v:genre')
        for i in movie_types:
            movie_type = movie_type + ',' + i.string
            movie_type = movie_type.lstrip(',')
        # 二级页面制片国家
        # pro_country = re.findall("<span class=\"pl\">制片国家/地区:</span>(.*)<br/>",str(info))
        # pro_country = ','.join(pro_country)
        # print(pro_country)
        # 上映日期
        up_time = ''
        up_times = info.find_all('span', property='v:initialReleaseDate')
        for i in up_times:
            up_time = up_time + "," + i.string
            up_time = up_time.lstrip(',')
        # 电影时长
        movie_time = ''
        movie_times = info.find_all('span', property='v:runtime')
        for i in movie_times:
            movie_time = movie_time + i.string

        # 将数据写入data，做迭代器储存数据
        data = {
            'id': ranks,
            'name': movie_name,
            'score': score,
            'votes': sorce_people,
            'country': pro_country,
            'type': movie_type,
            'date': up_time,
            'runtime': movie_time,
            'link': erji
        }
        yield data


# 写入文件
def write_to_file(content):
    file_name = '../../data/movie.csv'
    with open(file_name, 'a', newline='', encoding='utf-8') as f:
        writer = csv.writer(f)
        for i in content:
            writer.writerow(i.values())


if __name__ == "__main__":
    for i in range(10):
        urls = 'https://movie.douban.com/top250?start=' + str(i * 25) + '&filter='
        html = get_one_page(urls)
        parse_one_page(html)
        content = parse_one_page(html)
        write_to_file(content)
        print("写入第" + str(i) + "页数据成功")

    # # 调试函数
    url = 'https://movie.douban.com/top250'
    html = get_one_page(url)
    parse_one_page(html)
    content = parse_one_page(html)
