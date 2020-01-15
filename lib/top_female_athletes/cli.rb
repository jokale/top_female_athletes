

class TopFemaleAthletes::CLI 
  
  def call      
    puts "Top Female Athletes!"
  athlete_list
    start 
    goodbye
  end  
  
  def athlete_list

    puts "Athlete list"
  end 
  
  def start
   
    
    input = nil 
    while input!= "exit"
     puts "Enter the index number of the athlete you want to learn more about or type list to see list of the athlete or type exit to enter"
    input = gets.strip.downcase
    case input 
    when "1"
      puts "More information on Athlete..."
      when "2"
        puts "More information on Athlete 2"
        when "list"
          puts athlete_list
       end 
     end 
  end 
  
  def goodbye
    puts "goodbye have a nice day!"
  end 
  
end 
  
