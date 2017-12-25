class Webmark < ApplicationRecord
  has_many :bookmarks, as: :bookmarkable
end
