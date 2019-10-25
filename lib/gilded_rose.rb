require 'item'
require 'aged_brie'
require 'backstage'
require 'conjured'
require 'sulfuras'

def update_quality(items)
  items.each do |item|
    if Object.const_defined?(class_name(item))
      Object.const_get(class_name(item)).update(item)
    else
      NormalItem.update(item)
    end
  end
end

def class_name(item)
  item.name.gsub(/,|\s/, '')
end

#----------------------------
# DO NOT CHANGE THINGS BELOW
#----------------------------

Item = Struct.new(:name, :sell_in, :quality)
