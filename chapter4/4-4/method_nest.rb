# def中におけるdef式の呼び出し
class C2
    def method1 
        def method2
        end
    end
end
# 外側のメソッドが定義されたクラスに定義される
p C2.instance_methods(false)
p C2.new.method1 #method1が実行されるのでmethod2が定義された
p C2.instance_methods(false)
