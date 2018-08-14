## Ruby traing

Reference and copyright by 'Perfect Ruby', Ruby suppoters



### Part 1 : 루비 개요

> **루비란?**

루비는 스크립트 언어나 동적 프로그래밍 언어로 분류되며, 간단한 문법과 동적형 결정 구조를 가진 객체지향 언어다.



> **모든 것이 객체**

루비의 특별한 점은 기본형이 존재하지 않고 모든 것이 객체라는 것. 예를 들어 1과 같은 숫자나 true/false와 같은 진릿값도 객체다.



> **루비 코딩 스타일**

- 클래스/모듈명

  클래스나 모듈의 명칭은 대문자로 시작해야 하며, 카멜 케이스 사용을 추천한다. 루비 문법에서는 클래스 및 모듈에 사용하는 명칭은 반드시 대문자로 시작해야 한다.

  ~~~ruby
  class SampleClass
  end
  
  module SampleModule
  end
  ~~~

  

- 메소드명

  루비에서는 메소드명을 영문 소문자 및 구분자 '_'를 이용해서 스네이크 케이스로 작성하는 것이 관례다.

  ~~~ruby
  def sample_method
  end
  ~~~

  

- 진릿값을 반환하는 메소드의 명칭

  루비에서는 진릿값 반환 메소드를 메소드명 뒤에 물음표를(?) 붙여서 기술하는데, 이를 통해 객체 상태를 묻는 메소드 호출이 자연스러워진다. 자주 사용되는 예로, 객체가 nil인지 조사하는 Object#nil이라는 메소드가 있다.

  ~~~ruby
  def happy?
  	true
  end
  ~~~



- 변수명

  루비에는 인스턴스 변수나 지역 변수처럼 여러 종류의 변수가 있지만,  메소드명과 동일하게 영문 소문자를 '_'로 구분한 스네이크 케이스를 사용하는 것이 일반적이다.

  ~~~ruby
  sample_variable = 'sample'
  ~~~



- 코드 블록 방침

  루비에서는 do...end와 {...} 형식의 두 가지 방법을 사용해서 코드 블록을 표현한다. 일반적으로 여러 줄에 걸쳐 기술할 때는 do...end를 한줄에 모두 작성할 때는 {...}을 사용한다.

  추가) {...}와 do...end에서 처리 우선순위가 달라지는 경우가 있으므로 잘 구별해서 사용해야 한다.

  ~~~ruby
  # 여러 줄에 걸쳐 기술하는 경우
  1.upto(2) do |n|
  	puts n
  end
  
  # 한 줄로 기술하는 경우
  1.upto(2) {|n| puts n}
  ~~~





### Part 2 : 루비 기초

> **Example code**

~~~ruby
def hello(names)
	names.each do |name|
		puts "HELLO, #{name.upcase}"
	end
end

rubies = ['MRI', 'jruby', 'rubinius']
~~~



> **메소드 정의**

메소드 정의는 def 키워드를 이용해서 다음과 같이 기술한다.

~~~ruby
def 메소드명(인수)...end
~~~



변수 대입은 다음과 같이 기술한다.

