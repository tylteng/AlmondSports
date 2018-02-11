class Article < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :title, presence: true
  validates :picture, presence: true
  validates :content, presence: true

  def self.most_recent
    Article.all.sort_by{|article| article[:created_at]}.reverse.first(3)
  end

  def self.most_popular
    Article.all.sort_by{|article| article[:views]}.reverse.first(3)
  end

end
