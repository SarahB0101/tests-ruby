


def who_is_bigger(a,b,c)

	if (a == nil) || (b == nil) || (c == nil)
		 "nil detected"
	
	elsif (a > b) && (a > c)
		 "a is bigger"

	elsif (b > a) && (b > c)
		 "b is bigger"	

	else "c is bigger"	

	end	

end



def reverse_upcase_noLTA(str)
	str.reverse.upcase.delete("LTA")
end	


def array_42(table)
	
	table.include?(42)
	
end


def magic_array(table)

	table.flatten.sort.uniq.map{|num| if (num%3 !=0) then (2 * num)end}.compact
=begin 
.flatten surprime les tableaux dans les tableaux 
.compact > enlève les "nil"
.sort trie les chiffre
.uniq supprime les chiffre en double
.map = crée un nouveau tableau "fictif" qui ne touche pas à l'original du coup pas besoin de delete les chiffre vu qu"on les mets pas dans ce tableau
=end
end