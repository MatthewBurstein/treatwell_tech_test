class Rectangle

  TOP_LEFT_CORNER = "\u231C"
  TOP_RIGHT_CORNER = "\u231D"
  BOTTOM_LEFT_CORNER = "\u231E"
  BOTTOM_RIGHT_CORNER = "\u231F"
  NEW_LINE = "\n"


  def printer(width, height)
    print "#{build_top_row}#{NEW_LINE}#{build_bottom_row}"
  end

  private

  def build_top_row
    "#{TOP_LEFT_CORNER}#{TOP_RIGHT_CORNER}"
  end

  def build_bottom_row
    "#{BOTTOM_LEFT_CORNER }#{BOTTOM_RIGHT_CORNER}"
  end

end
