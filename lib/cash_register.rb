class CashRegister

    attr_accessor :discount, :total, :items, :last_transaction

    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
    end

    def add_item(item, price, qty=1)
        
        self.total += (price * qty)
        qty.times do
            self.items << item
        end
        self.last_transaction = (price * qty)

    end

    def apply_discount
        if discount != 0
          self.total = (total * ((100.0 - discount.to_f)/100)).to_i
          "After the discount, the total comes to $#{self.total}."
        else
          "There is no discount to apply."
        end
      end

    def void_last_transaction
        self.total = self.total-self.last_transaction
    end

end