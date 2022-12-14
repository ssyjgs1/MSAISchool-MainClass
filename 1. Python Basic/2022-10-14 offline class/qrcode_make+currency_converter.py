# -*- coding: utf-8 -*-
"""qrcode make+currency converter.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1ydO1_uOcUvl4aqRHwhAPdhA74-speAOP
"""

# pip install qrcode

import qrcode

qr_data = 'www.naver.com'
qr_image = qrcode.make(qr_data)

qr_image.save(qr_data + '.png')

import qrcode

with open('site_list.txt','r',encoding='UTF8') as f:    #with를 쓰면 블록이 닫히면 알아서 파일이 닫힘
    read_lines = f.readlines()

    for line in read_lines:
        line = line.strip()
        print(line)

        qr_data = line
        qr_image = qrcode.make(qr_data)

        qr_image.save(qr_data + '.png')

# pip install CurrencyConverter

from currency_converter import CurrencyConverter

cc = CurrencyConverter('http://www.ecb.europa.eu/stats/eurofxref/eurofxref.zip')

print(cc.convert(1,'USD','KRW'))

# pip install BeautifulSoup4

import requests
from bs4 import BeautifulSoup

def get_exchange_rate(target1, target2):
    headers = {
        'User-Agent' : 'Mozilla/5.0',
        'Content-Type' : 'text/html; charset=utf-8'
    }

    response = requests.get('https://kr.investing.com/currencies/{}-{}'.format(target1, target2), headers=headers)

    content = BeautifulSoup(response.content, 'html.parser')
    containers = content.find('span',{'data-test':'instrument-price-last'})

    print(containers.text)

get_exchange_rate('usd','krw')