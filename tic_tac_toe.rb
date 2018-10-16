require 'pry'
require_relative 'BoardCase.rb'

class Board
  attr_accessor :array_board
  $array_board=[]
    n=0
    while n < 9
     $array_board[n]=BoardCase.new("empty", n)
     n+=1
    end
end




