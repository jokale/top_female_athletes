require "pry"
class TopFemaleAthletes::Athlete_List 
  
  attr_accessor :name, :description
  
  def self.list
    puts "Athlete list"
    self.scrape_athlete 
  end 
  
  def self.scrape_athlete
    athletes = []
    
    athletes << self.scrape_bi 
    
    athletes
  end 
  
  def self.scrape_bi
    doc = Nokogiri::HTML(open("https://www.businessinsider.com/iconic-female-athletes-women-sports-2019-7?r=US&IR=T"))
    
    binding.pry 
  
     athlete_list = self.new 
   
    name = doc.search("h2.slide-title-text").text
    
    description = doc.search("div.slide-layout.clearfix p").text
    
    # athlete_list.name = page.css(".slide-title-text").text.strip
    # athlete_list.description = page.css("div.slide-layout.clearfix p").text
    # athlete_list.url = "https://www.businessinsider.com/iconic-female-athletes-women-sports-2019-7?r=US&IR=T"
     
     end 
  
  
end 