class Admin::TypesController < Puffer::Base

  setup do
    group :types
  end

  index do
    # field :id
    field :name
    # field :created_at
    # field :updated_at
  end

  form do
    # field :id
    field :name
    # field :created_at
    # field :updated_at
  end

end
