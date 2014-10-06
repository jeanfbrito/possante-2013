class Refuelling < ActiveRecord::Base
  extend Enumerize

  belongs_to :vehicle

  enumerize :result, :in => {
    :zero => 0,
    :up => 1,
    :down => 2
  }, default: :zero #, scope: true

end