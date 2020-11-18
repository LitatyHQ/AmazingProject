
class Api
    attr_reader :url

    def initialize
        url = "https://ghibliapi.herokuapp.com"
    end

    def find_by_title(title)
        responce = RestClient.get("#{url}#{title}")
        title = JSON.parse(response)
    end

end
