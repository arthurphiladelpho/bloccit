require 'random_data'

15.times do
	Topic.create!(
		name:         RandomData.random_sentence,
		description:  RandomData.random_paragraph
	)
end

topics = Topic.all

50.times do
  Post.create!(
  	topic:  topics.sample,
  	title:  RandomData.random_sentence,
   	body:   RandomData.random_paragraph
  )
end

posts = Post.all

50.times do
  SponsoredPost.create!(
  	title:  RandomData.random_sentence,
   	body:   RandomData.random_paragraph
  )
end

sponsored_posts = Post.all

100.times do
	Comment.create!(
		post: posts.sample,
		body: RandomData.random_paragraph
 	)
end

100.times do
	Comment.create!(
		post: sponsored_posts.sample,
		body: RandomData.random_paragraph
 	)
end

Post.find_or_create_by!(
	topic: topics.sample,
	title:  RandomData.random_sentence,
  body:   RandomData.random_paragraph
)

SponsoredPost.find_or_create_by!(
	topic: topics.sample,
	title:  RandomData.random_sentence,
  body:   RandomData.random_paragraph
)

posts = Post.all
sponsored_posts = SponsoredPost.all

Comment.find_or_create_by!(
	post: posts.sample,
  body: RandomData.random_paragraph
)

20.times do
	Question.create!(
		title: RandomData.random_sentence,
		body: RandomData.random_paragraph
	)
end

questions = Question.all

Question.find_or_create_by!(
	title: questions.last,
	body: RandomData.random_paragraph
)

puts "Seed finished"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "#{Question.count} questions created"
puts "---------------------------------"
puts "Last post = #{Post.last}"
puts "Last comment = #{Comment.last}"
puts "Last question = #{Question.last}"
