class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :length, :director, :description, :poster_url, :category, :discount, :female_director, :summary

  def summary 
    # byebug
    "#{self.object.title} - #{self.object.description[0..55]}..."
  end
end
