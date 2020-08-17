class CommentsController < ApplicationController
    def index 
        comments = Comment.all 
        render json: comments, only: [:id, :animal_id, :user_id, :text]
    end 

    def show 
        comment = Comment.find_by(id: params[:id])
        render json: comment, only: [:id, :animal_id, :user_id, :text]
    end 
end
