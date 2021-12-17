require 'lib.class'

Member = class()
function Member:__init(name, age)
	self.name = name
	self.age = age
end

function Member:change_name(newName)
	self.name = newName
end

function Member:__tostring() 
	return self.name .. " " .. self.age
end



member = Member("Christian", 18)
print("Name: "..member.name)
print("Age: "..member.age)
member:change_name("Retard")
print("New Name: "..member.name)

print(member)