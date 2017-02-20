def score(dice)

  total = 0

  for i in 1..6 do
    count = dice.count(i)
    puts count.to_s + "Initial count" 
    if count >= 3
      count -= 3
      if i == 1
        total += 1000
      else
        total += (100 * i)
      end
    end
      case i
        when 1 
          total += (count * 100)
        when 5
          total += (count * 50)
      end
  end
  total
end



puts score([])