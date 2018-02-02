class Article < ApplicationRecord
  belongs_to :user
  belongs_to :category

  def self.most_recent
    Article.all.sort_by{|article| article[:created_at]}.reverse
  end

  def most_popular

  end

end
