class Admin::PostsController < Puffer::Base

  setup do
    group :posts
  end

  index do
    # field :id
    #field :type_id
    #field :section_id
    #field :author
    #field :email
    #field :www
    #field :source
    field :title
    #field :body
    #field :info
    #field :keywords
    field :rating
    field :public
    # field :created_at
    # field :updated_at
  end

  form do
    # field :id
    field :type
    field :section
    field :author
    field :email
    field :www
    field :source
    field :title
    field :body, :type => :ckeditor
    field :info
    field :keywords
    field :rating
    field :public
    # field :created_at
    # field :updated_at
  end

end