xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.title       "#{@repo} -- Latest Issues"
    xml.description "#{@repo} -- Latest Issues"
    xml.link        "https://github.com/#{@repo}/issues"

    for issue in @issues
      xml.item do
        xml.title       issue['title']
        xml.description issue['body']
        xml.pubDate     issue['created_at']
        xml.link        issue['html_url']
      end
    end
  end
end
