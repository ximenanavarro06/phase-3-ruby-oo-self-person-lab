class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def iniitialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness =(num)
        @happiness = if num > 10 
                        10
                    elseif num < 0
                    0
                    else
                        num
                    end

    end

    def hygiene =(num)
        @hygiene = if num > 10 
                        10
                    elseif num < 0
                    0
                    else
                        num
                    end

    end

    def clean?
        self.hygiene > 7
    end

    def happy?
        @happiness > 7
    end

    def get_paid(amount)
        self.bank_account += amount
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        " ♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic
        when "politics"
            [self, friend].each {|person| person.happiness -= 2}
            "blah blah partisan blah lobyist"

        when "weather"
            [self, friend].each {|person| person.happiness += 1}
            "blah blah sun blah rain"

        else 
            "blah blah blah blah blah"
        end
    end

end

a = Person.new ("Ximena")
b = Person.new("RAwr")
# friend = a.call_friend(b) test
puts friend