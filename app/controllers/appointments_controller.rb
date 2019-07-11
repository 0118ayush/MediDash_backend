class AppointmentsController < ApplicationController

    def index
        appointments = Appointment.all 
        render json: appointments, include: [:doctor, :patient]
    end

    def show 
        appointment = Appointment.find_by(id: params[:id])
        render json: appointment
    end 

    def destroy
        appointment = Appointment.find_by(id: params[:id])
        appointment.destroy
    end 

    def create 
        appointment = Appointment.new(appointment_params)
        if appointment.save
            render json: appointment, include: [:patient]
        else 
            render json: {error: "Difficulty saving the Appointment, please check your information."}, status: 420
        end 
    end     

    def appointment_by_month
        appointment_counts = Appointment.by_month
        if appointment_counts 
            render json: appointment_counts
        end 
    end 

    def todays_appointments 
        appointments = Appointment.todays_appointments
        render json: appointments, include: [:doctor, :patient]
    end 

    private

    def appointment_params
     params.require(:appointment).permit!
    end 

end
