module LinkToProfileHelper
  def link_to_profile(options)
    ProfileLinkGenerator.new(options).link
  end

  def url_to_profile(options)
    ProfileLinkGenerator.new(options).url
  end
end
