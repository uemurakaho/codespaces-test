# coding: euc-jp
p __ENCODING__

# = Hogeを表現するクラス
# 説明用のクラス定義です
#
class Hoge
    # ==テスト用メソッド
    #返り値：：常に１
    def test
        1
    end
end
hoge = Hoge.new
p hoge.test
