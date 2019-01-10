def player
  puts"Bienvenue au jeu de l'oie informatique!"
  puts "Le dé va être lancé!"
  dice=rand(1..6)
	posActuelle = 0

	while posActuelle < 10 do

		if dice >= 5  
		puts "Tu as fait #{dice}, tu avances d'une marche"
		posActuelle += 1
		dice=rand(1..6)

		elsif (dice == 2 || dice == 3 || dice == 4) or (posActuelle == 0 && dice == 1)
			puts "Tu as fait #{dice}, tu n'avances pas"
			dice=rand(1..6)
		
		else dice == 1
			puts "Oh non tu as fait #{dice} tu descents d'une case"
			posActuelle -= 1
			dice=rand(1..6)
	
	end
		puts "Voici ta position sur l'escalier: #{posActuelle}"
		puts ""

	end
		puts "Bravo tu es arrivé a la position #{posActuelle}, c'est gagné !"
		puts ""
end


def average_finish_time

	dice=rand(1..6)
	posActuelle = 0
	nbrdetour = 0
	100.times do
		posActuelle = 0 
		while posActuelle < 10 do
			nbrdetour += 1
		
			if dice >= 5
				posActuelle += 1
				dice=rand(1..6)

			elsif (dice == 2 || dice == 3 || dice == 4) or (posActuelle == 0 && dice == 1)
				dice=rand(1..6)
			
			else dice == 1
				posActuelle -= 1
				dice=rand(1..6)
	
			end

		end

	end
puts ""
puts "FUN FACTS !!"
puts "Tu savais qui si tu jouais une centaine de parties, il te faudrait en moyenne seulement #{nbrdetour/100.to_f} tours pour gagner!"
end



def perform
player
average_finish_time
end

perform
