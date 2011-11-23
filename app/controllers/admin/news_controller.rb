class Admin::NewsController < Puffer::Base

  setup do
    group :news
  end

  index do
    # field :id
    field :title
    field :content
    field :created_at, :type => :date
    # field :updated_at
  end

  form do
    # field :id
    field :title
    field :content
    field :created_at, :type => :date
    # field :updated_at
  end

end
