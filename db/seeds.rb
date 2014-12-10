# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.new
user.email = 'test@example.com'
user.password = '167454724'
user.name = "Usuário Teste"
user.password_confirmation = '167454724'
user.save!

company = Company.new
company.name = "Viação Fake LTDA."
company.save!

ini_chk = Checkpoint.new
ini_chk.label = "Av. Silva lobo, 2051"
ini_chk.latitude = -19.94184
ini_chk.longitude = -43.965417
ini_chk.row_order = 1
ini_chk.save!

final_chk = Checkpoint.new
final_chk.label = "Rua Professor Mello Cançado, 273"
final_chk.latitude = -19.958989
final_chk.longitude = -43.9292619
final_chk.row_order = 2
final_chk.save!

route = Route.new
route.label = 2101
route.company = company
route.initial_checkpoint = ini_chk
route.final_checkpoint = final_chk
route.save!

vehicle = Vehicle.new
vehicle.description = "Mercedes 2011/2012 - 42 / Diesel"
vehicle.public_identifier = "OQG6864"
vehicle.company = company
vehicle.save!

trip = Trip.new
trip.route = route
trip.user_created = user
trip.vehicle = vehicle
trip.save!

track_one_list =
[[-19.937412, -43.965890],
[-19.937896, -43.965568],
[-19.938663, -43.965010],
[-19.939389, -43.963916],
[-19.939893, -43.962950],
[-19.939006, -43.962350],
[-19.938219, -43.961835],
[-19.937795, -43.961749],
[-19.937291, -43.961599],
[-19.936383, -43.961341],
[-19.935536, -43.961105],
[-19.934669, -43.960805],
[-19.934225, -43.960719],
[-19.934225, -43.960719],
[-19.934265, -43.959174],
[-19.934749, -43.957114],
[-19.935012, -43.955805],
[-19.935213, -43.954668],
[-19.935274, -43.954560],
[-19.936061, -43.953058],
[-19.935223, -43.952441],
[-19.934678, -43.952163],
[-19.933629, -43.951476],
[-19.933084, -43.950274],
[-19.932600, -43.949287],
[-19.932257, -43.948450],
[-19.931854, -43.947699],
[-19.930845, -43.946605],
[-19.930280, -43.945661],
[-19.929716, -43.944609],
[-19.929595, -43.944352],
[-19.928445, -43.943494],
[-19.927335, -43.942700],
[-19.926407, -43.942013],
[-19.925136, -43.941691],
[-19.924148, -43.941434],
[-19.923220, -43.940704],
[-19.921767, -43.939395],
[-19.920436, -43.938344]]

track_one_list.each do |latitude,longitude|
	Track.create(latitude: latitude, longitude: longitude, accuracy: 80.0,trip: trip)
end