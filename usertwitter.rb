require 'twitter'
require './configure2'

name	= ARGV[0] || 'mery_reds'
num 	= Integer(ARGV[1]) || 1 
user = Hash.new
list 	= Twitter.friend_ids(name)

list.ids.each do |fid|
	f = Twitter.user(fid)
	if (f.protected.to_s != "true")
		user[f.screen_name.to_s] = f.followers_count
	end
end


for i in (0..(num-1)*2)
	if ((i % 2) == 0)
		puts "#{user.sort_by {|k,v| -v}.flatten[i]}  ->  #{user.sort_by {|k,v| -v}.flatten[i+1]}" 
	end
end