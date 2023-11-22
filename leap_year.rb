p "Enter Year You want to find out"
input = gets.chomp.to_i


a1 = (input % 400).to_i
a2 = (input % 4).to_i
a3 = (input % 100).to_i



if a1 == 0 || a2 == 0
	p 'It is Leap Year'
else 
	p 'It is not a Leap Year'
end
