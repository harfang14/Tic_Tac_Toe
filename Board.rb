require_relative 'BoardCase.rb'
require_relative 'Player.rb'
require 'colorize'

class Board
  attr_accessor :array_board
  $array_board=[]
  def initialize
    n=0
    while n < 9
     $array_board[n]=BoardCase.new( n+1 , n)
     n+=1
    end
  end
  def afficher_plateau
    puts "   #{$array_board[0].status}  |  #{$array_board[1].status}  | #{$array_board[2].status}"
    puts "   -------------".colorize(:light_blue)
    puts "   #{$array_board[3].status}  |  #{$array_board[4].status}  |  #{$array_board[5].status}"
    puts "   -------------".colorize(:light_blue)
    puts "   #{$array_board[6].status}  |  #{$array_board[7].status}  |  #{$array_board[8].status}"
  end
  def gagnant
    if $array_board[0].status=="O" &&  $array_board[1].status=="O" && $array_board[2].status=="O" then   $w = "win"
    elsif $array_board[3].status=="O" &&  $array_board[4].status=="O" && $array_board[5].status=="O" then return $w = "win"
    elsif $array_board[6].status=="O" &&  $array_board[7].status=="O" && $array_board[8].status=="O"  then return $w = "win"
    elsif $array_board[0].status=="O" &&  $array_board[1].status=="O" && $array_board[2].status=="O" then return $w = "win"
    elsif $array_board[0].status=="O" &&  $array_board[3].status=="O" && $array_board[6].status=="O" then return $w = "win"
    elsif $array_board[1].status=="O" &&  $array_board[4].status=="O" && $array_board[7].status=="O" then return $w = "win"
    elsif $array_board[2].status=="O" &&  $array_board[5].status=="O" && $array_board[8].status=="O" then return $w = "win"
    elsif $array_board[0].status=="O" &&  $array_board[4].status=="O" && $array_board[8].status=="O" then return $w = "win"
    elsif $array_board[6].status=="O" &&  $array_board[4].status=="O" && $array_board[2].status=="O" then return $w = "win"
    elsif $array_board[0].status=="X" &&  $array_board[1].status=="X" && $array_board[2].status=="X"then return $w = "winner"
    elsif $array_board[3].status=="X" &&  $array_board[4].status=="X" && $array_board[5].status=="X"then return $w = "winner"
    elsif $array_board[6].status=="X" &&  $array_board[7].status=="X" && $array_board[8].status=="X"then return $w = "winner"
    elsif $array_board[0].status=="X" &&  $array_board[1].status=="X" && $array_board[2].status=="X"then return $w = "winner"
    elsif $array_board[0].status=="X" &&  $array_board[3].status=="X" && $array_board[6].status=="X"then return $w = "winner"
    elsif $array_board[1].status=="X" &&  $array_board[4].status=="X" && $array_board[7].status=="X"then return $w = "winner"
    elsif $array_board[2].status=="X" &&  $array_board[5].status=="X" && $array_board[8].status=="X"then return $w = "winner"
    elsif $array_board[0].status=="X" &&  $array_board[4].status=="X" && $array_board[8].status=="X"then return $w = "winner"
    elsif $array_board[6].status=="X" &&  $array_board[4].status=="X" && $array_board[2].status=="X"then return $w = "winner"
    end
  end
end
