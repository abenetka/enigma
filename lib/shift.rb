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
  endr

  def shifter(index)
    shift_index = index % 4
    return total_shift_a if shift_index == 0
    return total_shift_b if shift_index == 1
    return total_shift_c if shift_index == 2
    return total_shift_d if shift_index == 3
  end

end
