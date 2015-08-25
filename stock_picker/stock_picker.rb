def checker(prices)
  high = prices[0]
  low = prices[0]
  buy = 0
  sell = 0

  prices.length.times do |i|
    if high < prices[i]
      high = prices[i]
      sell = i
    end

    if low > prices[i]
      low = prices[i]
      buy = i
    end
  end

  puts "Buy on day #{buy}."
  puts "Sell on day #{sell}."
end

checker([44, 12, 56, 11, 49, 2, 140].shuffle)