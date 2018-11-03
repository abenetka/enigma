class Shift
  attr_reader :key, :date
  def initialize
    @key = key
    @date = date
  end

  def key_generator
    ('0'..'99999').to_a.sample.rjust(5, '0')
  end

  def date_generator
    Date.today.strftime('%d%m%y')
  end

  def date_offset(date)
    squared = date.to_i ** 2
    squared.to_s.split(//).last(4).join
  end


  def key_shift_a(key)
    split = key.chars
    split[0] + split[1]
  end

  def key_shift_b(key)
    split = key.chars
    split[1] + split[2]
  end

  def key_shift_c(key)
    split = key.chars
    split[2] + split[3]
  end

  def key_shift_d(key)
    split = key.chars
    split[3] + split[4]
  end









end
