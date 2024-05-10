# クラスメソッドの定義　特異メソッド　
#def式でクラスメソッドを指定　p.136
class Foo 
    def Foo.c_method2; 2; end
end
p Foo.c_method2

#selfでも可能
class Foo
    def self.c_method3; 3; end
end
p Foo.c_method3

# 特異クラスの再オープンを使う方法  
# selfの指定が１回のみでよいのでたくさんのクラスメソッドを定義する場合に使うとよい。
class Foo
    class << self 
        def c_method4; 4; end
        def c_method5; 5; end
    end
end

p Foo.c_method4
p Foo.c_method5


