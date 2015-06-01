class PopularPostsController < ApplicationController

  class Post
    attr_reader :name, :photo
    def initialize(name, photo)
      @name = name
      @photo = photo
    end
  end

  before_action do

    @post_name = []
    @post_name << Post.new("Camel Rides Are The Coolest" ,'another-cool-picture.jpg')
    @post_name << Post.new("Follow The Leader, Leader, Leader" ,"img2.JPG")
    @post_name << Post.new("Sit back and let us lead you" ,"ad.JPG")
    @post_name << Post.new("Spice Up Your Life in Marrakesh" ,"spices.JPG")
    @post_name << Post.new("Oh, A Cool Post in the Desert" ,"village.JPG")
  end



  def index
    @post = @post_name.first
    render :show
  end

  def show
    @post = @post_name.find do |post|
      post.name == params[:post_name]
    end
  end




end
