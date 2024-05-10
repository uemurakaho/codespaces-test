#ヒアドキュメント 改行して文字を記述できる
query =<<SQL
select *
    from my_table;
SQL
puts query


#<<-とすると終端の識別子をインデントできる
def foo
    <<-RESULT
    Ru
    by
    RESULT
end
puts foo


#シングルクォート指定
a = 1
s = <<'TEST'
    #{a}
TEST
puts s 


#ダブルクォート指定
a = 1
s =<<"TEST"
    #{a}
TEST
puts s
