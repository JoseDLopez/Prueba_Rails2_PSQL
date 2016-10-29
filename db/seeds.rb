# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

	Category.destroy_all
	User.destroy_all
	Item.destroy_all

	Category.create([
		{name:'Balanceo'},
		{name:'Alineacion'},
		{name:'Venta'},
		{name:'Rodamiento'},
		{name:'Lavado'}
	])

	User.create([
		{name:'José',email:'jose@email.com'},
		{name:'Pedro',email:'Pedro@email.com'},
		{name:'Carlos',email:'Carlos@email.com'},
		{name:'María',email:'María@email.com'},
		{name:'Ivan',email:'Ivan@email.com'}
	])

	Item.create(serial:1,size:20,description:'Cambio de Neumatico',category_id:Category.find_by(name:'Balanceo').id,user_id:User.find_by(name:'José').id)

	Item.create(serial:2,size:30,description:'Cambio de Neumatico2',category_id:Category.find_by(name:'Balanceo').id,user_id:User.find_by(name:'José').id)

	Item.create(serial:3,size:40,description:'Cambio de Neumatico3',category_id:Category.find_by(name:'Alineacion').id,user_id:User.find_by(name:'Pedro').id)

	Item.create(serial:4,size:50,description:'Cambio de Neumatico4',category_id:Category.find_by(name:'Alineacion').id,user_id:User.find_by(name:'Pedro').id)

	Item.create(serial:5,size:60,description:'Cambio de Neumatic5',category_id:Category.find_by(name:'Venta').id,user_id:User.find_by(name:'Carlos').id)

	Item.create(serial:6,size:70,description:'Cambio de Neumatico6',category_id:Category.find_by(name:'Venta').id,user_id:User.find_by(name:'Carlos').id)

	Item.create(serial:7,size:80,description:'Cambio de Neumatico8',category_id:Category.find_by(name:'Rodamiento').id,user_id:User.find_by(name:'María').id)

	Item.create(serial:8,size:80,description:'Cambio de Neumatico7',category_id:Category.find_by(name:'Rodamiento').id,user_id:User.find_by(name:'María').id)

	Item.create(serial:9,size:80,description:'Cambio de Neumatico9',category_id:Category.find_by(name:'Lavado').id,user_id:User.find_by(name:'Ivan').id)

	Item.create(serial:10,size:80,description:'Cambio de Neumatico10',category_id:Category.find_by(name:'Lavado').id,user_id:User.find_by(name:'Ivan').id)

	Item.create(serial:11,size:80,description:'Cambio de Neumatico11',category_id:Category.find_by(name:'Lavado').id,user_id:User.find_by(name:'Ivan').id)


