class NormalItem
  attr_reader :name, :quality, :sell_in

  def self.update(item)
    self.new(item).update
  end

  def initialize(item)
    @name = item.name
    @quality = item.quality
    @sell_in = item.sell_in
    update

    item.quality = quality
    item.sell_in = @sell_in
  end

  def quality
    @quality = 50 if @quality > 50
    @quality = 0 if @quality < 0
    @quality
  end

  def update
    update_sell_in
    update_quality
  end

  private

  def update_sell_in
    @sell_in -= 1
  end

  def update_quality
    if @sell_in > 0
      @quality -= 1
    else
      @quality -= 2
    end
  end
end
