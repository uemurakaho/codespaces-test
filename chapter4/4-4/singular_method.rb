# 特異クラス
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

#特異メソッドを定義 インスタンスに直接メソッドを定義
def foo1.methodB
    @a + 100
end
p foo1.methodB
# p foo2.methodB #NoMethodError

# 特異クラスの参照と再オープン
singleton_class = class << foo1
    self
end
p singleton_class

# 特異メソッドの再オープンによるメソッド定義
class << foo1
    def methodC; @a + 200; end
end
p foo1.methodC

#selfの参照先
class C1
    p self
    def method1
        self
    end
end

c1 = C1.new
p c1 == c1.method1
# 上でselfと定義したのでmethod1はC1を返し、trueとなる