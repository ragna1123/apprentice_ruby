# frozen_string_literal: true

# HASH
# ハッシュと配列の違い
# 配列はキーが数字の０から始まるインデックを使用する
# 例　配列で最初要素を指定する場合は　Array[0]と数字で指定する

# ハッシュはインデックスに任意で文字を指定できる
# またハッシュの要素はバリューと呼ばれる
# 例　ハッシュ{"hoge" => "huga"}　hugaを呼ぶ場合は  Array[hoge]と指定する

# ハッシュと配列のそれぞれの用途
# 配列は同じ意味,同じ型の複数のデータを扱うのに便利　名前一覧とか
# ハッシュはキーに名前をつけてバリューに関連付けれるので名前から年齢を関連付けたり管理しやすくなる

# country
def print_capitals(capitals)
  capitals.each { |key, value| puts "#{key}の首都は#{value}です" }
end

print_capitals({ '日本' => '東京', 'アメリカ' => 'ワシントンD.C.' })

# output
# 日本の首都は東京です
# アメリカの首都はワシントンD.C.です
