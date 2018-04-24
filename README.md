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
- a, b == 0?

#### UTF encodings:
8988
⌜
8989
⌝
8990
⌞
8991
⌟
903
·

eg
[8988].pack("U")
