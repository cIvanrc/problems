class Movie
  attr_reader :score_node, :name_node, :sale_node
  attr_accessor :score, :name, :sale
  def initialize()
    @score_node = ".left_col .tMeterScore"
    @name_node = ".middle_col a"
    @sale_node = ".right_col" 
  end

  def to_s
    "#{score.strip} - #{name.strip} - #{sale.strip} "
  end
end
