class Admin::SourcesController < Puffer::Base

  setup do
    group :source
  end

  index do
    # field :id
    field :name
    field :md5
    field :author
    field :email
    field :www
    field :section_id
    field :category_id
    field :description
    field :rating
    # field :created_at
    # field :updated_at
  end

  form do
    # field :id
    field :name
    field :md5
    field :author
    field :email
    field :www
    field :section_id
    field :category_id
    field :description
    field :rating
    # field :created_at
    # field :updated_at
  end

end
