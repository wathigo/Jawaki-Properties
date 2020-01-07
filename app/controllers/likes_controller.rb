class LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    @liked = current_user.likes.find_by(property_id: params[:format])
    if !@liked
      current_user.likes.create!(property_id: params[:format])
      redirect_back(fallback_location: root_path)
    else
      destroy
    end
  end

  def destroy
    @liked ||= current_user.likes.find_by(property_id: params[:format])
    redirect_back(fallback_location: root_path) if @liked.delete
  end

  private
end
