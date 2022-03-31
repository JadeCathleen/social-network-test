# frozen_string_literal: true

class EmojisReflex < ApplicationReflex

  def smiley
    post = Post.find(element.dataset[:post_id])
    user = User.find(element.dataset[:user_id])
    emoji = Emoji.where(name: "😄", user: user, post: post)
    if emoji.nil?
      Emoji.create(name: "😄", post: post, user: user)
    else
      Emoji.destroy(emoji.id)
    end
  end

  def sad
    post = Post.find(element.dataset[:post_id])
    user = User.find(element.dataset[:user_id])
    emoji = Emoji.where(name: "😭", user: user, post: post)
    if emoji.nil?
      Emoji.create(name: "😭", post: post, user: user)
    else
      Emoji.destroy(emoji.id)
    end
  end

  def like
    post = Post.find(element.dataset[:post_id])
    user = User.find(element.dataset[:user_id])
    emoji = Emoji.where(name: "👍", user: user, post: post)
    if emoji.nil?
      Emoji.create(name: "👍", post: post, user: user)
    else
      Emoji.destroy(emoji.id)
    end
  end

  def unlike
    post = Post.find(element.dataset[:post_id])
    user = User.find(element.dataset[:user_id])
    emoji = Emoji.where(name: "👎", user: user, post: post)
    if emoji.nil?
      Emoji.create(name: "👎", post: post, user: user)
    else
      Emoji.destroy(emoji.id)
    end
  end
end
