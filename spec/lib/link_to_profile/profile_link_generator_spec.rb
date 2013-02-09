require 'link_to_profile/profile_link_generator'

describe ProfileLinkGenerator do
  describe '#url' do
    it 'generates a twitter url for a user' do
      link = described_class.new(username: 'dblandin', network: :twitter).url
      link.should eq 'http://twitter.com/dblandin'
    end

    it 'generates a github url for a user' do
      link = described_class.new(username: 'dblandin', network: :github).url
      link.should eq 'http://github.com/dblandin'
    end
  end

  describe '#link' do
    it 'generates a twitter link for a user' do
      link = described_class.new(username: 'dblandin', network: :twitter).link
      link.should eq "<a href='http://twitter.com/dblandin'>twitter</a>"
    end

    it 'generates a github link for a user' do
      link = described_class.new(username: 'dblandin', network: :github).link
      link.should eq "<a href='http://github.com/dblandin'>github</a>"
    end
  end
end
