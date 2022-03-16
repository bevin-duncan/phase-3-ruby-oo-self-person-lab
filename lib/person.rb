# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name) 
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end


    def happiness=(num)
        @happiness = if num > 10
            10
        elsif num < 0
            0
        else
            num 
        end
        
    end 
    
    def hygiene=(num)
        @hygiene = if num > 10
            10
        elsif num < 0
            0
        else 
            num 
        end
       
    end 

    def clean? 
        self.hygiene > 7
    end

    def happy? 
        self.happiness > 7
    end 

    def get_paid(amount) 
        @bank_account=self.bank_account += amount 
        "all about the benjamins"
    end 

    def take_bath
        @hygiene=self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
      end
    
      def work_out
        @hygiene=self.hygiene -=3
        @happiness=self.happiness += 2

        return '♪ another one bites the dust ♫'
    end

    def call_friend person
        @happiness=self.happiness += 3
        person.happiness += 3
         "Hi #{person.name}! It's #{self.name}. How are you?"
    end
end

    def start_conversation person, topic
        case topic
        when 'politics'
            
            @happiness=self.happiness -=2
            person.happiness -=2
            return 'blah blah partisan blah lobbyist'
        when 'weather'
            
            @happiness=self.happiness +=1
            person.happiness += 1
            return 'blah blah sun blah rain'
        else
            return 'blah blah blah blah blah'
        end
    

    end

end