module Validation
def user_phone_valid?(user_phone)
    user_phone.gsub(/\s+/, "").match?(/^\+38\d{10}$/)
  end
end