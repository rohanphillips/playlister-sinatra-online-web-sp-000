require_relative './concerns/slugifiable.rb'

class Genre < ActiveRecord::Base
  has_many :song_genres
  has_many :songs, through: :song_genres
  has_many :artists, through: :songs

  include Slugable::InstanceMethods
  extend Slugable::ClassMethods
end