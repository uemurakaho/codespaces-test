$foo = 1
def bar 
    $foo #グローバル変数はどこからでも参照できる
end
p bar
p $baz
