# frozen_string_literal: true

class EmojisReflex < ApplicationReflex

  def smiley
    post = Post.find(element.dataset[:post_id])
    user = User.find(element.dataset[:user_id])
    chosen_emoji = Emoji.where(emoji: "smiley", user: user, post: post)
    if chosen_emoji.nil?
      Emoji.create(emoji: "smiley", post: post, user: user)
      redirect_to root_path
    else
      Emoji.destroy(chosen_emoji.id)
      redirect_to root_path
    end
  end

  def sad
    post = Post.find(element.dataset[:post_id])
    user = User.find(element.dataset[:user_id])
    chosen_emoji = Emoji.where(emoji: "sad", user: user, post: post)
    if chosen_emoji.nil?
      Emoji.create(emoji: "sad", post: post, user: user)
      redirect_to root_path
    else
      Emoji.destroy(chosen_emoji.id)
      redirect_to root_path
    end
  end

  def like
    post = Post.find(element.dataset[:post_id])
    user = User.find(element.dataset[:user_id])
    chosen_emoji = Emoji.where(emoji: "like", user: user, post: post)
    if chosen_emoji.nil?
      Emoji.create(emoji: "like", post: post, user: user)
      redirect_to root_path
    else
      Emoji.destroy(chosen_emoji.id)
      redirect_to root_path
    end
  end

  def dislike
    post = Post.find(element.dataset[:post_id])
    user = User.find(element.dataset[:user_id])
    chosen_emoji = Emoji.where(emoji: "dislike", user: user, post: post)
    if chosen_emoji.nil?
      Emoji.create(emoji: "dislike", post: post, user: user)
      redirect_to root_path
    else
      Emoji.destroy(chosen_emoji.id)
      redirect_to root_path
    end
  end
end
