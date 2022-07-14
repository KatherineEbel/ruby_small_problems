def egyptian(rational)
  1.step.each_with_object([]) do |denom, result|
    curr_rational = Rational(1, denom)
    diff = rational - curr_rational
    next result unless diff.positive? || diff.numerator.zero?
    rational -= curr_rational
    result << curr_rational.denominator
    break  result unless rational.positive?
  end
end

def unegyptian(denominators)
  denominators.reduce(Rational(0, 1)) do |rat, denom|
    rat + Rational(1, denom)
  end
end

# p egyptian(Rational(2, 1)) ==  [1, 2, 3, 6]
# p egyptian(Rational(137, 60)) == [1, 2, 3, 4, 5]
# p egyptian(Rational(3, 1)) == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)
