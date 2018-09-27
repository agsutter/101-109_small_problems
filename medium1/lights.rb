# You have a bank of switches before you, numbered from 1 to n. Each
# switch is connected to exactly one light that is initially off. You
# walk down the row of switches and toggle every one of them. You go
# back to the beginning, and on this second pass, you toggle switches
# 2, 4, 6, and so on. On the third pass, you go back again to the
# beginning and toggle switches 3, 6, 9, and so on. You repeat this
# process and keep going until you have been through n repetitions.

# Write a method that takes one argument, the total number of switches,
# and returns an Array that identifies which lights are on after n
# repetitions.

# Example with n = 5 lights:

# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on

# The result is that 2 lights are left on, lights 1 and 4. The return
# value is [1, 4].

# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return
# value is [1, 4, 9].

def switch_lights(n)
  switches = Array.new(n, 'off')
  divisor = 1
  until divisor > switches.size
    switches.each_with_index do |light, indx|
      light_number = indx + 1
      if (light_number % divisor).zero?
        switches[indx] = 'on' if light == 'off'
        switches[indx] = 'off' if light == 'on'
      end
    end
    divisor += 1
  end
  switches
end

def lights_on(n)
  results = switch_lights(n)
  on_array = []
  results.each_with_index do |status, place|
    on_array << place + 1 if status == 'on'
  end
  on_array
end

p lights_on(5)
p lights_on(10)
p lights_on(1000)
