G_A = [1, 3, 5, 7, 8, 10, 12]
G_B = [4, 6, 9, 11]
G_C = [2]

x, y = map(int, input().split())

if (x in G_A and y in G_A) or (x in G_B and y in G_B) or (x in G_C and y in G_C):
    print('Yes')
else:
    print('No')