class VendingMachine

    def initialize(company)
        @maker_name = company
        @cash = 0
        @cup_inventory = 0
    end

    def deposit_coin(coin)
        # コインを受けて100円かどうか判断する
        if coin == 100
            # 100円が貯まってpress_buttonが押されたら飲み物を出す
            @cash += coin
        end
    end
    
    # ボタンが押されると貯まっていた金額が飲み物の値段以上なら飲み物を出す、その後飲み物の値段が引かれる
    def press_button(drink_info)
        # コーヒーかの判断
        if drink_info.is_cup && @cup_inventory > 0 && @cash >= drink_info.price
            print drink_info.name
            @cash -= drink_info.price
            @cup_inventory -= 1
        elsif !drink_info.is_cup && @cash >= drink_info.price
            print drink_info.name
            @cash -= drink_info.price
        end
        # コーヒならカップの判定処理
    end

    # カップがセットされる
    def add_cup(cup)
        @cup_inventory += cup
    end
    

    # メーカー名出力
    def press_manufacturer_name
        print @maker_name
    end

    private :press_manufacturer_name
end

# 自販機にドリンク名を値段を渡すセクション
class Item
    attr_accessor :name, :price, :is_cup
end

# コーヒーの種類を選ぶ
class Cup_coffee < Item
    def initialize(coffee_type)
        coffee_list = {'ice' => 100, 'hot' => 100 }
        self.name = "#{coffee_type} coffee cup"
        self.price = coffee_list[coffee_type]
        self.is_cup = true
    end
end

# ドリンクを選ぶ
class Drink < Item
    def initialize(drink_type)
        drink_list = {'cider' => 100, 'cola' => 150 }
        self.name = drink_type
        self.price = drink_list[drink_type]
        self.is_cup = false
    end   
end




hot_cup_coffee = Cup_coffee.new('hot'); # => [coffee_name,price,cup]
drink = Drink.new("cola") # => [drink_name,price]
vending_machine = VendingMachine.new('サントリー')
vending_machine.deposit_coin(100)
vending_machine.deposit_coin(100)
puts vending_machine.press_button(drink)
puts vending_machine.press_button(hot_cup_coffee) # カップが貯まっていないので空文字が出力されます
vending_machine.add_cup(1)
puts vending_machine.press_button(hot_cup_coffee) # hot cup coffee