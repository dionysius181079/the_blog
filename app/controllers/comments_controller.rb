#class CommentsController < ApplicationController
#end

class CommentsController < ApplicationController  
    def create  
   	 @article = Article.find(params[:article_id])  
  
         item_params = params.require(:comment).permit(:name, :content,try(:id))
	 @comment = @article.comments.create!(item_params)    

	 #@comment = @article.comments.create!(params[:comment])  
   	 redirect_to @article, :notice => "Comment created!"    
    end  
    end   
