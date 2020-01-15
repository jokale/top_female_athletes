

class TopFemaleAthletes::CLI 
  
  def call 
  
    athlete_list
    start 
  end  
  
  def athlete_list
      puts "Top Female Athletes!"
    puts "Athlete list"
  end 
  
  def start
    puts "Enter the index number of the athlete you want to learn more about or type exit to enter"
    
    while input!= "exit"
    
    input = gets.strip.downcase
    case input 
    when "1"
      puts "More information on Athlete..."
      when "2"
        puts "More information on Athlete 2"
       end 
     end 
  end 
  
