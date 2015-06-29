 #  require 'faker'
 
 # # Create Posts
 # 50.times do
 #   Post.create!(
 #     title:  Faker::Lorem.sentence,
 #     body:   Faker::Lorem.paragraph
 #   )
 # end
 # posts = Post.all
 
 # # Create Comments
 # 100.times do
 #   Comment.create!(
 #     post: posts.sample,
 #     body: Faker::Lorem.paragraph
 #   )
 # end
 
 # puts "Seed finished"
 # puts "#{Post.count} posts created"
 # puts "#{Comment.count} comments created"

 require 'faker'
 
 # # Create Posts
 # 50.times do
 #   Post.create!(
 #     title:  Faker::Lorem.sentence,
 #     body:   Faker::Lorem.paragraph
 #   )
 # end



 
 # # Create Comments
 # 100.times do
 #   Comment.create!(
 #     post: posts.sample,
 #     body: Faker::Lorem.paragraph
 #   )
 # end


 # p = Post.find_or_create_by(
 #  title: "Blade Runner", 
 #  body: "Do Androids Dream of Electric Sheep?"
 # )

 # c = Comment.find_or_create_by(
 #  post: p,
 #  body: "which one is better?"
 # )

 1.times do
  postExist = Post.find_by title: 'Blade Runner'
  if postExist.nil?
    Post.create!(
  title: "Blade Runner",
  body: "Do Androids Dream of Electric Sheep?"
  )
  end
end

posts = Post.all

1.times do
  commentExist = Comment.find_by body: 'which one is better?'
  if commentExist.nil?
 Comment.create!(
    post: posts.sample,
    body: "which one is better?"
  )
  end
end


 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"