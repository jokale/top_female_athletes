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
  
  
end 