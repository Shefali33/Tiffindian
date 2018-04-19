# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
MasterRole.create([{ id: 1,  role_name: 'admin'}, 
   { id: 2, role_name: 'supplier'}, { id: 3, role_name: 'user'}])

MasterCategory.create([{ id: 1, category: 'veg'}, { id: 2, category: 'non-veg'}])

MasterMeal.create([{ id: 1, meals_type: 'breakfast'}, { id: 2, meals_type: 'lunch'}, 
		{ id: 3, meals_type: 'dinner'}])

MasterSubscription.create([{ id: 1, subscription: 'standard', min_price: 50, max_price: 100, quantity_offered: 50}, { id: 2, subscription: 'premium', min_price: 101, max_price: 150, quantity_offered: 50}])

MasterDay.create([{ id: 1, days: 'monday'}, { id: 2, days: 'tuesday'}, { id: 3, days: 'wednesday'},
	 { id: 4, days: 'thrusday'}, { id: 5, days: 'friday'}])

MasterSlot.create([{ id: 1, master_meal_id: 1, :start_time => Time.strptime("7:00", "%H:%M") , :end_time => Time.strptime("11:00", "%H:%M") },
					{ id: 2, master_meal_id: 2, :start_time => Time.strptime("12:00", "%H:%M") , :end_time => Time.strptime("17:00", "%H:%M") },
					{ id: 3, master_meal_id: 3, :start_time => Time.strptime("18:00", "%H:%M") , :end_time => Time.strptime("22:00", "%H:%M") }])

MasterOrderType.create([{ id: 1, order_type: 'membership_order' },
						{id: 2, order_type: 'normal_order'}])

MasterOrderStatus.create([{ id: 1, order_status: 'pending'},
						{ id: 2, order_status: 'delivered'}])
