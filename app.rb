require('sinatra')
require('sinatra/reloader')
require('./lib/project')
require('./lib/volunteer')
also_reload('lib/**/*.rb')
require("pg")

DB = PG.connect({:dbname => "volunteer_tracker_test"})

get('/') do
  erb(:index)
end

get('/projects') do
  @projects = Project.all()
  erb(:projects)
end
#
# get('/projects/new') do
#   erb(:doctor_form)
# end
#
# get('/doctors/:id') do
#   @doctor = Doctor.find(params.fetch("id").to_i())
#   erb(:doctor)
# end
#
# post('/doctors') do
#   doctor_name = params.fetch("doctor_name")
#   speciality_type = params.fetch("speciality")
#   speciality = Speciality.new({:type => speciality_type, :id => nil})
#   speciality.save()
#   doctor = Doctor.new({:name => doctor_name, :id => nil, :spec_id => speciality.id()})
#   doctor.save()
#   erb(:success)
# end
#
# post('/patients') do
#   patient_name = params.fetch("patient_name")
#   birthday = params.fetch("birthday")
#   doctor_id = params.fetch("doctor_id").to_i
#   @doctor = Doctor.find(doctor_id)
#   @patient = Patient.new({:name => patient_name, :birthday => birthday, :doctor_id => doctor_id})
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
