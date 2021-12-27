def triangle(a, b, c)
  if a == 0 || b == 0 || c == 0
    raise TriangleError, "A triangle cannot have 0 length sides"
  elsif a < 0 || b < 0 || c < 0
    raise TriangleError, "A triangle cannot have negative length sides"
  elsif a + b <= c || a + c <= b || b + c <= a
    raise TriangleError, "Smallest sides aren't big enough to make a triangle"
  elsif a == b && a == c 
    :equilateral
  elsif (a == b && a != c) || (a == c && a != b) || (b == a && b != c) || (b == c && b != a)
    :isosceles
  elsif a != b && a != c && b != c
    :scalene
  end
end

class TriangleError < StandardError
end
