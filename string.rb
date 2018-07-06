puts 'result:\t#{1+1}'
puts "result:\t#{1+1}"

# 줄바꿈 직전에 백슬래시를 두면 줄바꿈을 피할 수 있다.
paragraph = "99 bottles of beer on the wall, \99 bottles of beer."
puts paragraph

weather = 'rainy'

# 식 전개와 백슬래시 기법은 무효
%q(It's #{weather})

# 식 전개와 백슬래시 기법이 유효
%(It's #{weather})
%Q(It's#{weather})
