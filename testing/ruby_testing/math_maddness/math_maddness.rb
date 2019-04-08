class MathMaddness

  def sum(*args)
    args.inject(:+)
  end

  def subtraction(*args)
    args.inject(:-)
  end

  def multiply(*args)
    args.inject(:*)
  end

  def division(*args)
    args.inject(:/)
  end

end

