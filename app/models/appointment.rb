class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient


  def self.by_month
     all_appointments_this_month = self.where("cast(strftime('%m', date) as int) = ?", DateTime.now.month)

    days_in_month = (1..Time.days_in_month(DateTime.now.month, DateTime.now.year)).to_a

    departments = {
      "All": days_in_month.map do |day|
        all_appointments_this_month.select{|appt| appt.date.day == day}.length
      end
    }

    Doctor.departments.each do |department|
      appointments_this_month = all_appointments_this_month.select{|appt| appt.doctor.department == department}

      departments[department] = days_in_month.map do |day|
        appointments_this_month.select{|appt| appt.date.day == day}.length
      end
    end
    
    departments

  end


  def self.todays_appointments 
    appointments = self.all.select do |appointment| 
      appointment.date == Date.today
    end
    appointments
  end 

  def self.availableDoctorAppointments 
   available_doctors = self.todays_appointments.select{|appointment| appointment.date == Date.today && 
      appointment.from_time.hour < Time.new.hour && 
      appointment.to_time.hour > Time.new.hour && 

      if appointment.from_time.hour ==  Time.new.hour 
          appointment.from_time.min < Time.new.min
      elsif appointment.to_time.hour == Time.new.hour 
          appointment.to_time.min > Time.new.min
      end
  }
    available_doctors
  end 

  


end
