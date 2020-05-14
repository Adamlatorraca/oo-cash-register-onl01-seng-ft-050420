class CashRegister
  attr_accessor :discount, :total, :quantity

    def initialize(discount = 0)
      @total = 0
      @discount = discount
      @cart = []
      @quantity = 1
    end

    def add_item(item, price, quantity)
      items = {}
      item[:name] = item
      item[:total] = price
      item[:quantity] = quantity


end
