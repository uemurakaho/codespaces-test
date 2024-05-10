#lambdaの基本
lmd = lambda{|x|p x}
lmd.call(1)

# procとlambdaの違い
# return後呼び出し元(func)に復帰。funcの処理は終了しない
def func
    proc = lambda{return 1}
    proc.call
    2
end
p func

#returnで生成元のスコープ（func）を脱出する。funcの処理を終了
def func
    proc =Proc.new{return 1}
    proc.call
    2
end
p func

