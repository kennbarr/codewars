def goodVsEvil(good, evil)
  good = good.split
  evil = evil.split
  good_weight = [1,2,3,3,4,10]
  evil_weight = [1,2,2,2,3,5,10]
  good_sum = 0
  evil_sum = 0
  good_weight.each_index { |x| good_sum += good_weight[x]*good[x].to_i}
  evil_weight.each_index { |x| evil_sum += evil_weight[x]*evil[x].to_i}
  return "Battle Result: No victor on this battle field" if good_sum == evil_sum
  return "Battle Result: Good triumphs over Evil" if good_sum > evil_sum
  return "Battle Result: Evil eradicates all trace of Good"
end