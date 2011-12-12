class Admin::SectionsController < Puffer::Base

  setup do
    group :sections
  end

  index do
    # field :id
    field :name
    field :lang
    field :description
    field :num
    # field :created_at
    # field :updated_at
  end

  form do
    # field :id
    field :name
    field :lang
    field :description
    field :num
    # field :created_at
    # field :updated_at
  end

end
