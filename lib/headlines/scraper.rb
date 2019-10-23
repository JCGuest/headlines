class Headlines::Scraper

    attr_accessor :name, :url, :headlines_ary, :url_ary




    def self.scrape_huff
        doc = Nokogiri::HTML(open("https://www.huffpost.com"))

        source = self.new
        source.headlines_ary = []
        source.url_ary = []
        
        source.name = "Huffington Post"
        source.url = "https://huffpost.com"
        source.headlines_ary[0] = doc.search("#zone-main > div > div > div > div > div > div > a > div").text.strip
        source.url_ary[0] = doc.search("#zone-main > div > div > div > div > div > div > a").attribute("href").value
        source.headlines_ary[1] = doc.search("#zone-left > div.zone__content > div:nth-child(1) > div > div > div > div > a > div").text.strip
        source.url_ary[1] = doc.search("#zone-left > div.zone__content > div:nth-child(1) > div > div > div > div > a").attribute("href").value
        source.headlines_ary[2] = doc.search("#zone-left > div.zone__content > div:nth-child(2) > div > div > div > div > a > div").text.strip
        source.url_ary[2] = doc.search("#zone-left > div.zone__content > div:nth-child(2) > div > a").attribute("href").value
        source.headlines_ary[3] = doc.search("#zone-left > div.zone__content > div:nth-child(3) > div > div > div > div > a > div").text.strip
        source.url_ary[3] = doc.search("#zone-left > div.zone__content > div:nth-child(3) > div > a").attribute("href").value
        source.headlines_ary[4] = doc.search("#zone-left > div.zone__content > div:nth-child(4) > div > div > div > div > a > div").text.strip
        source.url_ary[4] = doc.search("#zone-left > div.zone__content > div:nth-child(4) > div > a").attribute("href").value
        source.headlines_ary[5] = doc.search("#zone-left > div.zone__content > div:nth-child(5) > div > div > div > div > a > div").text.strip
        source.url_ary[5] = doc.search("#zone-left > div.zone__content > div:nth-child(5) > div > a").attribute("href").value
        source.headlines_ary[6] = doc.search("#zone-left > div.zone__content > div:nth-child(6) > div > div > div > div > a > div").text.strip
        source.url_ary[6] = doc.search("#zone-left > div.zone__content > div:nth-child(6) > div > a").attribute("href").value

        Headlines::Source.new(source.name, source.url, source.headlines_ary, source.url_ary)
        source
    end

    def self.scrape_abc
        doc = Nokogiri::HTML(open("https://abcnews.go.com"))

        source = self.new
        source.headlines_ary = []
        source.url_ary = []

        source.name = "ABC News"
        source.url = "https://abcnews.go.com"
        source.headlines_ary[0] = doc.search("figcaption div h1 a.black-ln").first.text.strip
        source.url_ary[0] = doc.search("figcaption div h1 a").first["href"]
        source.headlines_ary[1] = doc.search("figcaption div h1 a.black-ln")[2].text.strip
        source.url_ary[1] = doc.search("figcaption div h1 a.black-ln")[2]["href"]
        source.headlines_ary[2] = doc.search("figcaption div h1 a.black-ln")[3].text.strip
        source.url_ary[2] = doc.search("figcaption div h1 a.black-ln")[3]["href"]
        source.headlines_ary[3] = doc.search("figcaption div h1 a.black-ln")[4].text.strip
        source.url_ary[3] = doc.search("figcaption div h1 a.black-ln")[4]["href"]

        Headlines::Source.new(source.name, source.url, source.headlines_ary, source.url_ary)
        source
    end

    def self.scrape_tbi
        doc = Nokogiri::HTML(open("https://www.thebureauinvestigates.com"))

        source = self.new
        source.headlines_ary = []
        source.url_ary = []

        source.name = "The Bureau Investigates"
        source.url = "https://www.thebureauinvestigates.com"
        source.headlines_ary[0] = doc.search("body > a > div.tb-c-story-header__heading.tb-o-layout-width > h1").text.strip
        source.url_ary[0] = doc.search("body > a").attribute("href").value
        source.headlines_ary[1] = doc.search("body > div.tb-c-story-previews.tb-c-story-previews--homepage > div > div.tb-o-grid > div:nth-child(1) > a > h2").text.strip
        source.url_ary[1] = doc.search("body > div.tb-c-story-previews.tb-c-story-previews--homepage > div > div.tb-o-grid > div:nth-child(1) > a").attribute("href").value
        source.headlines_ary[2] = doc.search("body > div.tb-c-story-previews.tb-c-story-previews--homepage > div > div.tb-o-grid > div:nth-child(2) > a > h2").text.strip
        source.url_ary[2] = doc.search("body > div.tb-c-story-previews.tb-c-story-previews--homepage > div > div.tb-o-grid > div:nth-child(2) > a").attribute("href").value
        source.headlines_ary[3] = doc.search("body > div.tb-c-story-previews.tb-c-story-previews--homepage > div > div.tb-o-grid > div:nth-child(3) > a > h2").text.strip
        source.url_ary[3] = doc.search("body > div.tb-c-story-previews.tb-c-story-previews--homepage > div > div.tb-o-grid > div:nth-child(3) > a").attribute("href").value
        source.headlines_ary[4] = doc.search("body > div.tb-c-story-previews.tb-c-story-previews--homepage > div > div.tb-o-grid > div:nth-child(4) > a > h2").text.strip
        source.url_ary[4] = doc.search("body > div.tb-c-story-previews.tb-c-story-previews--homepage > div > div.tb-o-grid > div:nth-child(4) > a").attribute("href").value

        Headlines::Source.new(source.name, source.url, source.headlines_ary, source.url_ary)
        source
    end

end