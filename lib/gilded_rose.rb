require 'item'
require 'aged_brie'
require 'backstage'
require 'conjured'
require 'sulfuras'

def update_quality(items)
  items.each do |item|
    Object.const_get(class_name(item))
      .new(item)
      .update
  end
end

def class_name(item)
  item.name.tr(',', '')
    .downcase.split(' ')
    .collect(&:capitalize)
    .join
end

#----------------------------
# DO NOT CHANGE THINGS BELOW
#----------------------------

Item = Struct.new(:name, :sell_in, :quality)
