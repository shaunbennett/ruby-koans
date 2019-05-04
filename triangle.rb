# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  num_equal = 0

  if a <= 0 || b <= 0 || c <= 0
    raise TriangleError, "Cannot have a side with 0 or less length"
  end

  sorted = [a, b, c].sort
  if sorted[2] >= sorted[0] + sorted[1]
    raise TriangleError, "Pythagorean Theorem does not hold, this is not a triangle"
  end
  
  num_equal += 1 if a == b
  num_equal += 1 if a == c
  num_equal += 1 if b == c

  case num_equal
  when 1 then :isosceles
  when 3 then :equilateral
  else :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
