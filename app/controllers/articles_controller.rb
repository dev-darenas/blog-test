class ArticlesController < ApplicationController
  def index
    articles = Article.all

    render json: articles
  end

  def create
    article = Article.new(articles_params)
    article.save

    render json: article
  end

  def show
    article = Article.find(params[:id])

    render json: article
  end

  def update
    article = Article.find(params[:id])
    article.update(articles_params)
    article.save
  
    render json: article
  end

  def destroy
    article = Article.find(params[:id])
    article.destroy

    head :ok
  end

  def articles_params
    params.require(:article).permit(:title, :body)
  end
end
