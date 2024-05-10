#再定義のために開く。クラスの再オープン、定義済みのクラスを再定義できるオープンクラス
class Hoge
    def huga1; end
end

class Hoge
    def huga2; end
    alias :huga3 :huga1
    undef :huga2
end

p Hoge.instance_methods(false)

#組み込みクラスも再オープン可能　文字列にhugaメソッドが呼び出される
class String
    def huga; 1; end
end
p "my string".huga

# 標準クラスで与えた機能はプログラム全体で有効となる
class Foo; end
class Bar; end
class Baz < Foo
end

class Baz < Bar #TypeError
end
class Baz <Foo
end
class Baz
end

