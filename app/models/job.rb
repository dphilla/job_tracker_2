class Job < ApplicationRecord
  validates :title, :level_of_interest, :city, presence: true
  belongs_to :company
  belongs_to :category
  has_many :comments

  def self.location
    order(:city)
  end

  def self.level_of_interest
    order(:level_of_interest)
  end

  def self.specific_location(location_params)
    location_params.gsub!(location_params[0], location_params[0].upcase)
    if where(city: location_params) == []
      "no jobs in #{location_params}"
    else
       where(city: location_params)
    end
  end

end
