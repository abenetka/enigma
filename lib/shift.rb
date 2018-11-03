class Shift
  attr_reader :key, :date
  def initialize
    @key = key
    @date = date
  end

  def key_generator
    ('0'..'99999').to_a.sample.rjust(2, '0')
  end

  def date_generator
    Date.today.strftime('%d%m%y')
  end



end
