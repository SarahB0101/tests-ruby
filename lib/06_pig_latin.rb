def translate(str)
	
	str.split.map { |x| # .map = transforme toutes les données du tableau 
	

		if (x[0] =~ /[aeiouy]/) #si la 1ere lettre (x[0]) match avec "aeiouy" donc = voyelle
			then x + "ay" # alors ajoute ay
	

		
		
		elsif (x[0] =~ /[[^aeiouy]]/ && x[1] =~ /[[aeiouy]]/ && x[0..1] != "qu") 
=begin 		si la 1ere lettre (x[0]) match avec tout sauf(^) "aeiouy" 
	 		&& si la deuxième lettre(x[1]) match avec "aeiouy" donc = voyelle
	 		&& si les 2 premières lettre du mot (x[0..1]) sont différentes de "qu"
=end
			then x[1..x.length] + x[0] + "ay"
			# Alors tu commences le mot à partir de la deuxième lettre jusque la fin de la taille du mot (x[1..x.length]) tu remets en fin de mot la 1ere lettre + "ay"
			# 
		

		elsif (x[0..1] =~ /[[^aeiouy]]/ && x[2] =~ /[[aeiouy]]/ && x[1..2] != "qu") 
=begin 		si la 1re et la 2ème lettre (x[0..1]) match avec tout sauf(^) "aeiouy" 
	 		&& si la 3ème lettre(x[2]) match avec "aeiouy" donc = voyelle
	 		&& si les 2 lettres après la première lettre du mot (x[1..2]) sont différentes de "qu"
=end			


			then x[2..x.length] + x[0..1] + "ay"
			# Alors tu commences le mot à partir de la 3eme lettre jusque la fin du mot et tu ajoutes les 2 premières letre + "ay"
		
		


		elsif (x[0..2] =~ /[[^aeiouy]]/) 
			# si les 3 premieres lettre sont tous sauf voyelle


			then x[3..x.length] + x[0..2] + "ay"
			# alors commence le mot à partir de la 4eme lettre + ajoute les 3 premières lettre + "ay"
		
		


		end}.join(' ')
end