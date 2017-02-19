Rails.application.config.middleware.use OmniAuth::Builder do
#  provider :twitter,
#    Rails.application.secrets.twitter_api_key,
#    Rails.application.secrets.twitter_api_secret
  #provider :twitter, 'TWITTER_KEY', 'TWITTER_SECRET'
  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
  #provider :twitter, 'YJuEpWbwFb6wZYysE1vvx68aF', 'FqjOusOMPY1jgj4eQNFNSRGjjFrNjobeZ4CuZNBsZzODsulZIl'
end
