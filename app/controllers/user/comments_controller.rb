class User::CommentsController < UserController

    def create
      f_params = form_params.merge(user: current_user)
      @comment = Comment.new(f_params)
      @post = @comment.post

      if @comment.save
        redirect_back fallback_location: user_profile_path
      else
        redirect_back fallback_location: user_profile_path, alert: "Erro ao criar comentário"
      end
    end

  
    def destroy
      @comment = Comment.find(params[:id])
      @post = @comment.post

      if @comment.destroy
        respond_to do |format|
          format.html { redirect_to user_profile_path(@post) }
          format.json { head :no_content }
        end
      end
    end
   
  
    private
  
    def form_params
      params.require(:comment).permit(:body, :post_id)
    end
  
end