class Project
  attr_reader(:title, :id)

  def initialize(attributes)
    @title = attributes.fetch(:title)
    @id = attributes.fetch(:id)
  end

  def self.all
    returned_projects = DB.exec("SELECT * FROM projects;")
    projects = []
    returned_projects.each() do |project|
      title = project.fetch("title")
      id = project.fetch("id").to_i
      projects.push(Project.new({:title => title, :id => id}))
    end
    projects
  end

  def self.find(id)
   found_project = nil
   Project.all().each() do |project|
     if project.id().==(id)
       found_project = project
     end
   end
   found_project
  end

  def save
    result = DB.exec("INSERT INTO projects (title) VALUES ('#{@title}') RETURNING id;")
    @id = result.first.fetch("id").to_i
  end

  # def volunteers
  #   volunteers = []
  #   volunteers = DB.exec("SELECT * FROM volunteers WHERE id = #{self.id()};")
  #   volunteers.each() do |volunteer|
  #     name = task.fetch("name")
  #     project_id = task.fetch("project_id").to_i()
  #     volunteers.push(Volunteer.new({:name => name, :project_id => id}))
  #   end
  #   volunteers
  # end

  def ==(another_project)
    self.title == another_project.title && self.id == another_project.id
  end
end
