require('sinatra')
require('sinatra/reloader')
require('./lib/project')
require('./lib/volunteer')
also_reload('lib/**/*.rb')
require("pg")

DB = PG.connect({:dbname => "volunteer_tracker_test"})

get('/') do
  @projects = Project.all()
  erb(:index)
end

post('/') do
  project_title = params.fetch("project_title")
  project = Project.new({:title => project_title, :id => nil})
  project.save()
  @projects = Project.all()
  erb(:index)
end

# post('/patients') do
#   patient_name = params.fetch("patient_name")
#   birthday = params.fetch("birthday")
#   project_id = params.fetch("project_id").to_i
#   @project = Doctor.find(project_id)
#   @patient = Patient.new({:name => patient_name, :birthday => birthday, :project_id => project_id})
#   @patient.save()
#   erb(:success)
# end
#
# get ('/specialities') do
#   @specialities = Speciality.all()
#   erb(:specialities)
# end
#
# post ('/specialities/:id') do
#   @specialities = Speciality.find(params.fetch("id").to_i())
#   erb(:speciality)
# end
