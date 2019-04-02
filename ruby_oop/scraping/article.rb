require 'csv'

class Article
  attr_accessor :title, :autor, :rank 
  attr_reader :title_node, :autor_node, :rank_node

  def initialize()
    @title_node = ".title .storylink"
    @autor_node = ".title .sitebit .sitestr"
    @rank_node = ".title .rank"
  end

  def to_s
    "#{@rank} - #{@title} - #{@autor}"
  end

  def to_csv
    CSV.open("tmp.csv", "a") do |csv|
      csv << [@rank, @title, @autor]
    end
  end
end
