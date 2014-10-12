# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Vehicle.create( vehicle_brand: "Honda", vehicle_model: 'Civic LX 16V 115cv 4p', fabrication_year: "2005", user_id: 1, mileage: 123456, numberplate: 'IMP-4233', status: :ok)
Vehicle.create( vehicle_brand: "Toyota", vehicle_model: 'Corolla Xli 110cv Aut.', fabrication_year: "2004", user_id: 1, mileage: 123456, numberplate: 'IOY-9926', status: :warning)
Vehicle.create( vehicle_brand: "Honda", vehicle_model: 'XR 250 Tornado', fabrication_year: "2007", user_id: 1, mileage: 123456, numberplate: 'INU-3636', status: :danger)

kmanterior = 0
for i in 0..50
  thatdate = 780 - i * 15
  kmatual = kmanterior + rand(420..590)
  kmanterior = kmatual
  Refuelling.create( date: thatdate.day.ago, mileage: kmatual, liter_price: rand(2.791..2.899), total_value: 100 + rand(25..45), gas_station: 'Ipiranguinha', vehicle_id: 3)
end

kmanterior = 10000
for i in 0..50
  thatdate = 780 - i * 15
  kmatual = kmanterior + rand(420..590)
  kmanterior = kmatual
  Refuelling.create( date: thatdate.day.ago, mileage: kmatual, liter_price: rand(2.791..2.899), total_value: 100 + rand(25..45), gas_station: 'Ipiranguinha', vehicle_id: 1)
end

kmanterior = 45000
for i in 0..50
  thatdate = 780 - i * 15
  kmatual = kmanterior + rand(420..590)
  kmanterior = kmatual
  Refuelling.create( date: thatdate.day.ago, mileage: kmatual, liter_price: rand(2.791..2.899), total_value: 100 + rand(25..45), gas_station: 'Ipiranguinha', vehicle_id: 2)
end
