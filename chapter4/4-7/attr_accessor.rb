# アクセサを生成するクラスメソッド
# インスタンス変数をインスタンス内に格納し、外部からアクセスできる
class Qux4
    attr_accessor :v3
    def method1; @v3; end
end
qux4 = Qux4.new
qux4.v3 = 3
p qux4.v3
p qux4.method1 #この2行がレシーバ

# サブクラスからメソッド経由でインスタンス変数にアクセス
class Qux4Ext < Qux4 
end
qux4Ext = Qux4Ext.new
qux4Ext.v3 = 4
p qux4Ext.v3 