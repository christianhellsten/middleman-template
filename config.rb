# Change Compass configuration
compass_config do |config|
#  config.output_style = :compact
end

# Automatic image dimensions on image_tag helper
activate :automatic_image_sizes

Slim::Engine.set_default_options :pretty => true

helpers do
end

###
# Gem
###
require 'slim'

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :frontmatter_extensions, %w(.html .slim)

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash # Enable cache buster
end

ready do
  sprockets.append_path File.join root, 'bower_components'
end
