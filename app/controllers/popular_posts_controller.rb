class PopularPostsController < ApplicationController

  before_action do
    @post_name = ["Camel Rides Are The Coolest", "Follow The Leader, Leader, Leader", "Spice Up Your Life in Marrakesh", "Oh, A Cool Post in the Desert"]
    @pics = ['another-cool-picture.jpg', 'img2.JPG', 'spices.JPG',  'village.JPG']
  end



  def index
  end

  def show
    @popular_posts = params[:post_name]

    @header =  @post_name.find do |post|
    post == params[:post_name]
    # post.parameterize
    end

    # @post_name[(params[:post_name])]


  end




end
