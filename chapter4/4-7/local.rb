# ローカル変数
# v1 = 1
# class Qux1
#     p v1 #NameError
# end

v1 = 1
class Qux2
    v2 = 2
    def method1; v1; end
    def method2; v2; end
end
# Qux2.new.method1
# Qux2.new.method2
# クラス定義と内部メソッドはそれぞれ独立したスコープを持つ