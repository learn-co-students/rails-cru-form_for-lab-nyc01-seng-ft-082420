# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.destroy_all
Genre.destroy_all
Song.destroy_all

jerry = Artist.create(name: "Jerry Garcia", bio: "coolest dude with a missing finger")
rock = Genre.create(name: "Rock n Roll")
casey = Song.create(name: "Casey Jones", artist_id: jerry.id, genre_id: rock.id)