class Entry < ActiveRecord::Base
  validates :user, presence: true
  validates :photo_url, presence: true

end
