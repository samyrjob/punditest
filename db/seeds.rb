# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "trash"


Post.destroy_all
Comment.destroy_all
User.destroy_all


puts "create users"

samyy = User.new(email: "samy@hotmail.fr", password: "password")
denizs = User.new(email: "denis@hotmail.fr", password: "password")

puts "yeah"

sam = Post.create!(user: denizs, title: "sam", content: "Using dotenv-rails 2.8.1
  Using ffi 1.15.5
  Using sassc 2.4.0
  Using font-awesome-sass 6.2.1
  Using jbuilder 2.11.5
  Using jsbundling-rails 1.1.1
  Using pg 1.4.5
  Using puma 5.6.5
  Using rails 7.0.4.1
  Using rexml 3.2.5
  Using rubyzip 2.3.2
  Using sprockets 4.2.0
  Using sprockets-rails 3.4.2
  Using tilt 2.0.11
  Using sassc-rails 2.1.2
  Using websocket 1.2.9
  Using selenium-webdriver 4.7.1
  Using simple_form 5.1.0 from https://github.com/heartcombo/simple_form.git
  Using stimulus-rails 1.2.1
  Using turbo-rails 1.3.2")



samy = Post.create!(user: denizs, title: "samy", content: "Let's talk about an intro to the Pundit gem today. This gem is very useful for authorization and user account permissions in Ruby on Rails 7.
  Checkout my course(s) at: https://learn.deanin.com

  Source: https://github.com/Deanout/pundit_video
  https://github.com/varvet/pundit

  Join this channel to help support these videos:
  https://www.youtube.com/channel/UCRQv...

  Follow me on social media:
  https://linktr.ee/deanin

  If you liked this video, please consider subscribing: https://t.co/RZ4EwP0F2a

  #Deanin #Software #Programming")

samira = Post.create!(user: denizs, title: "samira", content: "Salut Flo , j’ai une question à te poser !
  Est-ce que tu sais créer deux types de User en gros au lieu d’avoir un modèle User unique , d’avoir deux modèles différents genre Acheteur et Vendeur par exemple et ils ont leur propre espace de connexion etc ?
  Florent
  :vélo:  17 h 16
  Hello, tu peux filer des role au user, c’est souvent comme ça que c’est fait
  17 h 17
  tu ajoute une column role sur la tables users


  SAMY RJOB
    18 h 13
  Ahh dans Class > User en gros enfin dans le modèle quoi je met un espace de tableau role qui contient les différents rôles ?
  Et en faisant ça on peut se passer de pundit par exemple ?")

samir = Post.create!(user: denizs, title: "samir",
  content: "hey folkss - I'm the founder of folk. We're building the CRM for relationships. We have been the 6th most upvoted product of the year on Product Hunt and are now competing for getting a Golden Kitty.Golden Kitties recognize the top performers in the digital space - previous winners include Figma and Square. I'd love your support in the ""roductivity")


  puts "finish"
