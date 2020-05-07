class Admin::ContentsController < Admin::ApplicationController
  before_action :set_content, only: [:show, :edit, :update, :destroy]

  def index
    @contents = Content.all
  end

  def show
  end

  def new
    user = User.first
    @content = user.contents.new
  end

  def create
    user = User.first
    @content = user.contents.new(content_params)

    respond_to do |format|
      if @content.save
        format.html { redirect_to [:admin, @content], notice: 'Content was successfully created.' }
        format.json { render :show, status: :created, location: @content }
      else
        format.html { render :new }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @content.update(content_params)
        format.html { redirect_to [:admin, @content], notice: 'Content was successfully updated.' }
        format.json { render :show, status: :ok, location: @content }
      else
        format.html { render :edit }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @content.destroy
    respond_to do |format|
      format.html { redirect_to admin_contents_url, notice: 'Content was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_content
    @content = Content.find(params[:id])
  end

  def content_params
    params.require(:content).permit(:title, :description, links_attributes: [:name, :url, :_destroy, :id])
  end

end
