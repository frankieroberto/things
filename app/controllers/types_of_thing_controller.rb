class TypesOfThingController < ApplicationController

  def index
    @types_of_thing = TypeOfThing.all(:order => :name)
  end

  def show
    begin
      @type_of_thing = TypeOfThing.find_by_name!(params[:id])
    rescue
      @type_of_thing = TypeOfThing.find(params[:id])
      redirect_to(type_path(@type_of_thing.name), :status => :moved_permanently) and return
    end
  end

end