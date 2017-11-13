class WakarusController < ApplicationController
  def create
    @wakaru = Wakaru.new(user_id: current_user.id, reply_id: params[:reply_id])
    @wakaru.save
    redirect_to("/posts/#{params[:post_id]}")
  end

  def destroy
    @wakaru = Wakaru.find_by(user_id: current_user.id, reply_id: params[:reply_id])
    @wakaru.destroy
    redirect_to("/posts/#{params[:post_id]}")
  end
end
