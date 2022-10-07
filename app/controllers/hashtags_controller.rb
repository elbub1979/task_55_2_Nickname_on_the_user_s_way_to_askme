class HashtagsController < ApplicationController
  def show
    @hashtag = Hashtag.find_by_hashname(params[:hashname])
    @questions = @hashtag.questions
  end
end
