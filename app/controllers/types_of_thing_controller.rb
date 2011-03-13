class TypesOfThingController < ApplicationController

  def index
    @types_of_thing = TypeOfThing.all(:order => :name)
  end

  def show
    @type_of_thing = TypeOfThing.find(params[:id])
  end

end
