#!/usr/bin/env ruby

#Parse a file and store it in a variable

exit if ARGV.empty?

ARGV.each do |filepath|
  file = open(filepath)
  doc = Nokogiri::XML(file)
  file.close
  Document.create(:docno => doc.xpath("//DOCNO").first.content.to_s.strip, :text => doc.xpath("//TEXT").first.content.to_s.strip)
end
