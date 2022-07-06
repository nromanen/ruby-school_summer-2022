# frozen_string_literal: true

def search_name(str)
  if str =~ /^\p{Lu}\p{Ll}{0,14}(-\p{Lu}\p{Ll}{0,14})?$/
    str
  else
    'No match'
  end
end

search_name('Anna-Anna')
