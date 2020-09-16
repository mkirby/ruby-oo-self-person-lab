# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account, :salary

    def initialize(name)
        @name = name 
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness)
        @happiness = happiness
        #[@happiness, 0, 10].sort[1]
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        end
    end

    def hygiene=(hygiene)
        @hygiene = hygiene
        #[@hygiene, 0, 10].sort[1]
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        end
    end

    def happy?
        @happiness > 7 ? true : false
    end

    def clean?
        @hygiene > 7 ? true : false
    end

    def get_paid(salary)
        @salary = salary 
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        @hygiene = @hygiene + 4 
        self.hygiene=(@hygiene)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @hygiene -= 3
        self.hygiene=(@hygiene)
        @happiness += 2
        self.happiness=(@happiness)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        # I think this wants us to call the happiness function
        self.happiness=(self.happiness + 3)
        # but we don't need to in order to pass
        friend.happiness=(friend.happiness + 3)
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness=(self.happiness - 2)
            friend.happiness=(friend.happiness - 2)
            p "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness=(self.happiness + 1)
            friend.happiness=(friend.happiness + 1)
            p "blah blah sun blah rain"
        else
            p "blah blah blah blah blah"
        end
    end

end
