class BenderService
  def  self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def  self.conn
    Faraday.new(url: "https://last-airbender-api.fly.dev")
  end

  def self.characters_all
    get_url("/api/v1/characters")
  end

  def self.characters_search_by_affiliation(affiliation)
    params = { affiliation: affiliation }
    get_url("/api/v1/characters?affiliation=#{affiliation}")
  end
end