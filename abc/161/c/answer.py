N, K = map(int, input().split())
mod = N % K

print(min(mod, abs(K - mod)))