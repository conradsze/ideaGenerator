# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
App.delete_all
Audience.delete_all
Idea.delete_all

apps = App.create([{name:"Facebook"},
{name:"Twitter"},
{name:"Instagram"},
{name:"Tumblr"},
{name:"LinkedIn"},
{name:"Reddit"},
{name:"Todoist"},
{name:"Quicken"},
{name:"Salesforce"},
{name:"Connect"},
{name:"YouTube"},
{name:"Tinder"},
{name:"IMDB"},
{name:"StackOverflow"},
{name:"Uber"},
{name:"Yelp"},
{name:"FourSquare"},
{name:"Venmo"}])

audiences = Audience.create([{name:"GA students"},{name:"homeless"},{name:"people with T-rex arms"},{name:"drug dealer"},{name:"Amish"}])

Idea.create(app:App.order("RANDOM()").first, audience:Audience.order("RANDOM()").first)