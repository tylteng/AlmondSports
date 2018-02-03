class ArticlesController < ApplicationController
  # before_action :authenticate_user, except: %i[home index show]

  def home
    @most_recent = Article.most_recent
    @most_popular = Article.most_popular
  end

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find_by(id: params[:id])
    @article.views += 1
    @article.save
  end

  def new
    @article = current_user.articles.build
  end

  def create
    @category = Category.find_by(name: params[:category])

    @article = current_user.articles.build(title: params[:title], picture: params[:picture], content: params[:content], category: @category)

    if @article.save
      redirect_to root_url
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

end
