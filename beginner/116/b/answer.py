s = int(input())
nums = set([s])
answer = 1

while True:
    num = s // 2 if s % 2 == 0 else s * 3 + 1
    answer += 1

    if num in nums:
        print(answer)
        break
    else:
        nums.add(num)
        s = num