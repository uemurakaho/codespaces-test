# ブロックへの変換
def func x
    x + yield
end

proc = Proc.new {2}
p func(1, &proc)

#Procへの変換 最後の仮引数に&をつける
def func x, &proc 
   p x + proc.call
end

func(1) do
    2
end 