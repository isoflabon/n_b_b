class NaruhodosController < ApplicationController
  def create
    @naruhodo = Naruhodo.new(user_id: @current_user.id, reply_id: params[:reply_id])
    @naruhodo.save
    redirect_to("/posts/#{paramns[:post_id]}")
  end

  def destroy
    @naruhodo = Naruhodo.find_by(user_id: @current_user.id, reply_id: params[:reply_id])
    @naruhodo.destroy
    redirect_to("/posts/#{params[:post_id]}")
  end
end
