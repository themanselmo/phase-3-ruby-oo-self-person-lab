# your code goes here
require "pry"
class Person 

    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(param)
        if(param > 10 || param < 0)
            puts "invalid input"
        else
            @happiness=param
        end
    end

    def hygiene=(param)
        if(param > 10 || param < 0)
            puts "invalid input"
        else
            @hygiene=param
        end
    end

    def clean?
        if(@hygiene > 7)
            true
        else
            false
        end
    end

    def happy? 
        if(@happiness > 7)
            true
        else
            false
        end
    end

    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        @hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @happiness += 2
        @hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        @happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(friend, topic)
        if(topic = "politics")
            @happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif(topic = "weather")
            @happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end

binding.pry
0