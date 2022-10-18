class MonstersController < ApplicationController
  def index
    @monsters = Monster.all.order(name: :desc)
  end

  def show
    @monster = Monster.find(params[:id])
  end

  def create
    @monster = Monster.new(monster_params)
    if @monster.save
        redirect_to @monster, notice: "Se ha creado el monstruo correctamente"
    else
        render :new
    end

  private
  
  def monster_params
    params.permit(:name, :decription, :phone, :birthdate) #Preguntar el por que funciona con require
  end

end 
end
