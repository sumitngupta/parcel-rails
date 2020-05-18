# frozen_string_literal: true
require 'rails/generators'

class ParcelGenerator < ::Rails::Generators::Base
  desc 'Generate parcel-rails initializer'

  def create_initializer_file
    initializer 'parcel.rb' do
      %{Rails.application.configure do
  config.parcel.entry_points = %w(app/javascript/application.js)
  config.parcel.destination = "public/parcels"
  config.parcel.cache_dir = 'tmp/cache'
end}
    end
  end

  def add_parcel_bundler
    `yarn add parcel@next`
  end
end
