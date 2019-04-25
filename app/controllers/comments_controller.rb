class CommentsController < ApplicationController
    def create
        @character = Character.find(params[:character_id])
        @comment = @character.comments.create(comment_params)
        redirect_to character_path(@character)
    end
    
    private
        def comment_params
            params.require(:comment).permit(:commenter, :body)
        end
end
