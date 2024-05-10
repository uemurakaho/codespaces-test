# Refinements
class C
    def foo
        puts "C#foo"
    end

    def bar
        foo
    end
end

# refineを使ってCのfooメソッドの変更
module M 
    refine C do
        def foo
            puts "C#foo in M"
        end
    end
end

#using前後で出力の違いを見る
x = C.new
x.foo
x.bar

using M 

x = C.new
x.foo
x.bar

