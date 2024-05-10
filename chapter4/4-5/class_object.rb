#クラスオブジェクト
class Foo 
    def initialize(a) #初期化メソッド
        @a = a
    end
    def method1
        @a 
    end 
end


# クラスに対してクラスメソッドを実行する方法
foo_class = Foo.class

# Classインスタンスを生成する方法
SomeClass = Class.new
SomeClass.new

# FooExt < Foo スーパークラス
FooExt = Class.new(Foo) do
    def initialize(a,b)
        @b = b
        super(a)
    end
    def method2(c)
        @a + @b + c 
    end
end

# クラスメソッドの定義その１
class Class
    def c_method1
        1
    end
end

p Class.c_method1
p String.c_method1
p Object.c_method1

