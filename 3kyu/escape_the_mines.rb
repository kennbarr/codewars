def solve(minemap, miner, exit)
  $minemap = minemap
  $exit = exit
  $paths = []
  recursive_path(miner,[],[])
  $paths[$paths.map{|y| y.length}.index($paths.map {|x| x.length}.min)]
end

def recursive_path(miner,co_ords,steps)
  if miner == $exit
    $paths << steps.clone
  else
    if miner['x']+1 < $minemap.length && $minemap[miner['x']+1][miner['y']] == true && !co_ords.include?([miner['x']+1,miner['y']])
      co_ords << [miner['x'],miner['y']]
      steps << 'right'
      recursive_path({'x'=>miner['x']+1,'y'=>miner['y']},co_ords,steps)
      steps = []
    end
    
    if miner['y']+1 < $minemap[0].length && $minemap[miner['x']][miner['y']+1] == true && !co_ords.include?([miner['x'],miner['y']+1])
      co_ords << [miner['x'],miner['y']]
      steps << 'down'
      recursive_path({'x'=>miner['x'],'y'=>miner['y']+1},co_ords,steps)
      steps = []
    end
    
    if miner['x']-1 > -1 && $minemap[miner['x']-1][miner['y']] == true && !co_ords.include?([miner['x']-1,miner['y']])
      co_ords << [miner['x'],miner['y']]
      steps << 'left'
      recursive_path({'x'=>miner['x']-1,'y'=>miner['y']},co_ords,steps)
      steps = []
    end
    
    if miner['y']-1 > -1 && $minemap[miner['x']][miner['y']-1] == true && !co_ords.include?([miner['x'],miner['y']-1])
      co_ords << [miner['x'],miner['y']]
      steps << 'up'
      recursive_path({'x'=>miner['x'],'y'=>miner['y']-1},co_ords,steps)
      steps = []
    end
  end
end