# ユーザーに関するクラス
class User
  attr_accessor :own_point
  def initialize
    @own_point = 0
  end
end
# ディーラーに関するクラス
class Dealer < User
  # 計算されたポイントを持つ
end

# プレイヤーに関するクラス
class Player < User
  # 計算されたポイントを持つ
end
