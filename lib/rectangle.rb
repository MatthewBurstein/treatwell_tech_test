class Rectangle

  TOP_LEFT_CORNER = "\u231C"
  TOP_RIGHT_CORNER = "\u231D"
  BOTTOM_LEFT_CORNER = "\u231E"
  BOTTOM_RIGHT_CORNER = "\u231F"
  NEW_LINE = "\n"


  def printer(width, height)
    return build_width_one(height) if width == 1
    return print "-" * width if height == 1
    rows = [build_top_row(width)]
    (height - 2).times { rows.push(build_middle_row(width)) }
    rows.push(build_bottom_row(width))
    print rows.join("\n")
  end

  private

  def build_width_one(height)
    print "|\n" * height
  end

  def build_middle_row(width)
    central_characters = " " * (width - 2)
    "|" + central_characters + "|"
  end

  def build_top_row(width)
    edge_characters = "-" * (width - 2)
    TOP_LEFT_CORNER + edge_characters + TOP_RIGHT_CORNER
  end

  def build_bottom_row(width)
    edge_characters = "-" * (width - 2)
    BOTTOM_LEFT_CORNER  + edge_characters + BOTTOM_RIGHT_CORNER
  end

end
