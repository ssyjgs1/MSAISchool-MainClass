import numpy as np
from sklearn.preprocessing import OrdinalEncoder

features = np.array([["low",10],["high",50],["medium",3]])
ordinal_encoding = OrdinalEncoder()
ordinal_encoding.fit_transform(features)
ordinal_encoding_data = ordinal_encoding.categories_

print("ordinal_encoding.categories_", ordinal_encoding_data)