from collections import defaultdict

word_counts = defaultdict(int)
prev_word = None

for _ in range(int(input())):
    word = input()

    if word_counts[word] >= 1 or (prev_word and prev_word[-1] != word[0]):
        print('No')
        exit()

    prev_word = word
    word_counts[word] += 1

print('Yes')