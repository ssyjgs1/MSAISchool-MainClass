import numpy as np
import pandas as pd
from sklearn import tree
from sklearn.model_selection import train_test_split

url = "https://raw.githubusercontent.com/mGalarnyk/Tutorial_Data/master/King_County/kingCountyHouseData.csv"
df = pd.read_csv(url)
columns = ['bedrooms','bathrooms', 'sqft_living', 'sqft_lot', 'floors', 'price']
features = ['bedrooms','bathrooms', 'sqft_living', 'sqft_lot', 'floors']
df = df.loc[:, columns]
print(df.head(10))

X = df.loc[:, features] # image
y = df.loc[:, ['price']] # label | price를 라벨로 지정
print(X.shape)
print(y.shape)

X_train, X_test, y_train, y_test = train_test_split(X, y, random_state=0, train_size=0.75)

print(X_train.shape, X_test.shape)
print(y_train.shape, y_test.shape)