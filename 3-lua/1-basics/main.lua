print "hello world\n"

print(6 + 5 * 4 - 3 / 2) 

print "\n"

print(not(true or false) and false)

print(true or 10)
print(false or 13)

print(10 > 93)

print "\n"

-- lua main.lua build & run

var1 = "mundo da lua!"
var2 = 20

print(type(var1))
print(type(var2))

local multistring = [[
	Hello. This is a very long string 
	that is declared using double square 
	brackets during the assignment.
]]

print(multistring)

print(string.len(""))
print(string.len("Lua"))

print(string.upper("Hello Lua user!"))
print(string.lower("Hello Lua user!"))

print(string.rep("Lua ", 5))

print(string.reverse("Lua"))
print(string.reverse("!elbadaer won si gnirts sihT"))