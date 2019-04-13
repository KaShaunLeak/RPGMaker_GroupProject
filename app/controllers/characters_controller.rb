class CharactersController < ApplicationController
    def index
        @characters = Character.all
    end
    def show
        @characters = Characters.find(params[:id])
    end
    def new
        @characters = Characters.new
    end
    def create
        @characters = Characters.new(article_params)
        byebug
        
        if @characters.save
            byebug
            redirect_to @characters
        else
            render 'new'
        end
    end
    
    def edit
        @characters = Characters.find(params[:id])
    end

    def update
        @characters = Characters.find(params[:id])
        if @characters.update(article_params)
            redirect_to @characters
        else
            render 'edit'
        end
    end
    def destroy
        @characters = Characters.find(params[:id])
        @characters.destroy
        
        redirect_to articles_path
    end

private 
    def character_params
        params.require(:characters).permit(:title, :text)
    end
end

