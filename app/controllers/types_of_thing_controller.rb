class TypesOfThingController < ApplicationController


  def show
    @type_of_thing = TypeOfThing.find(params[:id])
  end

end
