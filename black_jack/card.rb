# frozen_string_literal: true

require 'debug'

# カードに関するクラス
class Card
  # カード情報
  def initialize
  @point_hash = {
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
  @suit_list = %w[spade heart diamond club]

  @card_hash = {} # カードの山用の空のハッシュを生成
  card_generate
  end

  # カードの山を生成
  def card_generate
    @suit_list.each do |suit|
      @card_hash[suit] = @point_hash
    end
  end

  # カードを引く
  def card_draw
    random_suit = @card_hash.keys.sample # 柄をランダムに選択
    random_num = @card_hash[random_suit].keys.sample # 数字を配列からランダムに選択
    card_point = @card_hash[random_suit][random_num] # カードの点数を呼び出し
    card_delete(random_suit, random_num) # 出したカードをカード配列から削除
    { suit: random_suit, num: random_num, point: card_point } # 配られたカード情報を返す
  end

  # 引いたカードを山から削除
  def card_delete(suit, num)
    @card_hash[suit].delete(num)
  end
end
