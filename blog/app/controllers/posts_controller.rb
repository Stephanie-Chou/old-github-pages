class PostsController < ApplicationController
  def index
    @posts = Post.all
    # posts should have an abstract which gets stored. it is pulled out of the markdown.
    # all a user has to do is write the markdown and then the rest is stored in the db

    returnVal = {posts: @posts, file: @posts.last.renderMarkdown}
    respond_to do |format|
      format.json {render json: returnVal}
    end
  end


  def show
    p "*" *100
    p params
    @post = Post.find(params[:id])
    file = @post.renderMarkdown
    respond_to do |format|
      format.json {render json: @post}
    end
  end

end


## WHAT DO I WANT TO DO?
  # I want to show posts that I wrote
  # I want each post to have a title, body and date.
    # I want to be able to indicate sections when I type stuff out
    # the input should have a text editor and allow me to pick section headers

  # I want to be able to write those posts and store them
  # I want to have a SPA to load each post
