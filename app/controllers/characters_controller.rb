class CharactersController < ApplicationController
    def index
        @characters = Character.all
    end
    def show
        @character = Character.find(params[:id])
    end
    def new
        @character = Character.new
    end
    def create
        @character = Character.new(character_params)
        if @character.save
            redirect_to @character
        else
            render 'new'
        end
    end
    
    def edit
        @character = Character.find(params[:id])
    end

    def update
        
        @character = Character.find(params[:id])
        if @character.update(character_params)
            redirect_to @character
        else
            render 'edit'
        end
    end
    
    def destroy

        @character = Character.find(params[:id])
        @character.destroy
        redirect_to characters_path
        
    end


private
    def character_params
        params.require(:character).permit(:name, :sex, :age, :race, :job, :birthday, :magic, :birth, :country, :personality, :backstory)
    end
end