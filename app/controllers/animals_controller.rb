class AnimalsController < ApplicationController
    def index 
        animals = Animal.all 
        random = animals.sample
        render json: random, include: [:comments]
    end 

    def show 
        animal = Animal.find_by(id: params[:id])
        render json: animal, include: [:comments]
    end 

    def first 
        animal = Animal.all.first
        render json: animal, include: [:comments] 
    end 
end 