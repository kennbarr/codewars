def split_hash_by_key(hash, *args)
  args.each {|x| raise "Error - key not in hash" if !hash.include? x}
  output = []
  current_hash = {}
  hash.each do |k,v|
    if !args.include? k
      current_hash[k] = v
    else
      output << current_hash if !current_hash.empty?
      current_hash = {}
      current_hash[k]=v
    end
  end
  output << current_hash
end