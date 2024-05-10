# クラス定義
class Foo 
    def initialize(a) #初期化メソッド
        @a = a
    end
    def method1
        @a #インスタンス変数
    end #=>6~8はインスタンスメソッドの定義.Fooクラスのなかのインスタンスメソッド.定義はdef.
end
foo1 = Foo.new(1)
foo2 = Foo.new(2) #インスタンスの生成
p foo1.method1
p foo2.method1

# class式の評価順序,クラス定義は内部がスキップされることなく評価される
p 1
class Hoge
    p 2
end
p 3

# クラスメソッド
p foo1.class == Foo 
