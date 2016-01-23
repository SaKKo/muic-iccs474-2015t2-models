namespace :sample do
  task :seed => :environment do
    u1 = User.create!(first_name: "SaKKo", last_name: "sama")
    u2 = User.create!(first_name: "Patchphol", last_name: "sama")
    post = Post.create!(user: u1, name: "Hello Rails", content: "Lorem ipsum dolor sit amet, minim molestie argumentum est at, pri legere torquatos instructior ex. Vis id odio atomorum oportere, quem modo fabellas sit at, dicat semper est ne. Apeirian detraxit pri eu. No solum accusam has. Ius ne harum mundi clita, eu pro tation audiam.")
    comment = Comment.create!(user: u1, post: post, content: "hello first comment")
    comment = Comment.create!(user: u2, post: post, content: "hello second comment")
  end
end
