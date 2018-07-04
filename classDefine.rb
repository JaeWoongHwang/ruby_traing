# Class definiton
class MyClass
  def hello
    puts "Hello, My Object!"
  end
end

my_object = MyClass.new
my_object.hello

# Instance variable
class Rular
  def length=(val)
    @length = val
  end

  def length
    @length
  end
end

rular = Rular.new
rular.length = 30
rular.length
