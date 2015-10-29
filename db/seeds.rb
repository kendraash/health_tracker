# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

foods = Food.create([{ name: 'soda', calories: 100}, { name: 'bagel', calories: 200}, { name: 'salad', calories: 250}, { name: 'candy', calories: 100}, { name: 'pasta', calories: 400, created_at: "2015-10-25 12:13:45"}])
exercises = Exercise.create([{ name: 'walk', calories_burned: 100}, { name: 'run', calories_burned: 300}, { name: 'sexy time', calories_burned: 315}, { name: 'stretch', calories_burned: 15, created_at: "2015-10-27 16:43:51"}, { name: 'yoga', calories_burned: 215, created_at: "2015-10-25 16:43:51"}])
