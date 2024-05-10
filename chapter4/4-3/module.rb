# モジュールオブジェクト
class Foo 
    def initialize(a) #初期化メソッド
        @a = a
    end
    def method1
        @a #インスタンス変数
    end #=>6~8はインスタンスメソッドの定義.Fooクラスのなかのインスタンスメソッド.定義はdef.
end
class FooExt < Foo
    def initialize(a,b)
        @b = b
        super a 
    end
    def method2(c)
        @a + @b + c 
    end
end

module Bar
    def methodA
        @a 
    end
end
module Bar2
    def methodA
        @a 
    end
end

# モジュールオブジェクトの操作
p Bar.ancestors
p Bar.instance_methods
# p Bar.new #NoMethodError

class FooExt < Foo
    include Bar
end
fooExt1 = FooExt.new(3,4)
p fooExt1.methodA

# includeしたクラスの継承チェーン
p FooExt.ancestors
p FooExt.superclass
p FooExt.instance_methods(false)

# 複数のincludeメソッドの実行
class FooExt < Foo
    include Bar
    include Bar2
end
p FooExt.ancestors #Bar2(後でincludeしたモジュール)が優先される

# メソッドの優先度。
# モジュールと同名のメソッドを定義したら実行順序にかかわらずそのクラスのメソッド定義が優先
module M1 
    def method1; 1; end
end
 
class C1
    def method1; 2; end
    include M1
end
p C1.new.method1
