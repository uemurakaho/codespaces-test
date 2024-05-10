#メソッドの可視性
#public, protected, private
class Baz1
    def public_method1; 1; end #defaultはpublic
    public
    def public_method2; 2; end
    protected
    def protected_method1; 1; end
    def protected_method2; 2; end
    private
    def private_method1; 1; end
end

p Baz1.new.public_method1
p Baz1.new.public_method2 #どのインスタンスからでも実行できる
# p Baz1.new.protected_method1
# p Baz1.new.protected_method2
# p Baz1.new.private_method1 #NoMethodError