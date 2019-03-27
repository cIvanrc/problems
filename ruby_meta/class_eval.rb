module Accesor

  def my_attr_accessor(name)
    class_eval %{
      def #{name}
        @#{name}
      end
      def #{name}=(val)
        @#{name} = val
      end
    }
  end
end


class MyClass
  extend Accesor

  my_attr_accessor :var
end


m = MyClass.new
m.var = "cat"
puts m.var
