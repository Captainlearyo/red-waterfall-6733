class CharactersFacade
  def initialize(state)
    @state = state
  end

  def characters
    json = BenderService.characters
    
    @characters = json.map do |character_data|
      Character.new(character_data)
    end
  end

  
end