import bisect

def make_primes(n: int) -> list:
    is_prime = [False, False] + ([True] * (n + 1))

    for i in range(2, int(n**0.5) + 1):
        if not is_prime[i]: continue

        for j in range(i * 2, n + 1, i):
            is_prime[j] = False

    return [i for i in range(n + 1) if is_prime[i]]

X = int(input())
primes = make_primes(10**6)
print(primes[bisect.bisect_left(primes, X)])