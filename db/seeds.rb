require 'random_data'

 50.times do
    Post.create!(
    	title:  RandomData.random_sentence,
     	body:   RandomData.random_paragraph
    )
  end

  posts = Post.all

	100.times do
  	Comment.create!(
			post: posts.sample,
			body: RandomData.random_paragraph
   	)
 	end
 
	Post.find_or_create_by!(
		title:  RandomData.random_sentence,
	  body:   RandomData.random_paragraph
	)

	posts = Post.all

	Comment.find_or_create_by!(
		post: posts.last,
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
	puts "#{Post.count} posts created"
	puts "#{Comment.count} comments created"
	puts "#{Question.count} questions created"
	puts "---------------------------------"
	puts "Last post = #{Post.last}"
	puts "Last comment = #{Comment.last}"
	puts "Last question = #{Question.last}"
