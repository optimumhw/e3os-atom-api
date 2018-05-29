# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#5.times do
#	Rectable.create({
#		site_id: Faker::Number.number(3),
#		number_chillers: Faker::Number.number(2)
#	})
#end

Rectable.create( site_id: '10', number_chillers: '4', staging_order:[2,1,3,4],
	staging_table: ['0','4','8','2','1','12','6','9','3','14','13','7','11','15'])

InvalidCombo.create( site_id: '10', number_chillers: '4', invalid_entries: ['5','10'])
