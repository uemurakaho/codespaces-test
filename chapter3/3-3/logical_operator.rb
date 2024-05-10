#論理演算子　logical operator
if true && true; p 1; end  #=>1
if nil && 10; p 1; end
if false || true ; p 1; end #=>1
if nil || false ; p 1; end
if !true ; p 1; end
#if文は式なので、評価すると値を返す。

a = 1
b = 2

if a = b 
    p a
elsif
    p b
end


#左辺で結果が確定する  論理演算子以降は評価されない
a= nil && 1
p a
a= 1 || 2
p a

#自己代入
b= b || 1
p b
c ||= 1
p c
