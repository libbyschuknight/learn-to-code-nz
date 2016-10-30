class LearningResourcesController < ApplicationController

  def index
    @learning_resources = LearningResource.all
  end

  def new
    @learning_resource = LearningResource.new
  end

  def create
    @learning_resource = LearningResource.new(learning_resource_params)
    @learning_resource.save

    redirect_to learning_resource_path(@learning_resource)
  end

  def show
    @learning_resource = LearningResource.find(params[:id])

  end

  def learning_resource_params
    params.require(:learning_resource).permit(
      :name,
      :description,
      :age_category,
      :delivery_method,
      :location,
      :event_category,
      :cost,
      :image_link,
      :website_link
    )
  end

end


#
# {"utf8"=>"✓",
#  "authenticity_token"=>"pzox1ItquiKD3lruBg7nTvI1hg9jm2iGau9X2sn1E5ISGk5ZMHWRm6HfkxWtQSx0qGjgcpw9ftLev3cg+V61gg==",
#  "learning_resource"=>{"name"=>"aksjdfklasjdf",
#  "description"=>"kasdflasdf",
#  "age_category"=>"kid",
#  "delivery_method"=>"online",
#  "location"=>"online_l",
#  "event_category"=>"course",
#  "cost"=>"aksdjfklajs",
#  "website_link"=>"askdjfaslk",
#  "image_link"=>"asjdflkasd"},
#  "commit"=>"Create Learning resource"}
