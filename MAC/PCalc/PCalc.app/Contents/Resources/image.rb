#
#  image.rb
#  PCalc
#
#  Created by Pedro Henrique on 9/9/12.
#  Copyright 2012 Pedro Henrique. All rights reserved.
#


class Image < NSView
    
    def awakeFromNib
        # load the images we'll use from the bundle's Resources directory
        @circle_image = NSImage.imageNamed("pcalc_image")
        # tell ourselves that we need displaying (force redraw)
        setNeedsDisplay(true)
    end
    
end