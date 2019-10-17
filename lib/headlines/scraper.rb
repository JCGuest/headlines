class Headlines::Scraper

    attr_accessor :name, :url, :headline1, :headline2, :headline3, :headline4, :headline5, :headline6, :headline7,
    :headline1_url, :headline2_url, :headline3_url, :headline4_url, :headline5_url, :headline6_url, :headline7_url,
    :headlines_ary, :url_ary




    def self.scrape_huff
        doc = Nokogiri::HTML(open("https://www.huffpost.com"))
        

        source = self.new
        source.name = "Huffington Post"
        source.url = "https://huffpost.com"
        source.headline1 = doc.search("#zone-main > div > div > div > div > div > div > a > div").text.strip
        source.headline1_url = doc.search("#zone-main > div > div > div > div > div > div > a").attribute("href").value
        source.headline2 = doc.search("#zone-left > div.zone__content > div:nth-child(1) > div > div > div > div > a > div").text.strip
        source.headline2_url = doc.search("#zone-left > div.zone__content > div:nth-child(1) > div > div > div > div > a").attribute("href").value
        source.headline3 = doc.search("#zone-left > div.zone__content > div:nth-child(2) > div > div > div > div > a > div").text.strip
        source.headline3_url = doc.search("#zone-left > div.zone__content > div:nth-child(2) > div > a").attribute("href").value
        source.headline4 = doc.search("#zone-left > div.zone__content > div:nth-child(3) > div > div > div > div > a > div").text.strip
        source.headline4_url = doc.search("#zone-left > div.zone__content > div:nth-child(3) > div > a").attribute("href").value
        source.headline5 = doc.search("#zone-left > div.zone__content > div:nth-child(4) > div > div > div > div > a > div").text.strip
        source.headline5_url = doc.search("#zone-left > div.zone__content > div:nth-child(4) > div > a").attribute("href").value
        source.headline6 = doc.search("#zone-left > div.zone__content > div:nth-child(5) > div > div > div > div > a > div").text.strip
        source.headline6_url = doc.search("#zone-left > div.zone__content > div:nth-child(5) > div > a").attribute("href").value
        source.headline7 = doc.search("#zone-left > div.zone__content > div:nth-child(6) > div > div > div > div > a > div").text.strip
        source.headline7_url = doc.search("#zone-left > div.zone__content > div:nth-child(6) > div > a").attribute("href").value

        source.headlines_ary = []
        source.headlines_ary << source.headline1
        source.headlines_ary << source.headline2
        source.headlines_ary << source.headline3
        source.headlines_ary << source.headline4
        source.headlines_ary << source.headline5
        source.headlines_ary << source.headline6
        source.headlines_ary << source.headline7

        source.url_ary = []
        source.url_ary << source.headline1_url
        source.url_ary << source.headline2_url
        source.url_ary << source.headline3_url
        source.url_ary << source.headline4_url
        source.url_ary << source.headline5_url
        source.url_ary << source.headline6_url
        source.url_ary << source.headline7_url

        Headlines::Source.new(source.name, source.url, source.headlines_ary, source.url_ary)
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
        source.headline3 = doc.search("figcaption div h1 a.black-ln")[3].text.strip
        source.headline3_url = doc.search("figcaption div h1 a.black-ln")[3]["href"]
        source.headline4 = doc.search("figcaption div h1 a.black-ln")[4].text.strip
        source.headline3_url = doc.search("figcaption div h1 a.black-ln")[4]["href"]
        
        source.headlines_ary = []
        source.headlines_ary << source.headline1
        source.headlines_ary << source.headline2
        source.headlines_ary << source.headline3
        source.headlines_ary << source.headline4

        source.url_ary = []
        source.url_ary << source.headline1_url
        source.url_ary << source.headline2_url
        source.url_ary << source.headline3_url
        source.url_ary << source.headline4_url

        Headlines::Source.new(source.name, source.url, source.headlines_ary, source.url_ary)
        source
    end

    def self.scrape_tbi
        doc = Nokogiri::HTML(open("https://www.thebureauinvestigates.com"))

        source = self.new
        source.name = "The Bureau Investigates"
        source.url = "https://www.thebureauinvestigates.com"
        source.headline1 = doc.search("body > a > div.tb-c-story-header__heading.tb-o-layout-width > h1").text.strip
        source.headline1_url = doc.search("body > a").attribute("href").value
        source.headline2 = doc.search("body > div.tb-c-story-previews.tb-c-story-previews--homepage > div > div.tb-o-grid > div:nth-child(1) > a > h2").text.strip
        source.headline2_url = doc.search("body > div.tb-c-story-previews.tb-c-story-previews--homepage > div > div.tb-o-grid > div:nth-child(1) > a").attribute("href").value
        source.headline3 = doc.search("body > div.tb-c-story-previews.tb-c-story-previews--homepage > div > div.tb-o-grid > div:nth-child(2) > a > h2").text.strip
        source.headline3_url = doc.search("body > div.tb-c-story-previews.tb-c-story-previews--homepage > div > div.tb-o-grid > div:nth-child(2) > a").attribute("href").value
        source.headline4 = doc.search("body > div.tb-c-story-previews.tb-c-story-previews--homepage > div > div.tb-o-grid > div:nth-child(3) > a > h2").text.strip
        source.headline4_url = doc.search("body > div.tb-c-story-previews.tb-c-story-previews--homepage > div > div.tb-o-grid > div:nth-child(3) > a").attribute("href").value
        source.headline5 = doc.search("body > div.tb-c-story-previews.tb-c-story-previews--homepage > div > div.tb-o-grid > div:nth-child(4) > a > h2").text.strip
        source.headline5_url = doc.search("body > div.tb-c-story-previews.tb-c-story-previews--homepage > div > div.tb-o-grid > div:nth-child(4) > a").attribute("href").value

        source.headlines_ary = []
        source.headlines_ary << source.headline1
        source.headlines_ary << source.headline2
        source.headlines_ary << source.headline3
        source.headlines_ary << source.headline4
        source.headlines_ary << source.headline5

        source.url_ary = []
        source.url_ary << source.headline1_url
        source.url_ary << source.headline2_url
        source.url_ary << source.headline3_url
        source.url_ary << source.headline4_url
        source.url_ary << source.headline5_url

        Headlines::Source.new(source.name, source.url, source.headlines_ary, source.url_ary)
        source
    end

end