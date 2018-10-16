class Player
  attr_writer :etat
  attr_accessor :w
  def initialize(nom, etat = nil)
    $nom = nom 
    $etat = etat
  end
  w = $w
  $w = " "
  def winner
    return $w
  end
end
