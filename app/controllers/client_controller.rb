class ClientController < ApplicationController
  prepend_view_path "vendor/templates"

  before_action { headers["Content-Type"] ||= 'text/html; charset=utf-8' }

  def index
    @template = Liquid::Template.parse(File.read("vendor/templates/index.liquid"))
    render html: @template.render.html_safe
  end
end
