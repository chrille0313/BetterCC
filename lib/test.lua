require "class"

Member = class()

function Member:__init(x)
  self.x = x
end

member = Member(12)

print(member.x)

