class SearchFacade
  attr_reader :characters

  def initialize(affiliation)
    @characters = BenderService.characters_search_by_affiliation(affiliation).map do |character_data|
      Character.new(character_data)
    end
  end

  def total_members_count
    @characters.size
  end
end
