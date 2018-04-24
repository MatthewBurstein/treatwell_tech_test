## Treatwell Tech Test

#### Initial thoughts
- Test edge cases. If height = 1, return
``` --- ```

 if width = 1, return
```|
|
|
|```

- Use constants to name characters, TOP_LEFT_CORNER, EDGE, CENTRAL_CHARACTER, etc
- Use ASCII 250 (interpuct) for 1 x 1 square
- 3 methods build_top_row, build_bottom_row, build_middle_row?
- Test-coverage
- rubocop
- what to do when a == 0 || b == 0

#### UTF encodings:

⌜
8988
"\u231C"

⌝
8989
"\u231D"

⌞
8990
"\u231E"

⌟
8991
"\u231F"

·
903
"\u0387"

eg
[8988].pack("U")


#### Points of interest

- Best way to handle encoding: haven't worked with this before
  - Tried the following ideas:
    - Array#Pack - works, and I think is fairly safe across platforms but looks a bit ugly
    - Integer#chr - IRB and PRY not happy and display a character not found character
    - Eventual method: use String#codepoints to find Decimal codepoint for character then convert to Hex codepoint using http://www.ltg.ed.ac.uk/~richard/utf-8.cgi and display as an escaped character
