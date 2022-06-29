class Strings
  @list = []
  def initialize
    @createStringList = [
      ["'New string'", 'New string'],
      ["New string", "New string"],
      ["String.new", String.new]
    ]

    @interpolationList = [
      ["Seconds/day: \#{24 * 60 * 60}", "Seconds/day: #{24 * 60 * 60}"],
      ['Seconds/day: \#{24 * 60 * 60}', 'Seconds/day: #{24 * 60 * 60}'],
      ["Tro \#{'Lo ' * 3}!!!1", "Tro #{'Lo ' * 3}!!!1"],
      ["Now is \#{\n\tdef the(a)\n\t\t'the ' + a\n\tend\n\tthe('time')\n\t} for all good coders ...",
       "Now is #{
        def the(a)
          'the ' + a
        end
        the('time')
      } for all good coders ..."]
    ]

    @concatenationList = [
      ["'Con' \"cat\" 'ena' \"te\"", 'Con' "cat" 'ena' "te"],
      ["'Con' + \"cat\" + 'ena' + \"te\"", 'Con' + "cat" + 'ena' + "te"],
      ["str = 'Programming!'", str = 'Programming!'],
      ["str << ', I love it!'", str << ', I love it!'],
      ["str.concat(' What about you?')",str.concat(' What about you?')],
    ]

    @accessingList = [
      ["str = 'Programming! I love it! What about you?'", str = 'Programming! I love it! What about you?'],
      ["str[13]", str[13]],
      ["str.slice(13)", str.slice(13)],
      ["str[13, 10]", str[13, 10]],
      ["str.slice(13, 10)", str.slice(13, 10)],
      ["str[13..-17]", str[13..-17]],
      ["str['I love it!']", str['I love it!']],
      ["str[/[abc](.)\\1/]", str[/[abc](.)\1/]]
    ]


    @usefulMethodsList = [
        ["'pROgraMMing'.capitalize",'pROgraMMing'.capitalize],
        ["'Programming'.downcase",'Programming'.downcase],
        ["'Programming'.chars",'Programming'.chars.to_s],
        ["'Programming'.index('gra')",'Programming'.index('gra').to_s],
        ["'Programming'.insert(0, 'Extreme ')",'Programming'.insert(0, 'Extreme ')],
        ["'Programming'.match(/(.)\\1/)",'Programming'.match(/(.)\1/).to_s],
        ["'Programming'.partition('gra')",'Programming'.partition('gra').to_s],
        ["'Programming'.reverse",'Programming'.reverse],
        ["'Programming! I love it! What about you?'.split",'Programming! I love it! What about you?'.split.to_s],
        ["'Programming!_I love it!_What about you?'.split('_')",'Programming!_I love it!_What about you?'.split('_').to_s]]
  end
  def get_create_string_list
    @createStringList
  end
  def get_interpolation_list
    @interpolationList
  end
  def get_concatenation_list
    @concatenationList
  end
  def get_accessing_list
    @accessingList
  end
  def get_useful_methods_list
    @usefulMethodsList
  end
end