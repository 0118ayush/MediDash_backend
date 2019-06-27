class DoctorsController < ApplicationController

    def index 
        doctors = Doctor.all 
        render json: doctors, include: :appointments
    end

    def show 
        doctor = Doctor.find_by(id: params[:id])
     
        if doctor
            render json: doctor, include: :appointments
        else
            render json: {error: "Doctor not found."}, status: 404
        end 
       
    end 

    def signin
        doctor = Doctor.find_by(email: params[:email])

        if doctor && doctor.authenticate(params[:password])
            render json: doctor
        else 
            render json: {error: "Username or Password does not exist"}, status: 401
        end 
    end 

    

end
