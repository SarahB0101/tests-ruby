def echo(str)
	str
end


def shout(str)
	str.upcase	
end


def repeat(str, n=2) 
	([str]*n).join(" ")
end


def start_of_word(str, n)
	str.chars.values_at(0..n-1).join
end


def first_word(str)
	str.split.first
end

def titleize(str) 
	str.split.map.with_index{ |i, x|  if  i.size > 3 || x==0 then i.capitalize else i end }.join(" ")
	# str = string // split = divise // map.with_index >> i = item, x = index
end