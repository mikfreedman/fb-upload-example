# require stuff
Dir.glob(File.join(File.dirname(__FILE__), "fb_upload", "**", "*.rb")).each {|file| require file }

raise unless access_token = ENV['FB_ACCESS_TOKEN']
raise unless file = ARGV[0]

facebook = Facebook.new(access_token)
facebook.upload(file)
