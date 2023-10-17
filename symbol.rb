# Rubyにおけるシンボルについて

# シンボルとは何か
    # ソース上では文字列に見えるが内部では整数として扱われる

# 文字列と何が違うのか
    # 文字列はstring型、シンボルはsymbol型となる
    # 文字列と違い書き換えができない

# シンボルがよく使われるのはどのような用途か
    # 内部で整数として振る舞うため速度面を優先するものに対して使用する
    # ハッシュのキー
    # アクセサの引数で渡すインスタンス変数名
    # sendメソッド引数で渡すメソッド名
    # enumで指定するカラム名


# convert_currency
def convert_currency(amount, source_currency, target_currency, conversion_rates)
    div_rate = amount/conversion_rates[source_currency]
    conversion_cash = div_rate*conversion_rates[target_currency]
    puts conversion_cash
end

conversion_rates = {
  usd: 1.0,
  jpy: 150,
  eur: 0.95
}

convert_currency(50, :usd, :jpy, conversion_rates)


# output
# 11000yen