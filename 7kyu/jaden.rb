class String
  def toJadenCase
    self.split.map {|x| x.capitalize}.join(' ')
  end
end