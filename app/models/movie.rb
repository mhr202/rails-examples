# app/models/movie.rb

class Movie < ApplicationRecord
    validates :title, presence: true
    validates :director, presence: true
    validates :release_date, presence: true
    validates :genre, presence: true
    validates :duration, presence: true

    def self.recent_movies(limit = 5)
      order(release_date: :desc).limit(limit)
    end

    def formatted_duration
      hours = duration / 60
      minutes = duration % 60

      "#{hours}h #{minutes}min"
    end

    def genre_list
      genre.split(',').map(&:strip)
    end
end
