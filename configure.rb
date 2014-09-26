def my_twitter_client
  Twitter::REST::Client.new do |config|
  config.consumer_key       = 'JP5F6kyfnlqzuKNUecwN0CCRE'
  config.consumer_secret    = 'mARPL4gKaPD37MQx43EndVf7bVsx3Nbf9ZLLiyzHlQMDTZuH8h'
  config.oauth_token        = "550372508-BZYAfikNqwxldFEzF7acHq887Vl5485aAF7BIMYI"
  config.oauth_token_secret = "ncJMsNTHAO6pne8ewk1O6ttOoVy7mxXNG8pWe0EOJ7PVq"
end
