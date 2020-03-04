# Write your code here.
def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  badges = []
  attendees.each do |name|
    badges << badge_maker(name)
  end
  return badges
end

def assign_rooms(attendees)
  room_assignments = []
  room = 1
  attendees.each do |name|
    room_assignments << "Hello, #{name}! You'll be assigned to room #{room}!"
    room += 1
  end
  return room_assignments
end

def printer(attendees)
  badge = batch_badge_creator(attendees)
  rooms = assign_rooms(attendees)
  l = attendees.length
  l.times do |i|
    puts badge[i]
    puts rooms[i]
  end
end
