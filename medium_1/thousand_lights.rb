# switches numbered 1 to n
# each switch connected to 1 light that starts off
# walk down row and toggle each switch
# go to beginning
# toggle switches 2, 4, 6
# next round toggle 3, 6, 9
# Input total number switches
# Output Array which lights are on after n reps
# 1 2 3 4 5
# 0 0 0 0 0
# 1 1 1 1 1   1
#   0   0     2
#     0       3
#       1     4
#         0   5

# create array to hold n lights
# iterate through the lights (list) n times
# counter where to start switching lights on
# 1st is 1, 2nd is 2 ,etc
# skip double the incrementor lights and toggle light

def toggle_lights(lights, pass)
  (pass - 1...lights.size).step(pass) do |step|
    lights[step] = !lights[step]
  end
end

def select_lights_on(lights)
  lights.map.with_index { |light, idx| light ? idx + 1 : light }
        .select { |num| num }
end

def thousand_lights(num_switches)
  lights = Array.new(num_switches, true)
  2.upto(num_switches) do |pass|
    toggle_lights(lights, pass)
  end
  select_lights_on(lights)
end

p thousand_lights(5) == [1, 4]
p thousand_lights(10) == [1, 4, 9]

p thousand_lights(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]
