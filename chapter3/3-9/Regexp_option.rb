#正規表現の後方参照
p %r|(http://www(\.)(.*)/)| =~ "http://www.xyz.org/"
# p %r|(\d)| =~ "abc1"
p $1
p $2
p $3
p $4


#正規表現オプション i = 大文字小文字無視、mは.が改行にもマッチする
p /ruby/ === "RUBY"
p /ruby/i === "RUBY"
p /a.*b/ === "a\nb"
p /a.*b/m === "a\nb"