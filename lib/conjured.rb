class ConjuredManaCake < NormalItem
  def update_quality
    if @sell_in > 0
      @quality -= 2
    else
      @quality -= 4
    end
  end
end
