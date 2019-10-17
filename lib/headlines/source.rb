class Headlines::Source

    attr_accessor :name, :url, :headline1, :headline2, :headline1_url, :headline2_url, :headlines_ary, :url_ary

    @@all = []

    def initialize(name, url, headline1, headline2, headline1_url, headline2_url, headlines_ary, url_ary)
        @name = name
        @url = url 
        @headline1 = headline1
        @headline2 = headline2
        @headline1_url = headline1_url
        @headline2_url = headline2_url
        @headlines_ary = headlines_ary
        @url_ary = url_ary
        @@all << self
    end
 
    def self.all
        @@all
    end


    
 end
