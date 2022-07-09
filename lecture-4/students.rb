module Students
  MAX = 100
  MIN = 0
  UPPER_BOUND = 0.10
  LOWER_BOUND = 0.15
  @top = {}
  @middle = {}
  @bottom = {}

  def text_to_hash(txt='Наташа -18 Марія-12 Роман- 2', pattern = /(\p{Lu}\p{L}{1,10}|\p{Lu}\p{L}{1,10}-\p{Lu}\p{L}{1,14})( -|-|- | - )(\d{1,10})/)
    hash = {}
    txt.to_enum(:scan, pattern).map {Regexp.last_match}.each {|x|
      hash.merge!(Hash[x[1].to_sym => x[3].to_i])
    }
    hash
  end

  def check_for_correctness(hash = text_to_hash, name_pattern = /^\p{Lu}\p{L}{1,14}(-(\p{Lu}\p{L}{1,14}$)|$)/)
    hash.delete_if{|key, score| score > MAX or score < MIN}
    hash.delete_if{|key,score| key.to_s == key.to_s.match(name_pattern)}
    hash
  end

  def distribution(hash = check_for_correctness)
    t = hash.select{|k,v|v>(MAX-(MAX*UPPER_BOUND))}
    m = hash.select{|k,v|v<MAX-(MAX*UPPER_BOUND) and v > MAX*LOWER_BOUND}
    b = hash.select{|k,v|v < MAX*LOWER_BOUND}
    [t,m,b]
  end

  def sorting(hash = check_for_correctness)
    hash.sort_by{|_key, value| value}.reverse_each.map{|e| e}.to_h
  end

end
