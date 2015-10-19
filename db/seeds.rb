# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create(name: "C4mz0r", email: "C4mz0r@test.com", password: "secret")
u2 = User.create(name: "frank", email: "frank@test.com", password: "secret")
u3 = User.create(name: "sally", email: "sally@test.com", password: "secret")

p1 = u1.posts.build( title: "The Odin Project is awesome!", 
                link: "http://www.theodinproject.com", 
                imagelink: "http://www.viking-mythology.com/img/The_Vikings_were_hated_everywhere.jpg")
p1.save
                              
p2 = u1.posts.build( title: "Populating your database with seeds.rb",
                link: "http://www.xyzpub.com/en/ruby-on-rails/3.2/seed_rb.html",
                imagelink: "http://ecx.images-amazon.com/images/I/51CJg3LarTL._SL110_.jpg" )
p2.save

p3 = u2.posts.build( title: "Wikipedia on Knitting",
                link: "https://en.wikipedia.org/wiki/Knitting",
                imagelink: nil)
p3.save

p4 = u3.posts.build( title: "Tesla Model S",
                link: "http://www.teslamotors.com/models",
                imagelink: "http://rack.2.mshcdn.com/media/ZgkyMDEzLzA1LzA5L2RiL1Rlc2xhTW9kZWxTLjY2YzRlLmpwZwpwCXRodW1iCTEyMDB4NjI3IwplCWpwZw/651c4379/334/Tesla-Model-S.jpg")
p4.save

JunkData = {title: "Testing...", link: "http://www.test.com", imagelink: nil}

1.times do
  p = u3.posts.build(JunkData)
  p.save
end

c1 = Comment.new( body: "I like it", post_id: "3" , user_id: "1" )
c1.save
