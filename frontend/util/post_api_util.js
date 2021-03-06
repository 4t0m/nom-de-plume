export const fetchWall = userId => (
  $.ajax({
    type: "GET",
    url: `/api/users/${userId}/posts?collection=wall`
  })
);

export const fetchFeed = userId => (
  $.ajax({
    type: "GET",
    url: `/api/users/${userId}/posts?collection=feed`
  })
);

export const createPost = (post, userId) => (
  $.ajax({
    type: 'POST',
    url: `/api/users/${userId}/posts`,
    data: { post }
  })
);

export const updatePost = (newText, postId) => (
  $.ajax({
    type: 'PATCH',
    url: `/api/posts/${postId}`,
    data : {
      post: {
        body: newText
      }
    },
  })
);

export const deletePost = id => (
  $.ajax({
    type: "DELETE",
    url: `/api/posts/${id}`
  })
);
