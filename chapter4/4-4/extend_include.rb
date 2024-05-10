# includeとextend　同じ動作
class Foo 
    def initialize(a) 
        @a = a
    end
    def method1
        @a 
    end 
end

module Bar
    def methodA
        @a 
    end
end

#includeを使用した場合
foo1 = Foo.new(1)
class << foo1
    include Bar
end
p foo1.methodA

#extendを使用した場合簡潔に書ける
foo1 = Foo.new(1)
foo1.extend(Bar)
p foo1.methodA
