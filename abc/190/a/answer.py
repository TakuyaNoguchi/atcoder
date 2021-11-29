A, B, C = map(int, input().split())

if A > B:
    print('Takahashi')
elif B > A:
    print('Aoki')
else:
    print('Aoki' if C == 0 else 'Takahashi')