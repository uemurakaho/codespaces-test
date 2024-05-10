# prepend メソッド　先頭に追加するという意味
module M1
    def method1; "m1"; end
end

class C1
    prepend M1
    def method1; "c1"; end
end

class C2
    include M1
    def method1; "c2"; end
end

#モジュールのメソッドをクラスに取り込むという点は同じ
p C1.new.method1 #M1の方が先にメソッド探索される
p C2.new.method1 #C2の方が先にメソッド探索される

# M1とC1、C2の位置関係に違いあり
p C1.ancestors
p C2.ancestors

