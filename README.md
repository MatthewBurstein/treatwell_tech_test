## Treatwell Tech Test

#### Installation
```
$ git clone https://github.com/MatthewBurstein/treatwell_tech_test
$ bundle install
```
#### Use
![Rectangle screenshot](https://i.imgur.com/kFeRJVp.png)

#### Testing
```
$ cd treatwell_tech_test
$ rspec
```

#### Coverage
![Coverage](https://i.imgur.com/QMthgoT.png)


#### Process
The steps I followed were:
- Research and plan the best method for displaying the corner characters
- Decide on whether the method should return or print the string, and which print method to use (see reasoning below)
- Follow TDD, starting with a basic square, and adding more functionality itteratively
- Test for and provide functionality for edge cases
- Before and after each step I manually feature tested the method in IRB to ensure the desired behaviour


#### Edge Cases
The spec does not provide a description of desired behaviour in the case of height < 2 and/or width < 2.
In a real world scenario I would communicate with other stakeholders and use my knowledge of the domain to determine what was appropriate in these cases, however for the purposes of this exercise I decided that:
-  width 1 prints a single column of '|' characters
- height 1 prints a single row of '-' characters.
- height 1 and width 1 prints  '-'
- height or width less than one, the method prints and returns nil


#### Points of interest
I have not worked with encodings before, but following some research I used the UTF-8 encoding which Ruby uses as standard, rather than copying the characters from a website and using them directly. To find this encoding, I first copied the characters and used String#codepoint to find the decimal codepoint representation, then used a converter online to find the hex codepoint for each character.
To make the code easier to read, I stored these characters in constants in the program.

I also elected to use ```print``` rather than ```puts``` or ```p``` to display the rectangles. Puts and p add an extra new line character to the string which means that the string is not only the rectangle.

I also considered returning the rectangle rather than printing it, but in the two REPL's I used to test the code (IRB and PRY), the rectangle is displayed with quotation marks on the first and last lines. the top row is then not aligned with rows below.
