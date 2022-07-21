module ValidType
  def float?
    true if Float self rescue false
  end

  def int?
    true if Integer self rescue false
  end

  def valid_int?
    int? & float?
  end

  def valid_float?
    !int? & float?
  end
end
