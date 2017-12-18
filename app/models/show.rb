class Show < ActiveRecord::Base

  def self.highest_rating
    show = Show.maximum(:rating)
    show
  end

  def self.most_popular_show
    show = Show.maximum(:rating)
    popular_show = Show.where("rating == ?", show)
    popular_show[0]
  end

  def self.lowest_rating
    show = Show.minimum(:rating)
    show
  end

  def self.least_popular_show
    show = Show.minimum(:rating)
    lame_show = Show.where("rating == ?", show)
    lame_show[0]
  end

  def self.ratings_sum
    show = Show.sum("rating")
    show
  end

  def self.popular_shows
    show = Show.where("rating > ?", 5)
    show
  end

  def self.shows_by_alphabetical_order
    show = Show.order("name")
    show
  end

end
