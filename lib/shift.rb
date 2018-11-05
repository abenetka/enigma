class Shift
  attr_reader :key, :date
  def initialize(key, date)
    @key = key
    @date = date
  end

  def date_offset
    offset = date.to_i ** 2
    offset.to_s.split(//).last(4).join
  end

  def total_shift_a
    key[0..1].to_i + date_offset[0].to_i
  end

  def total_shift_b
    key[1..2].to_i + date_offset[1].to_i
  end

  def total_shift_c
    key[2..3].to_i + date_offset[2].to_i
  end

  def total_shift_d
    key[3..4].to_i + date_offset[3].to_i
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
