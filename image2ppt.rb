require 'powerpoint'
require 'date'

@deck = Powerpoint::Presentation.new
title = ''
coords = {x: 0, y: 0, cx: 12700*720, cy: 12700*720}
path = ARGV[0]
Dir.glob(["#{path}/*.JPG"]).each do |image_path|
		unless File.directory?(image_path)
			@deck.add_pictorial_slide title, image_path, coords
		end
	end
@deck.save(ARGV[0].to_s + Date.today.to_s+'.pptx')

