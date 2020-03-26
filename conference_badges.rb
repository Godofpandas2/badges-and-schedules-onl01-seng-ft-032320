# Write your code here.
require 'pry'
def badge_maker(name = "Arel")
   "Hello, my name is #{name}."
end


def batch_badge_creator(names)
  #binding.pry
  badge_messages = []
  names.each do |x|
    badge_messages << badge_maker(x)
  end
  badge_messages
end

def assign_rooms(speakers)
  room_assignments = []
  speakers.each_with_index do |y, z|
    room_assignments << "Hello, #{y}! You'll be assigned to room #{z + 1}!"
  end
  room_assignments
end

def printer(speakers)
  batch_badge_creator(speakers).each do |b|
    puts b
  end  
  assign_rooms(speakers).each do |r|
    puts r
  end  
end
