N, A, B = map(int, input().split())
diff = B - A

if (B - A) % 2 == 0:
    print(diff // 2)
else:
    print(min(A - 1, N - B) + diff // 2 + 1)