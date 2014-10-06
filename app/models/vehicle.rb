class Vehicle < ActiveRecord::Base
  extend Enumerize

  enumerize :status, :in => {
    :ok => 0, 
    :warning => 1, 
    :danger => 2
  }, default: :ok #, scope: true
  
  has_many :refuellings
  belongs_to :user
end