class Shift
  attr_reader :key, :date
  def initialize
    @key = key
    @date = date
  end



  def date_offset(date)
    offset = date.to_i ** 2
    offset.to_s.split(//).last(4).join
  end

  def total_shift_a(key, date)
    key[0..1].to_i + date_offset(date)[0].to_i
  end

  def total_shift_b(key, date)
    key[1..2].to_i + date_offset(date)[1].to_i
  end

  def total_shift_c(key, date)
    key[2..3].to_i + date_offset(date)[2].to_i
  end

  def total_shift_d(key, date)
    key[3..4].to_i + date_offset(date)[3].to_i
  end

    #
    # def key_shift_a(key)
    #   split = key.chars
    #   split[0] + split[1]
    # end
    #
    # def key_shift_b(key)
    #   split = key.chars
    #   split[1] + split[2]
    # end
    #
    # def key_shift_c(key)
    #   split = key.chars
    #   split[2] + split[3]
    # end
    #
    # def key_shift_d(key)
    #   split = key.chars
    #   split[3] + split[4]
    # end

end
