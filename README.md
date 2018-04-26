## Treatwell Tech Test

#### Installation
```
$ git clone xxx
```
#### Use
![Rectangle screenshot](https://i.imgur.com/kFeRJVp.png)

#### Testing
```
$ cd treatwell_tech_test
$ rspec
```

#### Coverage


#### Process
The steps I followed were:
- research and plan the best method for displaying the corner characters
- decide on whether the method should return or print the string, and which print method to use (see reasoning below)
- Follow TDD, starting with a basic square, and adding more functionality itteratively
- Test for and provide functionality for edge cases
- Before each step I manually feature tested the method in PRY


#### Edge Cases
The spec does not provide a description of desired behaviour in the case of height < 2 and/or width < 2.
In a real world scenario I would communicate with other stakeholders and use my knowledge of the domain to determine what was appropriate in these cases, however for the purposes of this exercise I decided that:
-  width 1 prints a single column of '|' characters
- height 1 prints a single row of '-' characters.
- height 1 and width 1 prints  '-'
- height or width less than one, the method prints and returns nil


#### Points of interest
I have not worked with encodings before, but following some research I used the UTF-8 encoding which Ruby uses as standard rather than copying the characters from a website and using them directly. To find this encoding, I first copied the characters and used String#codepoint to find the decimal codepoint representation, then used a converter online to find the hex codepoint for each character.
To make the code easier to read, I stored these characters in constants in the program.

I also elected to use ```print``` rather than ```puts``` or ```p``` to display the rectangles. Puts and p add an extra new line character to the string, which is often desirable, but the purpose of this method is to display only a rectangle.

I also considered returning the rectangle rather than printing it, but then in the two REPL's I used to test the code (IRB and PRY), the rectangle is displayed with quotation marks on the first and last lines. the top row is then not aligned with rows below.





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
    - Eventual method: use String#codepoint to find Decimal codepoint for character then convert to Hex codepoint using http://www.ltg.ed.ac.uk/~richard/utf-8.cgi and display as an escaped character
