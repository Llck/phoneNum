class MobsController < ApplicationController

before_action :current_mob, only: [:show, :edit, :update, :destroy]

def index
  @phone = Mob.all
end

def show

end

def new
   @phone = Mob.new
 end

def create
  mob = Mob.new(mob_params)
   mob.save
   redirect_to mob
end

def edit

 end

 def update
   @phone.update(mob_params)
   redirect_to @phone
 end

 def destroy
   @phone.destroy
   redirect_to mobs_path
 end

 def mob_params
   params.require(:mob).permit(:name,:number)
 end

private

def current_mob
  @phone ||= Mob.find_by(id: params[:id])
end

end
