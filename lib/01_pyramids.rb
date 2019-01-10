def ask_nb
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu et donnes moi un nombre paire s'il te plait ?"
  print "> "
  number=gets.chomp.to_i
  return number
end
  
def up_pryramide(number)
  i=number/2
  u=1
  number.times do
      puts " "*i + "#"*u
      i=i-1
      u=u+2
  break if i < 1
end
end

def down_pryramide(number)
  i=number 
  u=0
  number.times do
      puts " "*u + "#"*i
      i=i-2
      u=u+1
      break if i < 1
  end
end

def wtf_pyramide
  number = ask_nb
  if number.even?
      puts "Non, j'ai dis un nombre impair! Allez on recommence !"
      ask_nb
  else
      puts "Voici la pyramide : "
      up_pryramide(number)
      down_pryramide(number)
  end
end

wtf_pyramide