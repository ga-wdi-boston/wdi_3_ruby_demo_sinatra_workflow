require 'csv'

# Run this with the following line from bash
# rake save_tweets["tibbon"]
task :save_tweets, :username do |t, args|
  puts args[:username]
  # Put your twitter code here to dump tweets to CSV file

  CSV.open("file.csv", "wb") do |csv|
    tweets.each do |tweet|
      csv << [tweet[:text], tweet[:date]]
    end
  end
end

# rake save_favorite_tweets["tibbon"]
task :save_favorite_tweets, :username do |t, args|
  puts args[:username]
  # Put your twitter code here to dump tweets to CSV file
end