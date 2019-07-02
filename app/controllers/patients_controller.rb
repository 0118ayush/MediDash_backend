class PatientsController < ApplicationController

    def index 
        patients = Patient.all 
        render json: patients, include: [:appointments]
    end

    def show 
        patient = Patient.find_by(id: params[:id])
        render json: patient, include: [:appointments]
    end 

end
