xa, ya, xb, yb, xc, yc = gets.split.map(&:to_i)

# (xa, ya), (xb, yb), (xc, yc) の3点がある場合、
# (xa, ya) を原点に移動することを考え、他の点も合わせて平行移動(= -xa, -ya)する。
# そうすることで三角形の面積を
# |xb * yc - xc * yb| / 2
# で求めることが可能となる。
puts ((xb - xa) * (yc - ya) - (xc - xa) * (yb - ya)).abs / 2.0
