# privateのふるまい レシーバを省略した形でしか呼び出すことができない
class Baz2
    def public_method1
        private_method1
    end
    def public_method2
        self.private_method1 #selfはレシーバとして指定してもOK
    end
    private
    def private_method1
        1
    end
end

p Baz2.new.public_method1
p Baz2.new.public_method2

class Baz2Ext < Baz2
    public :private_method1
end

# p Baz2.new.private_method1 #NoMethodError
p Baz2Ext.new.private_method1 #publicに変更したので実行可能
# メソッドの可視性はクラスに結びついているのでサブクラスで自由に変更可能