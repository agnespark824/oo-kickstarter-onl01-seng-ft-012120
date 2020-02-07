#projects can have many backers and backers can back many projects



class Backer
  attr_accessor
  attr_reader :name
  
  def initialize(name)
    @name = name
    @backed_projects = []
  