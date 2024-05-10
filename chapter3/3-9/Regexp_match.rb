#正規表現の組み込み変数
/bb/ =~ "aabbcc"
#同スコープでマッチした値を取り出す
p $`
p $&
p $'

#^は正規表現の行頭、$は行末を指定する
reg = /^(aa|bb)c$/
p reg === "aac"
p reg === "bbc"

#[]は文字の集合を指定できる
reg = /a[bcd]e[fg]h/
p reg === "abegh"
p reg === "abceh"