class ArticlesController < ApplicationController
   def index
       @articles = Article.all
   end
   
   
   def show
       @article = Article.find(params[:id])
   end
   
   
    def new
    end
    def create
        params.permit!
        
        @article = Article.new(params[:article])
        @article.save
        
        #적은것을화면에띄워야함
        redirect_to @article
    end
end
