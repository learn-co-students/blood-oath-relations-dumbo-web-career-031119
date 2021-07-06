class BloodOath

    attr_reader :initialization_date

    @@all = []

    def initialize(initialization_date)
        @initialization_date = initialization_date
        @@all << self
    end

    

    def self.all
        @@all
    end

end 