module Validation
  def self.phone_valid?(phone)
    phone.match(/^(?:\+38)?(0\d{9})$/) == nil ? false : true
  end
end
