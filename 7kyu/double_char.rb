def double_char(str)
  str.split(//).collect{|x| x*2}.join
end