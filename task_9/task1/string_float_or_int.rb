module ValidStringFloatOrInteger
    def valid_float?
      true if Float self rescue false
    end
  
    def valid_int?
      true if Integer self rescue false
    end
  
    def int?
      int? & float?
    end
  
    def float?
      !int? & float?
    end
  end