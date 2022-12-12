# selenium v4.2.0으로 진행, Chromedrver v108.0.5359.71으로 진행
# 필요한 모듈 import
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
import time # 이미지 다운로드 시간을 보여줌
import os # 경로와 관련됨
import urllib.request # 각 이미지들의 URL을 불러들여 이미지를 저장하게 함

'''
keyword 입력, chromedriver 실행
'''
options = webdriver.ChromeOptions()
options.add_experimental_option("detach", True)

keywords = "사과"
chromedriver_path = "./chromedriver.exe"
driver = webdriver.Chrome(chromedriver_path)
driver.implicitly_wait(3)
driver.get("https://www.google.co.kr/imghp?h1=ko")

"""
keyword 입력 selenium 실행
"""
# <input class="gLFyf" jsaction="paste:puy29d;" maxlength="2048" name="q" type="text" aria-autocomplete="both" aria-haspopup="false" autocapitalize="off" autocomplete="off" autocorrect="off" autofocus="" role="combobox" spellcheck="false" title="검색" value="" aria-label="검색" data-ved="0ahUKEwjrpa73__L7AhVbjVYBHc4zCRsQ39UDCAY">
# elem = driver.find_element_by_name("q")
# elem.send_keys(keywords)
# elem.send_keys(Keys.RETURN) # RETURN : (검색)버튼을 누른 것처럼 작동함

"""
xpath를 이용한 selenium 실행
"""
# input --> /html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input
# button --> /html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/button
keyword = driver.find_element_by_xpath('/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input')
keyword.send_keys(keywords)
driver.find_element_by_xpath('/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/button').click() # click() 함수로 버튼을 누른 것처럼 작동

"""
스크롤
"""
print(keywords + '스크롤 중......')
elem = driver.find_element_by_tag_name('body')
for i in range(60) :
    elem.send_keys(Keys.PAGE_DOWN)
    time.sleep(0.2)

try : 
    # //*[@id="islmp"]/div/div/div/div[2]/div[1]/div[2]/div[2]/input
    driver.find_element_by_xpath('//*[@id="islmp"]/div/div/div/div[2]/div[1]/div[2]/div[2]/input').click()
    for i in range(60) :
        elem.send_keys(Keys.PAGE_DOWN)
        time.sleep(0.2)

except : 
    pass

while True:
    pass