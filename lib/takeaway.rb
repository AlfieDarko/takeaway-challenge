
class Takeaway
  attr_reader :menu, :basket, :prices
  attr_accessor :total
  def initialize(menu = Menu.new)
    @total = 0
    @basket = []
    @menu = menu

  end

  def list_menu
    @menu.prices.each { |y, z| puts y, z }
  end

  def add_to_basket(food, quantity = 1)
    quantity.times do
      @basket << @menu.menu[food]
    end
    @basket
  end

  def remove_from_basket(food)
    @basket.delete(@menu.menu[food])
  end

  def update_total
    @basket.each { |x| @total += @menu.prices[x] }
    @total
  end
end