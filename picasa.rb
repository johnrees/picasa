require 'rubygems'
require 'bundler/setup'
require 'feedjira'
require "open-uri"
require 'uri'

feed= Feedjira::Feed.fetch_and_parse("https://picasaweb.google.com/data/feed/base/user/103318428572698589743/albumid/6076058979811347953?alt=rss&kind=photo&hl=en_US")
image_urls = feed.entries.map(&:image)

puts image_urls

# image_urls.each do |image_url|
#   open(image_url) {|f|
#    File.open( File.basename(URI.parse(image_url).path) ,"wb") do |file|
#      file.puts f.read
#    end
#   }
# end

# https://lh4.googleusercontent.com/-qr9dkyQYQDk/VFJ_es_TY3I/AAAAAAAAYHM/s0jwKOX4sUw/s288/10344787_725441384183085_3933298471859337146_n.jpg
# https://lh4.googleusercontent.com/-qr9dkyQYQDk/VFJ_es_TY3I/AAAAAAAAYHM/s0jwKOX4sUw/s720/10344787_725441384183085_3933298471859337146_n.jpg