# Kernelモジュールと関数
p Object.ancestors
p self.class
p self.p #nil

module Kernel   
    private
    def my_func; end
end
p my_func
p self.my_func

# Objectにprivateメソッドを追加しても同等の効果を得られる
class Object
    private
    def my_func; end
end
p my_func
p self.my_func
