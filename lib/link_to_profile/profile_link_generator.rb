require 'yaml'

class ProfileLinkGenerator
  attr_reader :username, :network, :options

  def initialize(options = {})
    @options = options
    @username = options[:username]
    @network  = options[:network]

    raise ArgumentError if @username.nil? or @network.nil?
  end

  def url
    templates[network.to_s].sub(/{{username}}/, username)
  end

  def link
    "<a href='#{url}'>#{network}</a>"
  end

  private

  def templates
    options[:templates] ||= YAML.load_file(templates_path)
  end

  def templates_path
    options[:templates_path] ||= relative_path
  end

  def relative_path
    File.join(File.dirname(File.expand_path(__FILE__)), 'profile_link_templates.yml')
  end

  class ArgumentError < StandardError; end
end
