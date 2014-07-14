require 'lib/code_example_helper'
require 'lib/response_mate_helper'

page 'index.html', layout: false, sidebar: 'koko'

page 'api/v3/*', sidebar: 'partials/sidebars/api/v3'
page 'guides/*', sidebar: 'partials/sidebars/guides'
page 'authentication/*', sidebar: 'partials/sidebars/authentication'
page 'analytics/*', sidebar: 'partials/sidebars/analytics'

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }
activate :directory_indexes
set :relative_links, true

# Syntax Highlight
activate :syntax, line_numbers: false

###
# Helpers
###
helpers CodeExampleHelper
helpers ResponseMateHelper

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
# configure :development do
#   activate :livereload
# end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

set :markdown, layout_engine: :erb, toc_levels: '2'

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end