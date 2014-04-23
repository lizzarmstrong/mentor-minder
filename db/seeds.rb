# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Mentor.create(first_name: 'Lizz', last_name: 'Armstrong', email: 'lizzarmstrong@gmail.com', gender: 'f')
Mentor.create(first_name: 'Haris', last_name: 'Mahmood', email: 'fakeharis@fakeemail.com', gender: 'm')
Mentor.create(first_name: 'Kat', last_name: 'Barrett', email: 'kathryn@girlslearningcode.com', gender: 'f')

Event.create(category: 'Kids Learning Code', age_group: '9-12', topic: 'Intro to HTML & CSS', event_date: Date.parse('2014-06-06'))
Event.create(category: 'Kids Learning Code', age_group: '13-16', topic: 'Intro to Python', event_date: Date.parse('2014-05-04'))
Event.create(category: 'Girls Learning Code', age_group: '9-12', topic: 'Intro with Arduino', event_date: Date.parse('2014-04-27'))

SignUp.create(mentor_id: 2, event_id: 2)