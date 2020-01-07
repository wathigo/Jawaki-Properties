class LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    @liked = current_user.likes.find_by(property_id: params[:property_id])
    if !@liked
      current_user.likes.create(user_id: current_user.id, property_id: params[:property_id])
      redirect_back(fallback_location: root_path)
    else
      destroy
    end
  end

  def destroy
    @property ||= Property.find(property_id)
    @liked ||= @property.likes.find_by(user_id: current_user.id)
    redirect_back(fallback_location: root_path) if @liked.delete
  end

    private

    def post_params
    params.require(:like).permit(:property_id)
  end
end
