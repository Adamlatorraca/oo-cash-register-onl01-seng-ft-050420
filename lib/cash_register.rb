class CashRegister
  attr_accessor :discount, :total, :quantity

    def initialize(discount = 0)
      @total = 0
      @discount = discount
      @cart = []
    end

    def add_item(item, price, quantity = 1)
      items = {}
      item[:name] = item
      item[:total] = price
      item[:quantity] = quantity
    end

end
