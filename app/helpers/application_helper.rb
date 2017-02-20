module ApplicationHelper
  def url_for_twitter(user)
    "https://twtter.com/#{user.nickname}"
  end
end
