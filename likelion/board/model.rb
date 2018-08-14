# need install dm-sqlite-adapter
DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/blog.db")
# Post 클래스라는 새로운 테이블을 하나 만들어서 이 형태는 다음과 같은 컬럼이 있다는 것을 선언
# Post, User라는 Datatable
class Post
  include DataMapper::Resource
  # property를 쓰고, 컬럼이름 쓰고, 자료형을 써서 선언한다.
  property :id, Serial
  property :title, String
  property :body, Text
  property :created_at, DateTime
end

class User
  include DataMapper::Resource
  property :id, Serial
  property :email, String
  property :password, String
  property :is_admin, Boolean, :default => false
  property :created_at, DateTime
end

DataMapper.finalize

Post.auto_upgrade!
User.auto_upgrade!
