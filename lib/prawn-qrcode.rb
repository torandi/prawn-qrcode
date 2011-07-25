module Prawn
  class Document
    
    def qrcode(qr,xpos=0,ypos=0, module_size=4,module_factor=1.1)
      length=qr.modules.size
      width=module_size * length
      ypos=width+ypos
      xpos=xpos+((bounds.width-width)/2+bounds.absolute_left)

      self.bounding_box([xpos,ypos],:width=>width,:height=>width) do 

        self.fill_color("000000")
        self.stroke_color("000000")
        
        row_cnt, col_cnt = 0, 1
        qr.modules.reverse_each do |col|
          row_cnt = 0
          col.each do |row|
            if row
              point_tl_x, point_tl_y = row_cnt * module_size,     col_cnt * module_size
              self.rectangle [point_tl_x, point_tl_y], module_size*module_factor,module_size*module_factor
              self.fill
            end
            row_cnt += 1
          end
          col_cnt += 1
        end
      end
    end
  end
end
