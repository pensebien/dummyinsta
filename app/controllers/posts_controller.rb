class PostsController < ApplicationController

            before_action :set_post, only: [:show, :edit, :update, :destroy]

            def index
                @posts = Post.all.order(created_at: :desc)
            end

            def new
                @post = Post.new

            end

            # def show

            # end

             def create
                @post = Post.create(post_params)
                if @post.save
                    flash[:success] = "Your post has been created!"

                    redirect_to posts_path
                else
                    flash.now[:alert] = "Your new post could not created! Try again"

                    render :new
                end
            end

            def edit

            end

            def update
                if @post.update(post_params)
                     flash[:success] = "Update succesfful!"

                    redirect_to posts_path
                else
                    flash.now[:alert] = "Update failed! Try to check the form again."

                    render :edit
                end
            end




            # def destroy
            #     @post.destroy

            #     redirect_to root_path
            # end




            private

            def set_post
                @post = Post.find(params[:id])
            end

            def post_params
              params.require(:post).permit(:image, :content)
            end

end