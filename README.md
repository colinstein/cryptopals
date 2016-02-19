# Cryptopals Solutions
I got sent a link to this: http://cryptopals.com
It looked like a fun way to kill some times with short easy products.
Here are some little tools to play with.

## Descriptions
### hb.rb
A solution to challenge 1 part 1. Given a string of hex, convert it to base64.
Input is read from the first argument or from stdin.

#### Example Usage
As a filter

    $ echo "0123456780" |./hb.rb
    ASNFZ4Cg

As a stand alone tool

    $ ./hb.rb 0123456780
    ASNFZ4Cg

