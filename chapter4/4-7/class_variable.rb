# クラス変数は@@から始まる
class Qwe5
    @@v1 = 1
    def v1; @@v1;end
    def v1=(value); @@v1 = value; end
end

class Qwe5Ext < Qwe5
end

# サブクラスからも参照可能
qwe5 = Qwe5.new
p qwe5.v1
qwe5Ext = Qwe5Ext.new
p qwe5Ext.v1

# サブクラスのインスタンスから書き換える
qwe5Ext.v1 =10
p qwe5.v1

#別のインスタンスから書き換える
Qwe5.new.v1 = 100
p qwe5.v1

# サブクラスで同名のクラス変数を宣言＝代入
class Qwe6
    @@v1 = 1
    def v1; @@v1; end
end

class Qwe6Ext < Qwe6
    @@v1 = 2 #スーパークラスのクラス変数を書き換えてしまう
end

p Qwe6.new.v1