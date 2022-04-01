module EmojiHelper
  def bg_status(emoji)
    if emoji.nil?
      return "white"
    else
      return "purple"
    end
  end
end
