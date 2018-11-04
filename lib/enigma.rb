class Enigma

  def initialize
    @key = key
    @date = date
    @character_set = ("a".."z").to_a << " "
    binding.pry
  end

  def key_generator
    ('0'..'99999').to_a.sample.rjust(5, '0')
  end

  def date_generator
    Date.today.strftime('%d%m%y')
  end

  # def key_generator
  #   ('0'..'99999').to_a.sample.rjust(2, '0')
  #   binding.pry
  # end




end
