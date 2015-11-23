class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :load_reviewable

  def index
    @reviews = @reviewable.reviews
  end

  def new
    @review = @reviewable.reviews.new
  end

  def create
    @review = @reviewable.reviews.new(params[:review])
    if @review.save
      redirect_to @reviewable, notice: "Review created."
    else
      render :new
    end
  end

  def destroy
    @review = @reviewable.reviews.find(params[:id])
    @review.destroy
    redirect_to @reviewable, notice: "Review deleted."
  end

private

  def review_params
    params.require(:review).permit(:name, :comment, :rating)
  end

  def set_review
    @review = Review.find(params[:id])
  end

  def load_reviewable
    resource, id = request.path.split('/')[1, 2]
    @reviewable = resource.singularize.classify.constantize.find(id)
  end

  # alternative option:
  # def load_reviewable
  #   klass = [Article, Photo, Event].detect { |c| params["#{c.name.underscore}_id"] }
  #   @reviewable = klass.find(params["#{klass.name.underscore}_id"])
  # end
end #ReviewsController