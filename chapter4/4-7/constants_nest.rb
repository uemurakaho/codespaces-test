# 定数のスコープ（定数は大文字から始まる名前）
A = 1
p A 
# A = 2 #警告が出るが代入はしてくれる
# p A 


def func
    # B = 1 
end #メソッド定義の中で定数宣言できない

# 定数にモジュールオブジェクトが格納される
module B; end
B::A = 1 #モジュールBの中で、定数Aを定義し、その値を1に設定しています（ネスト）
# B::A::A = 1 #構文エラー

# ネストした定数はこちらの生成方法が一般的
module M 
    A = 1
    class B 
        A = 2 #moduleMとは違う場所で宣言しているので違う値が格納できる
    end
    class C 
    end
end

# ネストした定数の参照
p M::A
p M::B::A 

#相対位置で参照
module M 
    p A 
    p B::A 
end

# ルートからの絶対指定
module M 
    p ::M::A 
    p ::M::B::A 
    p ::M::C 
end

# moduleクラスのconstantsメソッド、定義されている定数を配列で表示
p M.constants
p M::B.constants
p M::C.constants

module M 
    class C 
        p A #Cの中にはAはない。外側のモジュールに探しに行き、Aを参照。
    end
end

# 継承チェーンををたどっていくのでサブクラスやincludeしたクラスでも参照できる
class Foo
    A = 1
end

module Bar
    B = 2
end

class FooExt < Foo
    include Bar 
    p A 
    p B 
end

# const_missingメソッドの動作を制御
module M 
    def self.const_missing(id)
        1
    end
end
p M::Hoge