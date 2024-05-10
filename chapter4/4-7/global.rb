$v1 = 1
class Qux2
    $v2 = 2
    def method1; $v1; end
    def method2; $v2; end
end

p Qux2.new.method1
p Qux2.new.method2 
# グローバル変数はクラス内やメソッド内からも参照できる