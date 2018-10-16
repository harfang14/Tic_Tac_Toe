require_relative 'Board.rb'
require_relative 'Player.rb'
require 'colorize'

class Game
  def initialize
    puts "**************************************************"
    puts "                  TIC TAC TOE! "
    puts "**************************************************"
    puts " "
    puts " Joueur 1, entrez votre nom :"
    name1= gets.chomp
    $j1 = Player.new(name1)
    puts " Joueur 2, entrez votre nom :"
    name2= gets.chomp
    $j2 = Player.new(name2)
    puts " "
    puts " #{name1}, vous jouez avec les  X "
    puts " #{name2}, vous jouez avec les  O "
    plateau = Board.new # Créer un nouveau Board
    puts " "
    until $w == "win" || $w == "winner" #la boucle tourne tant que l'on a pas de vainqueur
      plateau.afficher_plateau   # appelle la méthode afficher_plateau de la classe Board
      puts " "
      puts "#{name1} choisissez une case"
      puts " "
      choix_j1 = gets.chomp.to_i
      if $array_board[choix_j1-1].value != "X" && $array_board[choix_j1-1].value != "O" #évite de choisir deux foix la même case
        then $array_board[choix_j1-1].value = "X" #modifie la case avec la méthode value de la classe Board
      else puts "WARNING !!!!!!!!!!!!! CASE DEJA PRISSE, ton tour saute, #{name1} tu vas perdre !!!".colorize(:red)
      end
      plateau.afficher_plateau
      puts " "
      plateau.gagnant #cherche si un joueur a gagné avec la méthode gagnant de la classe Board
      if $w == "win" || $w == "winner" 
        then break                       #la boucle break si l'on a un vainqueur
      end
      puts "#{name2} choisissez une case"
      puts " "
      choix_j2 = gets.chomp.to_i
      if $array_board[choix_j2-1].value != "X" && $array_board[choix_j2-1].value != "O" #évite de choisir deux foix la même case
        then $array_board[choix_j2-1].value = "O" 
      else puts "WARNING !!!!!!!!!!!!! CASE DEJA PRISSE, ton tour saute, #{name2} tu vas perdre !!!".colorize(:red)
      end
      puts " "
      plateau.gagnant #cherche si un joueur a gagné avec la méthode gagnant de la classe Board
    end
    puts " "
    if $w == "win" #la variable $w permet d'indentifier le gagnant
      puts "Bravo #{name2}, tu as gagné"
    elsif $w == "winner"
      puts "Bravo #{name1}, tu as gagné"
    end
    puts " "
    puts "Voulez-vous rejouer ?"
    key = gets.chomp.downcase
    if key !="non" then 
      $w = " " # réinitialise la variable $w si un joueur souhaite relancer une partie
      Game.new 
     end
  end
  
end
Game.new