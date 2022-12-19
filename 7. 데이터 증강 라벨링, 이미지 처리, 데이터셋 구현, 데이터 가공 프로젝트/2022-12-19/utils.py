import os
import torch
import torch.nn as nn



# train loop


# val loop


# save model
def save_model(model, save_dir, file_name='last.pt') :
    os.makedirs(save_dir, exist_ok=True)
    output_path = os.path.join(save_dir, file_name)
    if isinstance(model, nn.DataParallel):
        print("multi GPU saved")
        torch.save(model.module.state_dict(), output_path)
    else:
        print("single GPU saved")
        torch.save(model.state_dict(), output_path)
        


# 평가 함수
def calculate_acc(output, target) : # output : 모델에서 예측한 값, target : 정답
    output = torch.sigmoid(output) >= 0.5
    target = target == 1.0
    return torch.true_divide((output == target).sum(dim=0), output.size(0)).item()