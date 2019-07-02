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

end
