class Admin::LinksController < Puffer::Base

  setup do
    group :link
  end

  index do
    # field :id
    field :url
    field :title
    field :author
    field :email
    field :rating
    # field :created_at
    # field :updated_at
  end

  form do
    # field :id
    field :url
    field :title
    field :author
    field :email
    field :description
    field :keywords
    field :rating
    # field :created_at
    # field :updated_at
  end

end
