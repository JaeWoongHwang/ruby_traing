# foo = 'foo in toplevel'
#
# def display_foo
#   puts foo
# end
#
# # 출력되는 코드
# puts foo
# # 출력되지 않는 코드 (스코프 밖에서 호출)
# display_foo

greeting = "Hello, "
people = ['Alice', 'Bob']

people.each do |person|
  puts greeting + person
end

# 블록안에서만 정의 된 지역변수는 블록 밖에서 참조할 수 없다.
puts person
