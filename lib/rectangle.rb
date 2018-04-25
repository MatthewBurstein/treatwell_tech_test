class Rectangle

  TOP_LEFT_CORNER = "\u231C"
  TOP_RIGHT_CORNER = "\u231D"
  BOTTOM_LEFT_CORNER = "\u231E"
  BOTTOM_RIGHT_CORNER = "\u231F"
  HORIZONTAL_EDGE = "-"
  NEW_LINE = "\n"


  def printer(width, height)
    print "#{build_top_row(width)}#{NEW_LINE}#{build_bottom_row(width)}"
  end

  private

  def build_top_row(width)
    edge_characters = HORIZONTAL_EDGE * (width - 2)
    TOP_LEFT_CORNER + edge_characters + TOP_RIGHT_CORNER
  end

  def build_bottom_row(width)
    edge_characters = HORIZONTAL_EDGE * (width - 2)
    BOTTOM_LEFT_CORNER  + edge_characters + BOTTOM_RIGHT_CORNER
  end

end
