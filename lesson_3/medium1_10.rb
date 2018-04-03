bar(foo) will be calling bar('yes') since foo() always returns 'yes'. So
param then equals 'yes', and when the ternary statement is run, 'yes' != 'no'
so 'no' will be returned.
