# 다중 퍼셉트론을 이용한 XOR gate 구현
import numpy as np
# import ex07

def and_gate(x1,x2) :
    x = np.array([x1, x2])
    w = np.array([0.5, 0.5])
    b = -0.7

    temp = np.sum(w*x) + b
    if temp <= 0 : 
        return 0
    else : 
        return 1

def nand_gate(x1,x2) :
    x = np.array([x1, x2])
    w = np.array([-0.5, -0.5])
    b = 0.7
    
    temp = np.sum(w*x) + b
    if temp <= 0 : 
        return 0
    else : 
        return 1

def or_gate(x1,x2) :
    x = np.array([x1, x2])
    w = np.array([0.5, 0.5])
    b = -0.2

    temp = np.sum(w*x) + b
    if temp <= 0 : 
        return 0
    else : 
        return 1

def xor_gate(x1,x2) :
    s1 = nand_gate(x1, x2)
    s2 = or_gate(x1, x2)
    y = and_gate(s1, s2)
    """
    이전 예제 불러와서 쓴다면?(=기존 함수 호출해서 쓸 경우)
    s1 = ex07.nand_gate(x1, x2)
    s2 = ex07.or_gate(x1, x2)
    y = ex07.and_gate(s1, s2)
    """
    return y
    
print("AND gate 실험 >>>", and_gate(0, 0), and_gate(1, 0), and_gate(0, 1), and_gate(1, 1))
print("NAND gate 실험 >>>", nand_gate(0, 0), nand_gate(0, 1), nand_gate(1, 0), nand_gate(1, 1))
print("OR gate 실험 >>>", or_gate(0, 0), or_gate(0, 1), or_gate(1, 0), or_gate(1, 1))
print("XOR gate 실험 >>>", xor_gate(0, 0), xor_gate(0, 1), xor_gate(1, 0), xor_gate(1, 1))