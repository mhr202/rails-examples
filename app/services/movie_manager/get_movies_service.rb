# services/movie_manager/get_movies_service.rb

module MovieManager
  class GetMoviesService < ApplicationService

    def initialize
    end

    def call
        movies = fetch_movies_from_api
    end

    private

    def fetch_movies_from_api
        api_key = '4e94cf28'
        api_url = "http://www.omdbapi.com/?i=tt3896198&apikey=#{api_key}"
        response = HTTParty.get(api_url)
        JSON.parse(response.body) if response.success?
        # nil
    end
  end
end
