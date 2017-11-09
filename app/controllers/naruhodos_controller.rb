class NaruhodosController < ApplicationController
  def create
    @naruhodo = Naruhodo.new(user_id: @current_user.id, reply_id: params[:reply_id])
  end
  @naruhodo.save
  redirect_to("/posts/#{paramns[:post_id]}")
end
