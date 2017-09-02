namespace :alert do 
    desc "Send email based on founded alerts"
    task send: :environment do    
        alerts = Givemealert.where("sendtodate >= ? AND sendtodate < ?", Time.zone.now.beginning_of_day, Time.zone.now.end_of_day) 
        alerts.each do |alert|
           UserMailer.send_email(alert).deliver_now
           puts "An alert: #{alert.sendtowho}"
        end
        
    end

end