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
    doc = Nokogiri::HTML(open("https://www.businessinsider.com/iconic-female-athletes-women-sports-2019-7?r=US&IR=T"))
    
    
    athlete_list = self.new 
    athlete_list.name = doc.search(".slide-title-text").text
    athlete_list.description = doc.search("div.slide-layout.clearfix p").text
    
    # page.css("div.slide-layout.clearfix p")[index].text
  end 
  
  
end 