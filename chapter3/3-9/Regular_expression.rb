#正規表現オブジェクト
#""は文字列オブジェクト、//は正規表現オブジェクト
p /Ruby/
p %r(Ruby)
p Regexp.new "Ruby"

#===は包含判定なので指定した文字列とマッチしているかどうかを理論値で返す
puts /Ruby/ === "I love Ruby"

p case "I love Ruby"
    when /Ruby/ then; "Ruby!"
    when /Java/ then; "Java!"
end 

#=~はマッチした文字のインデックス(文字は0から数える)を返す
puts /Ruby/ =~ "I love Ruby" #=> 7
puts "I love Ruby" =~ /Ruby/
