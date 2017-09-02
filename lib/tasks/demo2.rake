namespace :demo2 do 
    desc "Demo running a rake task"
    task say_hello: :environment do 
        puts "Hello"
    end

    task pick_winner: :environment do
        puts "Winner: #{pick(User).email}"
    end

    task all: [:say_hello, :pick_winner]

    def pick(model_class)
        model_class.find(1)
    end
end