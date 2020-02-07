#projects can have many backers and backers can back many projects

class Backer
  attr_accessor
  attr_reader :name
  
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  
  def back_project(project)
    @backed_projects << project
    project.backers 
  end
end