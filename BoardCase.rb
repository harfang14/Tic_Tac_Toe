class BoardCase
  attr_accessor :value, :case_number
  def initialize(value, case_number)
    @value = value
    @case_number = case_number
  end
  def status
    return @value
  end
  def case_num
    return @case_number
  end
end