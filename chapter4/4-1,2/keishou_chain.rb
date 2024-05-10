#継承チェーンにあるメソッドに別名をつける、定義を取り消す
class Hoge
    def huga1; end
    def huga2; end
    alias :huga3 :huga1 #huga1にhuga3という別名をつける
    undef huga2 #メソッド消す
end

p Hoge.instance_methods(false)
#[:huga3, :huga1]　huga1とhuga3は同じメソッド

#メソッドが見つからない場合、
class Hoge
    def method_missing(m, *args)
        p "called:" + m.to_s
        super
    end
end
Hoge.new.no_method
foo = Hoge.new
foo.no_method
#19~21は異なる方法で同じ結果
