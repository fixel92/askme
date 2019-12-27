class TagsController < ApplicationController
  before_action :set_tag, only: [:show]

  def show
    @questions = Question.joins(:tags).where('tags.text' => @tag.text)
  end

  private

  def set_tag
    @tag = Tag.find(params[:id])
  end
end
