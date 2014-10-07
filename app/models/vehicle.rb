class Vehicle < ActiveRecord::Base
  extend FriendlyId 
  extend Enumerize

  enumerize :status, :in => {
    :ok => 0, 
    :warning => 1, 
    :danger => 2
  }, default: :ok #, scope: true

  friendly_id :numberplate, use: :slugged
  
  has_many :refuellings
  belongs_to :user
end