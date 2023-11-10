price = int(int(input()) * 1.08)
listing_price = 206

if price < listing_price:
  print("Yay!")
elif price == listing_price:
  print("so-so")
else:
  print(":(")