class ArticlesController < ApplicationController

  def home
    @most_recent = Article.most_recent
    @most_popular
  end

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find_by(id: params[:id])
  end

  def new

  end

  def edit

  end

end
