class Character
  attr_reader :name, :photo_url, :allies, :enemies, :affiliations, :id

  def initialize(attributes)
    @name = attributes[:name]
    @photo_url = attributes[:photoUrl]
    @allies = attributes[:allies] || ["None"]
    @enemies = attributes[:enemies] || ["None"]
    @affiliations = attributes[:affiliation]
    @id = attributes[:_id]
  end

end

