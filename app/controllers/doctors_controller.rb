class DoctorsController < ApplicationController

    def index 
        doctors = Doctor.all 
        render json: doctors, include: :appointments
    end

    def show 
        doctor = Doctor.find_by(id: params[:id])
        render json: doctor, include: :appointments
    end 

    

end
