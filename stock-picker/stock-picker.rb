

def stock_picker_value(prices  )
  if prices.length == 2
    return prices
  end
  price_min = prices.shift
  price_max = prices.max
  value = stock_picker_value(prices)
  return price_max - price_min < (value[1] - value[0]) ? value : [price_min,price_max]
end

def stock_picker(prices)
  price_min,price_max = stock_picker_value(prices.clone)
  [ prices.index(price_min) , prices.index(price_max)]
end


stock_picker([1,2,3]) #[0, 2]
stock_picker([4,1,2,3]) #[1,3]
stock_picker([17,3,6,9,15,8,6,1,10]) #[1,4]
