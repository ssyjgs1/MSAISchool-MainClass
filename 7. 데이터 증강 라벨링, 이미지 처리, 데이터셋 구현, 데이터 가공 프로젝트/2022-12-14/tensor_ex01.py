import torch
import numpy as np

data = [[1,2],[3,4]]
x_data = torch.tensor(data)
print(x_data)
print(type(x_data))
print(x_data.shape)

x_ones = torch.ones_like(x_data)
print(f"Ones Tensor >>> \n", x_ones)

x_rand = torch.rand_like(x_data, dtype=torch.float)
print(x_rand)

shape = (3, 3)
randn_tensor = torch.rand(shape)
ones_tensor = torch.ones(shape)
zeros_tensor = torch.zeros(shape)
print(f"Random Tensor >>> \n, {randn_tensor} \n")
print(f"Ones Tensor >>> \n, {ones_tensor} \n")
print(f"Zeros Tensor >>> \n, {zeros_tensor} \n")

tensor = torch.rand(3, 4)
print(f"Shape of tensor : {tensor.shape}")
print(f"Datatype of tensor : {tensor.dtype}")
print(f"Device tensor is sotred on : {tensor.device}")

if torch.cuda.is_available() :
    tensor = tensor.to('cuda')
else : 
    tensor = tensor.to('cpu')
print(f"Device tensor is stored on : {tensor.device}")

tensor = torch.ones(4, 4)
tensor[:,1] = 3
print(tensor)

t1 = torch.cat([tensor, tensor, tensor], dim=1)
print(t1)

print(tensor * tensor)

print(tensor)
print("두 텐서 간의 행렬 곱은 >>> \n", tensor.matmul(tensor.T))
print("두 텐서 간의 행렬 곱은 >>> \n", tensor @ tensor.T)

tensor.add_(6)
print(tensor)

### tensor --> numpy 배열로 변환
t = torch.ones(5)
print("변환하기 전 tensor >>>", t)
n = t.numpy()
print("변환하고 후 numpy >>>", n)

t.add_(1)
n = t.numpy()
print(t)
print(n)

n = np.ones(5)
t = torch.from_numpy(n)
print(n)
print(t)
np.add(n, 1, out=n)
print(n)
print(t)

### view
# t = np.array([[[0,1,2],[3,4,5]], [[6,7,8],[9,10,11]]])
# ft = torch.FloatTensor(t)
# print(ft.shape)
# print(ft)
# print(ft.view([-1,3])) # ft의 tensor를 (?,3)으로 변경
# print(ft.view([-1,3]).shape)

# print(ft.view([-1,1,3]))
# print(ft.view([-1,1,3]).shape)

### squeeze
# 3 x 1
# ft = torch.FloatTensor([[0], [1], [2]])
# print(ft)
# print(ft.shape)
# print(ft.squeeze())
# print(ft.squeeze().shape)

### unsqueeze
ft = torch.FloatTensor([0, 1, 2])
print(ft)
print(ft.shape)
print(ft.unsqueeze(0))
print(ft.unsqueeze(0).shape)
print(ft.view(1,-1))
print(ft.view(1,-1).shape)


