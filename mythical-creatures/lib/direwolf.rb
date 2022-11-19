class Direwolf
    attr_reader :name, :home, :size, :starks, :starkCount
    
    def initialize (name, home = 'Beyond the Wall', size = 'Massive', starks = [], starkCount = 0)
        @name = name 
        @home = home
        @size = size
        @starks = starks
        @starkCount = starkCount
    end
    def starks_to_protect
        if @starks != []
            arr = [] 
            @starks.each{|stark| stark.location == @home ? arr.push(stark) : ""}
            return arr
        else 
            ""
        end
    end
    def protects(stark)
        @starkCount +=1
        if @starkCount < 3 
            @starks.push(stark)
            stark.protected (true)
        end
    end
    def leaves(stark)
        if @starks.include?(stark) 
            @starkCount -=1
            stark.protected (false)
            @starks.delete(stark)
            return stark
        else 
            return stark
        end
    end
    def hunts_white_walkers?
        starkCount == 0 ? true : false
    end
end

class Stark
    attr_reader :name, :location, :safe
    def initialize (name, location = 'Winterfell', safe = false)
        @name = name 
        @location = location
        @safe = safe
    end
    def name
        @name
    end
    def safe?
        @safe
    end
    def house_words
        'Winter is Coming'
    end
    def protected (bool)
        @safe = bool
    end

end