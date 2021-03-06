# frozen_string_literal: true

class EmojisReflex < ApplicationReflex

  def smiley
    post = Post.find(element.dataset[:post_id]) # set the post from sending info post_id
    user = User.find(element.dataset[:user_id]) # set the user from sending info post_id
    chosen_emoji = Emoji.where(emoji: "smiley", user: user, post: post).first # find the instance of emoji which matches emoji, user and post
    chosen_emoji.nil? ? Emoji.create(emoji: "smiley", post: post, user: user) : Emoji.destroy(chosen_emoji.id) # if the emoji does not exist, create it, else destroy it
    cable_ready["timeline"].text_content(
      selector: "#post-#{post.id}-smileys",
      text: post.emojis.where(emoji: "smiley").count
    ) # update the text inside button that counts the total number of emojis
    cable_ready.broadcast # broadcast this number immediately
  end

  def sad
    post = Post.find(element.dataset[:post_id])
    user = User.find(element.dataset[:user_id])
    chosen_emoji = Emoji.where(emoji: "sad", user: user, post: post).first
    chosen_emoji.nil? ? Emoji.create(emoji: "sad", post: post, user: user) : Emoji.destroy(chosen_emoji.id)
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
    chosen_emoji.nil? ? Emoji.create(emoji: "like", post: post, user: user) : Emoji.destroy(chosen_emoji.id)
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
    chosen_emoji.nil? ? Emoji.create(emoji: "dislike", post: post, user: user) : Emoji.destroy(chosen_emoji.id)
    cable_ready["timeline"].text_content(
      selector: "#post-#{post.id}-dislikes",
      text: post.emojis.where(emoji: "dislike").count
    )
    cable_ready.broadcast
  end
end
