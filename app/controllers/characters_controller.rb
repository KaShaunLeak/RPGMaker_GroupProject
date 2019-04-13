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
        @character.save
        redirect_to @character
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
        
        redirect_to character_path
    end

<<<<<<< HEAD
<<<<<<< HEAD
    private 
    def characters_params
=======
     
=======
private
>>>>>>> f7c27211d47615aa0000368d32e3994944e4dc46
    def character_params
>>>>>>> 7a2c480b06c8704a4b83a9afccfe7df2d384482d
        params.require(:character).permit(:title, :text)
    end
end