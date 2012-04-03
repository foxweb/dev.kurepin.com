class Admin::CommentsController < Puffer::Base

  setup do
    group :comment
  end

  index do
    # field :id
    field :username
    field :email
    field :body
    field :post_id
    field :rating
    # field :created_at
    # field :updated_at
  end

  form do
    # field :id
    field :username
    field :email
    field :body, :type => :ckeditor
    field :post
    field :rating
    # field :created_at
    # field :updated_at
  end

end
