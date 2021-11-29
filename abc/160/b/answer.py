X = int(input())
five_hundread_yen_coin_num = X // 500
five_yen_coin_num = X % 500 // 5

print(five_hundread_yen_coin_num * 1000 + five_yen_coin_num * 5)