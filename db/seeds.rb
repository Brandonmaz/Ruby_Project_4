# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Entry.create([
    { task: "Mow lawn", description: "Push lawn Mower", due_date: "Tomorrow", done: false},
    { task: "Wash car", description: "Need to go to the store to get soap", due_date: "Today", done: false},
    { task: "Fix the garbage disposal", description: "Find the pipe wrench", due_date: "Tomorrow", done: false},
    { task: "Clean the gutters", description: "Don't fall off the ladder again", due_date: "Tomorrow", done: false},
    { task: "Drink a 6 pack", description: "Kick feet up and relax", due_date: "Today", done: false},
])
