#컴퓨터가 랜덤으로 내는 숫자를 맞춰보자!
import random

random_number = random.randint(1,100)

# print(random_number)

game_count = 1


while True:
    # try:
    
        my_number = int(input("1~100 사이의 수를 맞혀봐라 : "))

        if my_number > random_number :
            print('Down!')
        elif my_number < random_number:
            print('Up!')
        else :
            print(f'축하한다. {game_count}번 만에 맞췄다ㅋ')
            break

        game_count += 1