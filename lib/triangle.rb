class Triangle


  def initialize side_one, side_two, side_three
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    if ((@side_one + @side_two + @side_three)/@side_one.to_f == 3.0) && (a_triangle? == true)
      :equilateral
    elsif ((@side_one == @side_two) || (@side_three == @side_two) || (@side_three == @side_one)) && (a_triangle? == true)
      :isosceles
    elsif a_triangle?
      :scalene
    else
      raise TriangleError
    end
  end

  def a_triangle?
    if (@side_one + @side_two > @side_three) && (@side_one + @side_three > @side_two) && (@side_two + @side_three > @side_one)
      true
    else
      false
    end
  end

  class TriangleError < StandardError
    puts "invalid traingle"
  end
end
