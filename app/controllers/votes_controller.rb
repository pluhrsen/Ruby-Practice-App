class VotesController < ApplicationController
  def create
    @story = Story.find(params[:story_id])
    @story.votes.create
    # respond_to do |format|
    #   format.html { redirect_to @story, notice: 'Vote was successfully cast.' }
    #   format.js {}
  # end
  redirect_to @story, notice: 'Vote was successfully cast.'
  end
end
