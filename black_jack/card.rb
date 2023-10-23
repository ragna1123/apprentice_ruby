require "debug"

# カードに関するクラス
class Card
  @card_point = {
    'A' => 1,
    '2' => 2,
    '3' => 3,
    '4' => 4,
    '5' => 5,
    '6' => 6,
    '7' => 7,
    '8' => 8,
    '9' => 9,
    '10' => 10,
    'J' => 10,
    'Q' => 10,
    'K' => 10
  }

  @card_suit = ['スペード',"ダイヤ","クローバー","ハート"]

  # @@used_card = 
    # @used_card = {"card_suit" => [cord_point]}
    # 場に出したカード情報を保持するための2次元配列

  def deal_card
    # カードをランダムに出す
    # used_cardにあるものが出たらリトライ
    # 出したカードをused_cardにプッシュ
    # 配られたカードを返す
  end
end