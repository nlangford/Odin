def checker(prices)
  high = 0
  low = 0
  buy = 0
  sell = 0
  profit = 0

  print "Prices: #{prices} \n"
  
  for i in 0..prices.length-1 do 
    for j in i+1..prices.length-1 do 
      if (prices[j] - prices[i]) > profit
        profit = (prices[j] - prices[i])
        buy = i
        sell = j
      end
    end
  end

  puts "Buy on day #{buy}."
  puts "Sell on day #{sell}."
  puts "Profit is #{profit}"
end

checker([44, 12, 56, 11, 49, 2, 140].shuffle)