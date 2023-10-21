# エラー達、中身はない(何作ればいいんだ？)
class IntegerError < StandardError
end

class OperatorError < StandardError
end

# operatorの記号によって処理を分岐
def calculate(num1, num2, operator)
    case operator
        when "+" then
            return num1 + num2
        when "-" then
            return num1 - num2
        when "*" then
            return num1 * num2
        when "/" then
            return num1 / num2
    end
end

# インプット
# ----以下クエストの記述を流用----
puts "1番目の数字を入れてください"
num1 = gets.chomp.to_f
puts "2番目の数字を入れてください"
num2 = gets.chomp.to_f
puts "演算子を入力してくだい(+、-、*、/ )"
operator = gets.chomp
# -----


# numについての判定
# まずは配列化
num_list = [num1,num2]

# 小数点含むものから整数に変換したもので小数点以下を差し引くメソッド、小数点が０であればtureを返す
def is_float(num)
    float =  num - num.to_i
    return float == 0
end

# 配列内の変数を上の小数点を含むかどうかのメソッドで回す、帰ってた値がfalse(小数点を含む)ならIntegerErrorが発生する
num_list.each do |num|
    is_int = is_float(num)
    begin
        if is_int == false
            raise IntegerError
        end
    rescue IntegerError #上で出した例外処理を捕捉して続行。マッチポンプか？
    puts "num1、 num2 には整数を入力してください"
    return #強制終了
    end
end

# operatorについての判定
# こちらも配列化
operator_list = ["+","-","*","/"]
# operatorの記号が配列内に含まれていなければOperatorErrorが発生する
begin
    if !operator_list.include?(operator.to_str)
        raise OperatorError
    end
rescue OperatorError
puts "演算子には  +、-、*、/ のいずれかを使用してください"
end


# ここにnum1,2の数字判定を入れてもいいかもしれない
# ここで整数化
num1 = num1.to_i
num2 = num2.to_i

# ----以下クエストの記述を流用----
begin
    # 計算メソッドに引数を渡してリザルトに渡す
    result = calculate(num1,num2,operator)
    # 出力
    puts result
    # ０割エラーくん
rescue ZeroDivisionError
    puts "ゼロによる割り算は許可されていません"
end
# -----