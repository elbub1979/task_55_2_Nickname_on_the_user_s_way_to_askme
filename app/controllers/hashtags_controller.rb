class HashtagsController < ApplicationController
  def show
    @hashtag = Hashtag.find_by_hashname(params[:hashname])
    not_found if @hashtag.nil?
  end

  private

  def not_found
    render file: "#{Rails.root}/public/404.html", status: :not_found
  end
end
