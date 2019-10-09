class Headlines::Source


    attr_accessor :name, :url, :headline1, :headline2, :headline1_url, :headline2_url 
 
    def self.sources
        source = []
        source << self.scrape_huff
        source << self.scrape_abc
    end

    def self.scrape_huff
        doc = Nokogiri::HTML(open("https://www.huffpost.com"))

        source = self.new
        source.name = "Huffington Post"
        source.url = "https://huffpost.com"
        source.headline1 = doc.search("#zone-main > div > div > div > div > div > div > a > div").text.strip
        source.headline1_url = doc.search("#zone-main > div > div > div > div > div > div > a").attribute("href").value
        source.headline2 = doc.search("#zone-left > div.zone__content > div:nth-child(1) > div > div > div > div > a > div").text.strip
        source.headline2_url = doc.search("#zone-left > div.zone__content > div:nth-child(1) > div > div > div > div > a").attribute("href").value
        source
    end

    def self.scrape_abc
        doc = Nokogiri::HTML(open("https://abcnews.go.com"))

        source = self.new
        source.name = "ABC News"
        source.url = "https://abcnews.go.com"
        source.headline1 = doc.search("figcaption div h1 a.black-ln").first.text.strip
        source.headline1_url = doc.search("figcaption div h1 a").first["href"]
        source.headline2 = doc.search("figcaption div h1 a.black-ln")[2].text.strip
        source.headline2_url = doc.search("figcaption div h1 a.black-ln")[2]["href"]
        source
    end
    
    
end