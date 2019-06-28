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
            render json: {email: doctor.email, token: issue_token({id: doctor.id})}
        else 
            render json: {error: "Username or Password does not exist."}, status: 401
        end 
    end 


    def validate
       doctor = current_user
        # byebug
        if doctor 
            render json: {email: doctor.email, token: issue_token({id: doctor.id})}
        else 
            render json: {error: "User not found."}, status: 404
        end 
    end  

    def user
        # byebug
        doctor = current_user
        # byebug
        if doctor
            render json: doctor
        else
            render json: {error: "Token not found."}, status: 400
        end 
    end

    def appointments
        doctor = current_user
        # byebug
        if doctor
            render json: doctor.appointments
        else
            render json: {error: "Token not found."}, status: 400
        end 
    end 

    def patients
        doctor = current_user
        # byebug
        if doctor
            render json: doctor.patients
        else
            render json: {error: "Token not found."}, status: 400
        end 
    end 

end