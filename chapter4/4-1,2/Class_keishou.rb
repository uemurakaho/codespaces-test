# クラス継承 
class Foo 
    def initialize(a) #初期化メソッド
        @a = a
    end
    def method1
        @a #インスタンス変数
    end #=>6~8はインスタンスメソッドの定義.Fooクラスのなかのインスタンスメソッド.定義はdef.
end

# Fooクラスを継承したFooExtクラス
class FooExt < Foo
    def initialize(a,b)
        @b = b
        super a #
    end
    def method2(c)
        @a + @b + c 
    end
end
fooExt = FooExt.new(3,4)
p fooExt.method1  #クラスを継承しているから実行できる　
p fooExt.method2(5) 

# superclassの取得
p FooExt.superclass == Foo

# メソッドの探索経路 抽象度を一つ上げて継承の方向へたどる
foo1 = Foo.new(1)
# p foo1.method2 #NoMethodError
fooExt1 = FooExt.new(3,4)
p fooExt1.method1

#継承チェーンを確認するにはクラスオブジェクトに対してancestorメソッドを実行
p Foo.ancestors
p FooExt.ancestors

#包含関係
p Foo < Object
p Foo > Object

#オブジェクトが持つインスタンスメソッドと変数
p Foo.instance_methods(false) #falseを指定。スーパークラスをたどらない。
p FooExt.instance_methods(false) #たどるとto_s,eql?とかいっぱい出てくる
p foo1.instance_variables
p fooExt.instance_variables

