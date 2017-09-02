namespace :demo do 
    desc "Demo running a rake task"
    task say_hello: :environment do 
        puts "Hello"
    end

    task pick_winner: :environment do
        user = User.last
        puts "Winner: #{user.email}"
    end

    task all: [:say_hello, :pick_winner]
end