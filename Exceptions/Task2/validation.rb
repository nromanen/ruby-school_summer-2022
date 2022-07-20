module Validation

  def phone_valid?(phone)
    phone.gsub(/\s+/, "").match?(/^\+38\d{10}$/)
  end

end