~~~ruby
변수명 = 식
rubies = ['MRI', 'jruby', 'rubinius]
~~~



- 문자열 작은 따옴표 vs 큰 따옴표

  문자열은 작은 따옴표나 큰 따옴표 중 어느 것을 사용해도 되나 차이점이 있다. 큰 따옴표를 사용한 문자열에는 #{...}로 감싸는 루비 코드를 포함시킬 수 있다. 

  

> **메소드 호출**

메소드 호출은 다음과 같은 형식으로 기술한다,

~~~ruby
리시버(reciever).메소드명
name.space
~~~



~~~ruby
names.each do |name|
	puts "HELLO, #{name.upcase}
end
~~~

변수 names를 리시버로 해서 each라는 이름의 메소드를 호출한다.
루비는 배열의 반복이나 루프를 표현할 때 for 같은 제어구조보다 이런 메소드 호출 방식을 자주 사용한다. 



> **블록**

블록은 처리를 하나의 단위로 묶은 것으로 메소드 호출 시 한번만 지정할 수 있는 인수의 일종이다. 
블록을 표현하는 기법은 다음과 같다.

~~~ruby
do...end / {}
names.each {|name|
	puts "HELLO, #{name.upcase}
}
~~~

{}를 사용한 기법과 do...end를 사용한 기법은 우선순위에서 차이가 난다.



> **톱 레벨**

톱 레벨로 정의된 메소드는 전역 서브 루틴처럼 사용할 수 있으며 다음과 같은 특징을 가진다.

- 메소드 호출 시 리시버를 기술하지 않는다.
- 함수처럼 어디서든(전역) 호출할 수 있다.(극히 일부는 제외)



> **메소드 정의와 반환 값**

메소드 반환 값은 해당 메소드 내에서 마지막으로 평가되는 식의 결과 값이다. 때문에 return을 기술하지 않아도 된다.

~~~ruby
def add(a, b)
	a + b
end
~~~

처리 도중에 메소드를 호출한 곳으로 돌아가려면 return을 기술한다. return 값을 부여한 경우는 그 값이 반환 값이 된다.

~~~ruby
def add(a, b)
	return a + b
	
	puts '이 문자열은 출력되지 않는다.'
end

add(1,1)    결과값 => 2
~~~



> 줄

식과 식은 줄바꿈으로 구분하므로 세미콜론을 기술할 필요가 없다. 하지만 여러 식을 한줄에 기술하고 싶은 경우에는 세미콜론으로 구분한다.

~~~ruby
name = 'ruby'; puts(name.space)

결과값 => 'RUBY' 출력
~~~



> **스크립트 인코딩**

~~~ruby
# config : utf-8
# encoding : utf-8
# -*- coding : utf-8
# vim: set fileencoding=utf-8
~~~



> 변수와 상수

변수는 scope에 따라 종류를 구분

- 지역변수 (Local variable)

  지역변수는 참조 가능 범위가 가장 좁은 종류의 변수다. 지역 변수명은 첫 슬자를 소문자 영오 또는 언더바(_)를 사용해야 한다.
  
  지역변수는 다음과 같은 스코프를 가진다.

  - 블록
  - 메소드 정의
  - 클래스/모듈 정의
  - 톱 레벨

- 전역변수(Global variable)
  전역 변수명은 $로 시작해야 한다.

  ~~~ruby
  $foobar = 'foobar'
  $undifined # => nil 
  ~~~

- 상수(Constant)
  정해진 값을 다룰 때는 상수를 이용하는데, 상수명은 영문 대문자로 시작해야 한다.  상수는 대입식을 이용해서 정의한다.

  ~~~ruby
  FOO_BAR = 'bar'
  
  상수 대입은 한 번만 해야 하지만, 정의가 완료된 상수에 다시 대입하는 것이 가능하다.
  
  FOO_BAR = 'bar'
  FOO_BAR = 'foo'
  ~~~

  상수를 재정의 하는 것은 가급적 피하는 게 좋다. 상수에 다시 값을 대입하면 경고메시지가 출력되기 때문이다.

  또한 메소드 안에서 상수를 정의할 수는 없다.



> **조건 분기와 진릿값**

루비에서는 false와 nil 이외의 모든 값은 참으로 취급한다.

~~~ruby
n = 2
if n.zero?
	puts '0이었다'
elsif n.even?
	puts '짝수였다'
elsif n.odd?
	puts '홀수였다'
end
~~~



> **식**

루비 프로그램의 대부분은 어떤 값을 반환하는 식으로 이루어진다. 변수 대입은 오른쪽 값을 반환하고, if는 마지막으로 평가한 값을 반환한다.



> **클래스**

클래스는 객체의 동작을 정의하기 위한 것이고, 모든 객체는 클래스의 인스턴스다.



> **클래스 정의**

새로운 클래스를 정의하려면 class 키워드를 사용한다. 클래스명은 영문 대문자로 시작해야 한다.

~~~ruby
class Myclass
	def hello
		puts "Hello, My object!"
	end
end
~~~

 클래스로부터 인스턴스를 생성하려면 다음과 같이 기술한다.

~~~ruby
클래스명.new

my_object = Myclass.new
my_objecy.hello
~~~



> **인스턴스 변수**

인스턴스 내에서만 참조할 수 있는 변수를 인스턴스 변수라고 하는데, 이를 사용해서 객체의 상태를 저장할 수 있다. 인스턴스 변수는 @로 시작하는 이름을 사용한다.

~~~ruby
class Ruler
	def length=(val)
    	@length = val
    end
    
    def length
    	@length
    end
end

ruler = Ruler.new

ruler.length = 30
ruler.length
~~~

루비에서는 인스턴스 변수에 대입하는 메소드 이름 끝에 등호 '='를 붙인다.
실제로 인스턴스 변수에 접근하기 위한 메소드로 attr_accessor를 이용한다. 다음과 같이 'attr_accessor :인스턴스 변수명' 형식으로 기술하면 자동으로 Ruler#length = 라는 인스턴스 변수가 정의된다.

~~~ruby
class Ruler
	attr_accessor :length
end
~~~



