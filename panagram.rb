def pangram?(str)
    ('a'..'z').all? {|test| str.downcase.include? (test)}
end