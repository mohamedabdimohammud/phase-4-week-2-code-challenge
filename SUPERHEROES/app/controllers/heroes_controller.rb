class HeroesController < ApplicationController
    def index
      heroes = Hero.all
      render json: heroes, only: [:id, :name, :super_name]
    end
  
    def show
      hero = Hero.find_by(id: params[:id])
      if hero
        render json: hero, only: [:id, :name, :super_name], include: { powers: { only: [:id, :name, :description] } }
      else
        render json: { error: 'Hero not found' }, status: :not_found
      end
    end
  end
  