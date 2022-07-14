# Given 3 integer arguments representing grades. Return the letter value
# associated with that grade.
# All values between 0..100
#

GRADES = {
  90..100 => 'A',
  80..90 => 'B',
  70..80 => 'C',
  60..70 => 'D',
  0..60 => 'F',
}

def get_grade(*grades)
  GRADES.select { |range, _| range === (grades.sum / grades.size)}.values.first
end


p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"