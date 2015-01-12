class ArticlesController < ApplicationController
  
  def index
  	@articles = Article.all
  	render :index
  end

  
  def new
    @article = Article.new
  end

  def create
    @article = Article.create(article_params)
    redirect_to article_path(@article.id)
  end

  def find_article
      @article = Article.find(params[:id])
    end

  def article_params
      params.require(:article).permit(:title, :author, :content)
    end

  def show
  	@article = Article.find(params[:id])
  	@article.keywords 
  	render :show
  end


  def update
    @article.update(article_params)
    redirect_to article_path(@article.id)
  end

  def destroy
  @article.destroy
    redirect_to articles_path
  end


end
