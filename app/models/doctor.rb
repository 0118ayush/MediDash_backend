class Doctor < ApplicationRecord
    has_secure_password
    has_many :appointments 
    has_many :patients, through: :appointments


    def current_appointment
        current_appointment = self.appointments.find do |appointment| 
            start_time_with_date = Time.parse(appointment.from_time.to_s)
            end_time_with_date = Time.parse(appointment.to_time.to_s)


            start_time = start_time_with_date.strftime("%H%M") #=> '04:00:00'
            end_time = end_time_with_date.strftime("%H%M") #=> '11:58:07'

            current_time = Time.now.strftime("%H%M") #=> '01:45:27' (my current time)

            appointment.date == Date.today && current_time.between?(start_time, end_time) #=> false
        end
        current_appointment
    end

    # def working_today 
    #     self.appointments.find{|appointment| appointment.date == Date.today}
    #     Doctor.all.select(|doctor| doctor.working_today)

    #     self.appointments.select{|doctor| doctor.appointments.}
    # end

    def self.departments
        self.all.map{|d| d.department}.uniq
    end

end
