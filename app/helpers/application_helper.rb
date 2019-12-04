module ApplicationHelper
  def user_avatar(user)
    if user.avatar_url.present?
      user.avatar_url
    else
      asset_path 'avatar.jpg'
    end
  end

  def inclination(count, words)
    word = words[2]
    word = words[1] if (2..4).include?(count % 10)
    word = words[0] if (11..14).include?(count % 100) ||
                       [0, *(5..9)].include?(count % 10)

    "#{count} #{word}"
  end
end
