class Headlines::Source

    attr_accessor :name, :url, :headlines_ary, :url_ary

    @@all = []

    def initialize(name, url, headlines_ary, url_ary)
        @name = name
        @url = url 
        @headlines_ary = headlines_ary
        @url_ary = url_ary
        @@all << self
    end
 
    def self.all
        @@all
    end


    
 end
