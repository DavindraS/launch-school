My answer: The ! operator has a couple different uses, either signifying a
negation of a variable (!var) or signifying that this methods actions modifies
the original object. ? is used as a convention to signify a method returning
true or false, and it is also used in the ternary operator.

1. != (NOT equal) should be used when we want to get true when two operands
   are not equal and false when they are equal.
2. Putting ! before something is basically returning the opposite of the variable.
   For example, !user_name, could be used in a program to see if a user_name is
   entered and if not (!), then prompt the user to enter one. Another example
   could be with a boolean variable; when you want to check if something is not
   true (!true).
3. Using ! after a method name is a convention that the method performs actions
   on the original object and that it modifies it directly.
4. I don't think this is allowed.
5. Putting ? after something doesn't really do anything other than signify that
   this thing is returning true or false.
6. !! means not not or the opposite of the opposite, or the original boolean
   value of an object.
