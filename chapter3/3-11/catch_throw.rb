# catchとthrowによる大域脱出
def foo
    throw :exit
end

catch(:exit){
    foo
    p 1
}
p 2

# catchの戻り値をthrowに渡して実行.throwは値を引数として渡すことができる
def bar 
    catch(:calc) do
        throw :calc, 100
    end
end
p bar
