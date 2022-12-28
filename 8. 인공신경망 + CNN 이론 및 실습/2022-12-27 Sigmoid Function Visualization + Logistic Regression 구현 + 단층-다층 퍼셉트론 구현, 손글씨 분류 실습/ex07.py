# 단층 퍼셉트론 이용하면 AND NAND OR 게이트 구현 가능

# AND 게이트 구현
# 2개의 입력 값이 모두 1인 경우, output=1로 출력, 아닌 경우는 0으로 출력

# AND 게이트를 만족하는 두 개의 가중치와 편향 값에는 무엇이 있을까?
# w1, w2, b라고 하면, (w 가중치, b 편향)
# 노가다식(0.5, 0.2, 0.1 )으로 하나씩 다 넣어보면 힘드므로 --> 결과 구해진 수치 [0.5, 0.5, -0.7]

def and_gate(x1, x2) :
    w1 = 0.5
    w2 = 0.5
    b = -0.7

    # w1x1 + w2x2 + ... + wnxn + b
    result = w1*x1 + w2*x2 + b # 단층 퍼셉트론 공식

    if result <= 0 :
        return 0
    else :
        return 1

print("AND gate 실험 >>>", and_gate(0, 0), and_gate(1, 0), and_gate(0, 1), and_gate(1, 1))


# NAND 게이트 구현
# 2개의 입력 값이 모두 1인 경우, output=0으로 출력, 아닌 경우는 1로 출력
def nand_gate(x1, x2) :
    w1 = -0.5
    w2 = -0.5
    b = 0.7

    # w1x1 + w2x2 + ... + wnxn + b
    result = w1*x1 + w2*x2 + b # 단층 퍼셉트론 공식

    if result <= 0 :
        return 0
    else :
        return 1

print("NAND gate 실험 >>>", nand_gate(0, 0), nand_gate(0, 1), nand_gate(1, 0), nand_gate(1, 1))


# OR 게이트 구현
def or_gate(x1, x2) :
    w1 = 0.5
    w2 = 0.5
    b = -0.2

    result = w1*x1 + w2*x2 + b # 단층 퍼셉트론 공식

    if result <= 0 :
        return 0
    else :
        return 1

print("OR gate 실험 >>>", or_gate(0, 0), or_gate(0, 1), or_gate(1, 0), or_gate(1, 1))