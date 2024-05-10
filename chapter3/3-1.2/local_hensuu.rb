foo = 1
def bar
    foo #メソッドの外側からのローカル変数は参照できない、メソッドの呼び出しと認識。
end
p bar #=> NameError fooの宣言をしていないため
baz #=>
