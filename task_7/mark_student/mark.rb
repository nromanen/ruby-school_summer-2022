class Mark
    attr_accessor :subject_name
    attr_accessor :mark

    def initialize(subject, mark)
        @subject_name = subject
        @mark = mark
    end

    def to_s
        "#{@subject_name} : #{@mark}"
      end
    
end