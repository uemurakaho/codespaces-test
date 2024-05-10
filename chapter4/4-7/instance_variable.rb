# インスタンス変数
@v1 = 1
class Qux3
    @v2 = 2
    def method1; @v1; end
    def method2; @v2; end
end
p Qux3.new.method1
p Qux3.new.method2
# メソッドのようには探索されないので参照しようとすると、変数が見つからずnilを返す
