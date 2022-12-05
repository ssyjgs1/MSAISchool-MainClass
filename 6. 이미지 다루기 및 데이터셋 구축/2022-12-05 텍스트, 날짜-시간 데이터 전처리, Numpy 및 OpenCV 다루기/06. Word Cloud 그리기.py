# Word Cloud 그리기
import webbrowser
import pytagcloud
import pygame

tag = [('cat',120),('dog',50),('python',110),('java',70),('DB',10)]

# 태그화
tag_list = pytagcloud.make_tags(tag, maxsize=50)
pytagcloud.create_tag_image(tag_list,"Word_Cloud.jpg",size=(1920,1080), rectangular=False)
webbrowser.open('Word_Cloud.jpg')