-- http://rosettacode.org/wiki/Palindrome_detection

local palindrome = require('lib/palindrome')

text = 'seres'
is_palindrome = palindrome:is_palindrome(text)

print('seres == ' .. tostring(is_palindrome))
