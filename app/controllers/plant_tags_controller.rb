class PlantTagsController < ApplicationController
  def new
    @plant = Plant.find(params[:plant_id])
    @plant_tag = PlantTag.new
  end

  def create
    #params is => {"authenticity_token"=>"[FILTERED]", "plant_tag"=>{"tag"=>"2"}, "commit"=>"Add tag!", "plant_id"=>"5"}
    @plant = Plant.find(params[:plant_id])
    @tags = Tag.where(id: params[:plant_tag][:tag]) # params[:plant_tag][:tag] will return an array
    @tags.each do |tag|
      @plant_tag = PlantTag.new(plant: @plant, tag: tag)
      @plant_tag.save
    end
    redirect_to garden_path(@plant.garden)
  end
end
