class Parent
  def hello
    puts "Hello, Parent class"
  end

  def hi
    puts "Hello, Parent class"
  end
end

class Child < Parent
  def hi
    super

    puts "Hello, child class"
  end
end

class Whatever
end

child = Child.new
child.hello
child.hi
Whatever.superclass
