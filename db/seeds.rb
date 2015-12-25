# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


  user = User.new
  user.email = 'first@gmail.com'
  user.password = '12345678'
  user.password_confirmation = '12345678'
  user.save!

  user = User.new
  user.email = 'second@gmail.com'
  user.password = '12345678'
  user.password_confirmation = '12345678'
  user.save!

  user = User.new
  user.email = 'third@gmail.com'
  user.password = '12345678'
  user.password_confirmation = '12345678'
  user.save!

  user = User.new
  user.email = 'fourth@gmail.com'
  user.password = '12345678'
  user.password_confirmation = '12345678'
  user.save!

  Enterprise.create(user_id: '1', name: 'first_user_enterprise', address: 'Main Street 1', phone: '555-55-01', email:  'first_user_enterprise@gmail.com', description: 'This is Company of First User ' )
  Enterprise.create(user_id: '2', name: 'second_user_first_enterprise', address: 'Main Street 2 A', phone: '555-55-11', email:  'second_user_enterprise1@gmail.com', description: 'This is 1 Company of Second User ' )
  Enterprise.create(user_id: '2', name: 'second_user_second_enterprise', address: 'Main Street 2 B', phone: '555-55-12', email:  'second_user_enterprise2@gmail.com', description: 'This is 2 Company of Second User ' )
  Enterprise.create(user_id: '3', name: 'third_user_enterprise', address: 'Main Street 3', phone: '555-55-03', email:  'third_user_enterprise@gmail.com', description: 'This is Company of Third User ' )

  Promo.create(name: 'Promo #1', starts: '2016-01-01', ends: '2016-01-02', description: 'This is the Promo of the 1 Company', enterprise_id: '1')
  Promo.create(name: 'Promo #2', starts: '2016-01-03', ends: '2016-01-04', description: 'This is the Promo of the 1 Company', enterprise_id: '1')
  Promo.create(name: 'Promo #3', starts: '2016-01-04', ends: '2016-01-05', description: 'This is the Promo of the 2 Company', enterprise_id: '2')
  Promo.create(name: 'Promo #4', starts: '2016-01-06', ends: '2016-01-07', description: 'This is the Promo of the 2 Company', enterprise_id: '2')
  Promo.create(name: 'Promo #5', starts: '2016-01-08', ends: '2016-01-09', description: 'This is the Promo of the 3 Company', enterprise_id: '3')
  Promo.create(name: 'Promo #6', starts: '2016-01-10', ends: '2016-01-11', description: 'This is the Promo of the 3 Company', enterprise_id: '3')
  Promo.create(name: 'Promo #7', starts: '2016-01-12', ends: '2016-01-13', description: 'This is the Promo of the 4 Company', enterprise_id: '4')
  Promo.create(name: 'Promo #8', starts: '2016-01-14', ends: '2016-01-15', description: 'This is the Promo of the 4 Company', enterprise_id: '4')

  Event.create(name: 'Event #1', description: 'This is the 1 Event of the 1 Company', location: 'Location St. 1', price: '100', enterprise_id: '1', start_date: '2016-01-01', final_date:'2016-01-02')
  Event.create(name: 'Event #2', description: 'This is the 2 Event of the 1 Company', location: 'Location St. 2', price: '140', enterprise_id: '1', start_date: '2016-01-03', final_date:'2016-01-04')
  Event.create(name: 'Event #3', description: 'This is the 1 Event of the 2 Company', location: 'Location St. 3', price: '110', enterprise_id: '2', start_date: '2016-01-04', final_date:'2016-01-05')
  Event.create(name: 'Event #4', description: 'This is the 2 Event of the 2 Company', location: 'Location St. 4', price: '150', enterprise_id: '2', start_date: '2016-01-06', final_date:'2016-01-07')
  Event.create(name: 'Event #5', description: 'This is the 1 Event of the 3 Company', location: 'Location St. 5', price: '170', enterprise_id: '3', start_date: '2016-01-08', final_date:'2016-01-09')
  Event.create(name: 'Event #6', description: 'This is the 2 Event of the 3 Company', location: 'Location St. 6', price: '110', enterprise_id: '3', start_date: '2016-01-10', final_date:'2016-01-11')
  Event.create(name: 'Event #7', description: 'This is the 1 Event of the 4 Company', location: 'Location St. 7', price: '140', enterprise_id: '4', start_date: '2016-01-12', final_date:'2016-01-13')
  Event.create(name: 'Event #8', description: 'This is the 2 Event of the 4 Company', location: 'Location St. 8', price: '160', enterprise_id: '4', start_date: '2016-01-14', final_date:'2016-01-15')

  EventTime.create(time: '9:00', event_id: '1')
  EventTime.create(time: '11:00', event_id: '1')
  EventTime.create(time: '15:00', event_id: '1')
  EventTime.create(time: '17:00', event_id: '1')
  EventTime.create(time: '21:00', event_id: '1')

  EventTime.create(time: '9:00', event_id: '2')
  EventTime.create(time: '11:00', event_id: '2')
  EventTime.create(time: '15:00', event_id: '2')
  EventTime.create(time: '17:00', event_id: '2')
  EventTime.create(time: '21:00', event_id: '2')

  EventTime.create(time: '9:00', event_id: '3')
  EventTime.create(time: '11:00', event_id: '3')
  EventTime.create(time: '15:00', event_id: '3')
  EventTime.create(time: '17:00', event_id: '3')
  EventTime.create(time: '21:00', event_id: '3')

  EventTime.create(time: '9:00', event_id: '4')
  EventTime.create(time: '11:00', event_id: '4')
  EventTime.create(time: '15:00', event_id: '4')
  EventTime.create(time: '17:00', event_id: '4')
  EventTime.create(time: '21:00', event_id: '4')

  EventTime.create(time: '9:00', event_id: '5')
  EventTime.create(time: '11:00', event_id: '5')
  EventTime.create(time: '15:00', event_id: '5')
  EventTime.create(time: '17:00', event_id: '5')
  EventTime.create(time: '21:00', event_id: '5')

  EventTime.create(time: '9:00', event_id: '6')
  EventTime.create(time: '11:00', event_id: '6')
  EventTime.create(time: '15:00', event_id: '6')
  EventTime.create(time: '17:00', event_id: '6')
  EventTime.create(time: '21:00', event_id: '6')

  EventTime.create(time: '9:00', event_id: '7')
  EventTime.create(time: '11:00', event_id: '7')
  EventTime.create(time: '15:00', event_id: '7')
  EventTime.create(time: '17:00', event_id: '7')
  EventTime.create(time: '21:00', event_id: '7')

  EventTime.create(time: '9:00', event_id: '8')
  EventTime.create(time: '11:00', event_id: '8')
  EventTime.create(time: '15:00', event_id: '8')
  EventTime.create(time: '17:00', event_id: '8')
  EventTime.create(time: '21:00', event_id: '8')

  Currency.create(name: 'Dollars')
  Currency.create(name: 'Euros')
  Currency.create(name: 'Grivnas')

  JobType.create(name: 'full time')
  JobType.create(name: 'part time')
  JobType.create(name: 'remote')

  JobCategory.create(name: 'IT')
  JobCategory.create(name: 'Serviсe')
  JobCategory.create(name: 'Hotel')
  JobCategory.create(name: 'Entertaiment')

  Vacancy.create(
      name: 'Employee #1',
      enterprise_id: '1',
      job_category_id: '1',
      currency_id: '1',
      job_type_id: '1',
      description: 'Your Best Job!',
      salary: '100',
      education: 'middle',
      experience: '0',
      location: 'Location St. 1',
      open_date: '2016-01-01',
      close_date: '2016-01-02'
  )

  Vacancy.create(
      name: 'Employee #2',
      enterprise_id: '1',
      job_category_id: '2',
      currency_id: '2',
      job_type_id: '2',
      description: 'Your Best Job!',
      salary: '140',
      education: 'middle',
      experience: '1',
      location: 'Location St. 2',
      open_date: '2016-01-02',
      close_date: '2016-01-03'
  )

  Vacancy.create(
      name: 'Employee #3',
      enterprise_id: '2',
      job_category_id: '2',
      currency_id: '1',
      job_type_id: '3',
      description: 'Your Best Job!',
      salary: '200',
      education: 'middle',
      experience: '10',
      location: 'Location St. 3',
      open_date: '2016-01-04',
      close_date: '2016-01-05'
  )

  Vacancy.create(
      name: 'Employee #4',
      enterprise_id: '2',
      job_category_id: '1',
      currency_id: '3',
      job_type_id: '3',
      description: 'Your Best Job!',
      salary: '1000',
      education: 'middle',
      experience: '3',
      location: 'Location St. 4',
      open_date: '2016-01-10',
      close_date: '2016-01-12'
  )

  Vacancy.create(
      name: 'Employee #5',
      enterprise_id: '3',
      job_category_id: '3',
      currency_id: '1',
      job_type_id: '1',
      description: 'Your Best Job!',
      salary: '1010',
      education: 'middle',
      experience: '10',
      location: 'Location St. 5',
      open_date: '2016-01-11',
      close_date: '2016-01-12'
  )

  Vacancy.create(
      name: 'Employee #6',
      enterprise_id: '3',
      job_category_id: '4',
      currency_id: '3',
      job_type_id: '3',
      description: 'Your Best Job!',
      salary: '1320',
      education: 'middle',
      experience: '0',
      location: 'Location St. 6',
      open_date: '2016-01-21',
      close_date: '2016-01-22'
  )

  Vacancy.create(
      name: 'Employee #7',
      enterprise_id: '4',
      job_category_id: '4',
      currency_id: '1',
      job_type_id: '2',
      description: 'Your Best Job!',
      salary: '400',
      education: 'middle',
      experience: '0',
      location: 'Location St. 7',
      open_date: '2016-01-11',
      close_date: '2016-01-22'
  )

  Vacancy.create(
      name: 'Employee #8',
      enterprise_id: '4',
      job_category_id: '1',
      currency_id: '1',
      job_type_id: '3',
      description: 'Your Best Job!',
      salary: '300',
      education: 'middle',
      experience: '0',
      location: 'Location St. 1',
      open_date: '2016-01-11',
      close_date: '2016-01-12'
  )
