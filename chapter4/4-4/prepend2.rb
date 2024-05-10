module M1
    def method1
        super
        puts "m1"
    end
end

class C1
    prepend M1
    def method1
        puts "c1"
    end
end

# prependされたモジュールでsuperを呼び出すと、継承チェーン上のクラスから同盟メソッドを探索
C1.new.method1
