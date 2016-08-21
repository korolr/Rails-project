class ContentsController < ApplicationController
  before_action :set_content, only: [:show, :edit, :update, :destroy]

  # GET /contents
  # GET /contents.json
  def index
    @contents = Content.where(["title ILIKE ? OR prev ILIKE ? OR content ILIKE ?", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%"])
  end

  # GET /contents/1
  # GET /contents/1.json
  def show
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_content
      @content = Content.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def content_params
      params.require(:content).permit(:title, :prev, :content)
    end
end
