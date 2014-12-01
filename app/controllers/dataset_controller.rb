class DatasetController < ApplicationController
	def load
  	#Parse a file and store it in a variable
  	@files = Dir.glob("C:/Development/TIPSTER/data/ap/files/*")
  	docids = ['INIT']
  	text = 'blank'
  	@files.each do |fileName|
  		file = open(fileName)
  		doc = Nokogiri::XML(file) do |config|
  			config.nonet
  		end
  		file.close
  		text = doc.xpath("//DOCNO")
  		docids.push(text)
  	end


  	file = open('C:\Development\TIPSTER\data\ap\files\ap880212')

  	#Parse the contents into a document
  	doc = Nokogiri::XML(file) do |config|
  		config.nonet
  	end
  	#bad_doc = Nokogiri::XML doc
  	file.close
  	text = doc.xpath("//TEXT")

  	render plain: text
  end
end
