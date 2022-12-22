import cv2
import random
import albumentations as A

# define a function to visualize an image
def visualize(image) :
    cv2.imshow('visualization', image)
    cv2.waitKey(0)

# load a image from disk
image = cv2.imread('./ressha.png')

# visualize the original image
# visualize(image)

# random rain
transform = A.Compose([
    A.RandomRain(brightness_coefficient=0.7, drop_width=1, blur_value=3, p=1),
    A.RandomSnow(brightness_coeff=2.2 ,snow_point_lower=0.3, snow_point_upper=0.3, p=1),
    A.RandomSunFlare(flare_roi=(0,0,1,0.5), angle_lower=0.3, p=1),
    A.RandomShadow(num_shadows_lower=3, num_shadows_upper=3, shadow_dimension=5, shadow_roi=(0,0.5,1,1), p=1),
    A.RandomFog(fog_coef_lower=0.7, fog_coef_upper=0.8, alpha_coef=0.1, p=1)
])

transformed = transform(image=image)
visualize(transformed["image"])