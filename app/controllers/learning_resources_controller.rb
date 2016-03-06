class LearningResourcesController < ApplicationController

  def index
    @learning_resources = LearningResource.all
  end
end
