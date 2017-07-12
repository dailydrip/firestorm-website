require 'font-awesome-middleman'

# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

activate :sprockets

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

helpers do

  def roadmap_messages
    [
      roadmap_message("July 10, 2017", "0.9.0 released."),
      roadmap_message("April 26, 2017", "First <a href='https://www.kickstarter.com/projects/1003377429/firestorm-an-open-source-forum-in-phoenix-from-eli/posts/1869930'>alpha release announced</a>."),
      roadmap_message("March - April, 2017", "Lots of work went into building the first prototype and beginning to dogfood."),
      roadmap_message("February 13, 2017", "<a href='https://www.kickstarter.com/projects/1003377429/firestorm-an-open-source-forum-in-phoenix-from-eli/posts/1806748'>Design assets shared</a> and <a href='https://www.dailydrip.com/topics/elixir'>first 10 free Elixir episodes completed.</a>"),
      roadmap_message("January 28, 2017", "<a href='https://www.kickstarter.com/projects/1003377429/firestorm-an-open-source-forum-in-phoenix-from-eli/posts/1781464'>Design meetings have been ongoing for four weeks</a>"),
      roadmap_message("December 23, 2016", "Successfully raised $22,186 with 338 backers."),
      roadmap_message("November 23, 2016", "The Firestorm started brewing on Kickstarter.")
    ]
  end

  def markdown(body)
    Kramdown::Document.new(body).to_html
  end

  def roadmap_message(date, text)
    { date: date, text: text }
  end

  def message_box(side:, message:)
    partial "partials/message_box", locals: {side: side, message: message}
  end

  def favicon_link_tag(source='source/images/', options={})
    tag('link', {
      :rel  => 'shortcut icon',
      :type => 'image/x-icon',
      :href => image_path(source)
    }.merge!(options.symbolize_keys))
  end

end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

# configure :build do
#   activate :minify_css
#   activate :minify_javascript
# end

# This should avoid assets problem in production on github pages
activate :relative_assets
set :relative_links, true
