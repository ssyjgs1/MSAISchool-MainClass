import os
import glob

image_path = "D:/dataset"
test = glob.glob(os.path.join(image_path, "*", "*", "*", "*.png"))
print(test)