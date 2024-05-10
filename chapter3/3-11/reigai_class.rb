# 例外クラスの取得
# begin
#     1/0
# rescue ZeroDivisionError => e
#     p e.backtrace
# end

# 例外の再発生
# begin
#     1/0
# rescue ZeroDivisionError
#     p $!.class
#     raise
# end

# retryは呼び出し元に委ねるのではなく、自分で解決して行うときに便利
a = 0
# begin
#     b = 1/a
# rescue ZeroDivisionError
#     a += 1
#     retry
# ensure
#     p b
# end

# rescueはbegin節で何度も指定できるが、最初にマッチしたもののみ実行される
begin
    1/0
rescue
    p 1
rescue ZeroDivisionError
    p 2
end
