class BloggersController < ApplicationController 

    def index 
        @bloggers = Blogger.all
    end

    def show 
        @posts = Post.all 

        @blogger = Blogger.find(params[:id])
    end 

    def posts
        Post.all.select { |post| post.blogger_id == self}
    end 
end 
