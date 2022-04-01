module EmojiHelper
  # created an emoji helper method to deal with the color of the button
  def bg_status(emoji)
    if emoji.nil? # if the user did not select the emoji yet, which means it does not exist yet
      return "white" # white background and black writing color - cf assets/stylesheets/components/buttons.scss
    else # if the user already selected the emoji, which means it does exist
      return "purple" # blue/purple background and white writing color - cf assets/stylesheets/components/buttons.scss
    end
  end
end
