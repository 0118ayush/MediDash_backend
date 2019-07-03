class PatientsController < ApplicationController

    def index 
        patients = Patient.all 
        render json: patients, include: [:appointments]
    end

    def show 
        patient = Patient.find_by(id: params[:id])
        render json: patient, include: [:appointments]
    end 

    def create 
        
        patient = Patient.new(user_params)
        if patient.save
            render json: patient 
        else 
            render json: {error: "We are finding difficulty saving the Patient, please check your information."}, status: 420
        end 
    end     


    private

    def user_params
     params.require(:patient).permit!
    end 


end
