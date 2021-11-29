from fractions import Fraction

A, B = map(int, input().split())
print(float((1 - Fraction(B, A)) * 100))