# frozen_string_literal: true

class EmojisReflex < ApplicationReflex

  def smiley
    post = Post.find(element.dataset[:post_id])
    user = User.find(element.dataset[:user_id])
    chosen_emoji = Emoji.where(emoji: "smiley", user: user, post: post).first
    if chosen_emoji.nil?
      Emoji.create(emoji: "smiley", post: post, user: user)
    else
      Emoji.destroy(chosen_emoji.id)
    end
    cable_ready["timeline"].text_content(
      selector: "#post-#{post.id}-smileys",
      text: post.emojis.where(emoji: "smiley").count
    )
    cable_ready.broadcast
  end

  def sad
    post = Post.find(element.dataset[:post_id])
    user = User.find(element.dataset[:user_id])
    chosen_emoji = Emoji.where(emoji: "sad", user: user, post: post).first
    if chosen_emoji.nil?
      Emoji.create(emoji: "sad", post: post, user: user)
    else
      Emoji.destroy(chosen_emoji.id)
    end
    cable_ready["timeline"].text_content(
      selector: "#post-#{post.id}-sads",
      text: post.emojis.where(emoji: "sad").count
    )
    cable_ready.broadcast
  end

  def like
    post = Post.find(element.dataset[:post_id])
    user = User.find(element.dataset[:user_id])
    chosen_emoji = Emoji.where(emoji: "like", user: user, post: post).first
    if chosen_emoji.nil?
      Emoji.create(emoji: "like", post: post, user: user)
    else
      Emoji.destroy(chosen_emoji.id)
    end
    cable_ready["timeline"].text_content(
      selector: "#post-#{post.id}-likes",
      text: post.emojis.where(emoji: "like").count
    )
    cable_ready.broadcast
  end

  def dislike
    post = Post.find(element.dataset[:post_id])
    user = User.find(element.dataset[:user_id])
    chosen_emoji = Emoji.where(emoji: "dislike", user: user, post: post).first
    if chosen_emoji.nil?
      Emoji.create(emoji: "dislike", post: post, user: user)
    else
      Emoji.destroy(chosen_emoji.id)
    end
    cable_ready["timeline"].text_content(
      selector: "#post-#{post.id}-dislikes",
      text: post.emojis.where(emoji: "dislike").count
    )
    cable_ready.broadcast
  end
end
