def sort_time(time):
    ones_place = time % 10

    if ones_place == 0:
        return 10
    else:
        return ones_place

times = [int(input()) for _ in range(5)]
sorted_times = sorted(times, key=sort_time, reverse=True)
ans = 0

for time in sorted_times[0:4]:
    ans += time
    ones_place = time % 10

    if ones_place != 0:
        ans += 10 - ones_place

print(ans + sorted_times[-1])