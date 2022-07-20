module StringFloatOrInteger
  def integer_or_float?
    begin !!Float(self) rescue false end
  end

  def integer_not_float?
    begin !!Integer(self) rescue false end
  end

  def integer?
    integer_not_float? & integer_or_float?
  end

  def float?
    !integer_not_float? & integer_or_float?
  end
end
