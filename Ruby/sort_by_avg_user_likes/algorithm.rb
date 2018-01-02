class Tweet
  attr_accessor :user_id, :timestamp, :message, :num_likes

  def initialize(user_id, num_likes)
     @user_id = user_id
     @num_likes = num_likes
  end
end

# input: set of tweets, without order, one or more users
# output: sorted list of objects, <user_id, avg num likes for that user> and the list is sorted by the avg num likes
# such that users with highest avg num likes will be at the begining of the list

def average_of_array(array)
   array.inject(:+) / array.length
end

def top_user_by_avg_num_likes(tweets)
   # map over tweets, each tweet now becomes object containing only user_id and num_likes
   mapped_tweets = tweets.map{|tweet| {user_id: tweet.user_id, num_likes: [tweet.num_likes]} }

   # Group
   new_user_list = []
   mapped_tweets.each do |user_object|
     user_id = user_object[:user_id]
     num_likes = user_object[:num_likes]
     found_user_object_id = new_user_list.index{|obj| obj[:user_id] == user_id }

     if found_user_object_id
         object = new_user_list[object_index]
         object[:num_likes].push(num_likes.first)
         new_user_list[object_index] = object
     else
         new_user_list.push(user_object)
     end
   end

   # output: new series of objects w only user_id and avg_num_likes
    list = new_user_list.map do |user_object|
       average = average_of_array(user_object[:num_likes])
       {user_id: user_object[:user_id], num_likes: average}
    end

    list.sort_by{|object| object[:num_likes] }.reverse
end

tweet_one = Tweet.new(1, 10)
tweet_two = Tweet.new(1, 3)
tweet_three = Tweet.new(3, 2)
tweet_four = Tweet.new(3, 4)

tweet_array = [tweet_one, tweet_two, tweet_three, tweet_four]

p top_user_by_avg_num_likes(tweet_array)
