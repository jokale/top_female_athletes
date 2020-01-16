class TopFemaleAthletes::Athlete_List 
  
  attr_accessor :name, :description
  
  def self.list
    puts "Athlete list"
    self.scrape_athlete 
  end 
  
  def self.scrape_athlete
    @athletes = []
    
    @athletes << self.scrape_bi 
    
    @athletes
  end 
  
  def self.scrape_bi
    page = Nokogiri::HTML(open("https://www.businessinsider.com/iconic-female-athletes-women-sports-2019-7?r=US&IR=T"))
    page.css(".slide-title-text").each_with_index  do  |top_female_athletes, index|
    
    athlete_list = self.new 
    
    athlete_list.name = name = page.css(".slide-title-text")[index].text.strip
    athlete_list.description = page.css("div.slide-layout.clearfix p")[index].text
     
    # athlete_list.name = doc.search(".slide-title-text").text
    # athlete_list.description = doc.search("div.slide-layout.clearfix p").text
    
    # page.css("div.slide-layout.clearfix p")[index].text
  end 
  
  
end 
end 