def name(str)
    print(str =~ /^\p{Lu}\p{Ll}{0,14}(-\p{Lu}\p{Ll}{0,14})?$/)
  end
  
  name('Oleksandr')
  
  name('Анна')
  name ('Анна2')
  name('Анна-Марія')
  name('Нннннннннн')
  naem('Забагатосимволів')
  name('І-Ф')