class Multipler


  def self.create_multipler(n)
    define_method("times_#{n}") do |val|
      val * n
    end
  end


  10.times { |i| create_multipler(i)}
end


m = Multipler.new

puts m.times_0(2)
puts m.times_1(2)
puts m.times_2(2)
puts m.times_3(2)
puts m.times_4(2)
puts m.times_5(2)
puts m.times_6(2)
puts m.times_7(2)
puts m.times_8(2)
puts m.times_10(2)
puts m.times_9(2)
