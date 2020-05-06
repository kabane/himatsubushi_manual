class ContentsController < ApplicationController

  def index
    @q = Content.ransack(params[:q])
    @contents = @q.result.includes(:categories).to_a.uniq
    @categories = Category.all
  end

  def show
    @content = Content.find(params[:id])
  end
end
