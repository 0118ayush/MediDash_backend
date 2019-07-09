class Doctor < ApplicationRecord
    has_secure_password
    has_many :appointments 
    has_many :patients, through: :appointments


    def is_available
        current_appointment = self.appointments.find{|appointment| appointment.date == Date.today && 
            appointment.from_time.hour < Time.new.hour && 
            appointment.to_time.hour > Time.new.hour && 

            if appointment.from_time.hour ==  Time.new.hour 
                appointment.from_time.min < Time.new.min
            elsif appointment.to_time.hour == Time.new.hour 
                appointment.to_time.min > Time.new.min
            end
            # appointment.from_time.min < Time.new.min && 
            # appointment.to_time.hour >= Time.new.hour
        }
        !current_appointment
    end

    def working_today 
    #     self.appointments.find{|appointment| appointment.date == Date.today}
        # Doctor.all.select(|doctor| doctor.working_today)

        # self.appointments.select{|doctor| doctor.appointments.}
    end



    def self.departments
        self.all.map{|d| d.department}.uniq
    end

end
