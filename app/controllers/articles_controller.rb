class ArticlesController < ApplicationController
  # before_action :authenticate_user, except: %i[home index show]

  def home
    @most_recent = Article.most_recent
    @most_popular = Article.most_popular
  end

  def index
    @articles = Article.all
  end

  def about_us
  end

  def show
    @article = Article.find_by(id: params[:id])
    @article.views += 1
    @article.save
  end

  def new
    @article = Article.new
    @categories = Category.all
  end

  def create
    @category = Category.find_by(name: params[:article][:category])

    @article = Article.new(title: params[:article][:title], picture: params[:article][:picture], content: params[:article][:content], user_id: current_user.id, category: @category)


    if @article.save
      redirect_to root_url
    else
      render :new
    end
  end

  def edit
    @article = Article.find_by(id: params[:id])
  end

  def update
    @article = Article.find_by(id: params[:id])
  end

  def destroy
    @article = Article.find_by(id: params[:id])
    @article.destroy
    redirect_to user_url(current_user)
  end
end
