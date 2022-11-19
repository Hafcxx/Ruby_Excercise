class Dragon
    attr_reader :name, :rider, :color, :hungry, :stomach
    
    def initialize (name, color, rider, hungry = true)
        @name = name 
        @rider = rider
        @color = color
        @hungry = hungry
        @stomach = 0
    end
    def hungry?
        hungry
    end
    def eat
        @stomach+= 1
        @stomach == 3 ? @hungry = false : ""
    end
end