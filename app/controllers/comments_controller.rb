class CommentsController < ApplicationController
    def index 
        comments = Comment.all 
        render json: comments, only: [:id, :animal_id, :user_id, :text]
    end 

    def show 
        comment = Comment.find_by(id: params[:id])
        render json: comment, only: [:id, :animal_id, :user_id, :text]
    end 

    def create 
        
       comment = Comment.create(comment_params) 

        render json: comment
    end
    
    def destroy 
        comment = Comment.find(params[:id])

        comment.destroy 
        render json: {}
    end 

    def comment_params
        params.require(:comment).permit(:animal_id, :user_id, :text)
      end
end
