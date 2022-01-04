def stock_picker(prices)
  pick = [0,0,0]
  
  prices.each_with_index do |current_price, day|
    highest_price = 0
    sell = 0
    
    temp_prices = prices.drop(day)
    temp_prices.each_with_index do |future_price, idx|
      if future_price > highest_price
        highest_price = future_price
        sell = idx + day
      end
    end

    buy = day
    profit = highest_price - current_price
    best = [buy,sell,profit]
    best[2] > pick[2] ? pick = best : pick = pick
  end

  pick[0,2]
end