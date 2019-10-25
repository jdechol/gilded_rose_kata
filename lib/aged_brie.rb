class AgedBrie < NormalItem
  def update_quality
    if @sell_in > 0
      @quality += 1
    else
      @quality += 2
    end
  end
end
