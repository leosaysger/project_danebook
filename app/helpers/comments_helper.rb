module CommentsHelper

  def delete_comment_link(comment, commentable)
    if current_user == comment.author
      link_to "Delete Comment", comment_path(comment, commentable_id: commentable.id, commentable_type: commentable.class.to_s, user_id: comment.author.id), method: :delete
    end
  end

end
