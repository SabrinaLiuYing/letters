-----------------------------------------------------------------------------
// SEASHELL_READONLY

* Your coding style will NOT be graded for this question.
* Your testing methodology will NOT be graded for this question.
* All assignment rules and policies are in place for this question.
* There is no public test. Marmoset only ensures that your code "runs".
-----------------------------------------------------------------------------
* For this and EVERY other question, you may define helper functions
-----------------------------------------------------------------------------

For this question you must complete the letters_generate function in letters.c.

We have provided the test client and all of the other modules
(see letters.h and dictionary.h in particular).

A form letter is one that is generated from a template letter by
substituting generic placeholders (or keywords/keys) with strings
(i.e., associated values) specifically for that instance of the letter.

The values are chosen for each letter being generated and typically
come from a database (dictionary) that contains the key/value pairs.

In the example template letter below the '@' characters are delimiters for the
keywords which are: "employer name", "company name" and "starting salary".

=========================================================================
Dear @employer name@:

I want to work at @company name@.
My expected salary is @starting salary@.
You can reach me at bob@@blah.com.
=========================================================================

By replacing the keywords with values for the specific letter we can
generate multiple versions of the letter tailored for different purposes.

For example, consider the following key/value pairs:

"employer name"/"Satya Nadella"
"company name"/"Microsoft"
"starting salary"/"$200,000"

The resulting letter would be:
=========================================================================
Dear Satya Nadella:

I want to work at Microsoft.
My expected salary is $200,000.
You can reach me at bob@blah.com.
=========================================================================

Note that two consecutive '@' characters (an empty keyword) are
replaced with one '@' character to allow the '@' character to appear
in the new letter being generated (e.g., to produce an "at" sign in
an email address).

If a keyword appears in the template letter that does not appear in the
dictionary, it is replaced with the string "ERROR".


The letters_generate function you must write is passed:

* A template letter (a string)
* An array of dictionaries (containing key/value pairs)
* The count of how many dictionaries there are

The function generates a dynamic array of count letters. Each letter is
a dynamic string and must be the correct length (i.e., if you make an
oversized array you should realloc it to the correct length).


We have provided an I/O driver for you that reads the dictionaries
and the template letter from input, and prints the array of letters
(following each letter with *** to help visually separate them).

The input file format is as follows:

There are two "sections" in the input file format:
A) the dictionaries
B) the template letter

A) DICTIONARIES:

The first value in the input is the "count" or the number of dictionaries
(which will also be the number of letters).

Then, each key/value pair is of the form:

<num> @key string@ @value string@

Where <num> denotes which dictionary the key/value belongs to: 0...(count-1)

The keys and values are surrounded by the @ symbol, and cannot contain
the @ symbol itself and cannot be empty strings.
Otherwise, they may be any strings of arbitrary length (and may contain spaces
newlines, punctuation, etc.).

In the input, [@this is a long string with spaces@] is a valid key,
but [@bad @key @] is not a valid key and neither is [@@]
(square brackets have been added only for emphasis).

If <num> is -1, it indicates the end of the dictionary input.

B) TEMPLATE LETTER

The template letter is everything remaining in the input, beginning on the
line after the -1 appears.

The template letter must have an even number of '@' symbols.
The test client does not enforce this, but we will not test your
code with template letters that contain an odd number of '@' symbols.


EXAMPLE INPUT:

The following example has:
* 2 dictionaries
* 3 key/value pairs per dictionary
* A template letter

=========================================================================
example.in
=========================================================================
2
0 @employer name@ @Satya Nadella@
0 @company name@ @Microsoft@
0 @starting salary@ @$200,000@
1 @employer name@ @Tim Cook@
1 @company name@ @Apple@
1 @starting salary@ @$100,000@
-1
Dear @employer name@:

I want to work at @company name@.
My expected salary is @starting salary@.
You can reach me at bob@@blah.com.
=========================================================================

The expected output is:

=========================================================================
example.expect
=========================================================================
Dear Satya Nadella:

I want to work at Microsoft.
My expected salary is $200,000.
You can reach me at bob@blah.com.
***
Dear Tim Cook:

I want to work at Apple.
My expected salary is $100,000.
You can reach me at bob@blah.com.
***
=========================================================================

In this example two letters were generated because there were two
dictionaries.

For the letter with index 0, @employer name@ will be replaced by Satya Nadella
@company name@ by Microsoft and @starting salary@ by $200,000.

In the letter with index 1, @employer name@ will be replaced by Tim Cook,
@company name@ by Apple and @starting salary@ by $100,000.

(The sender is willing to work at Apple for less money because they are a
huge fan of Apple products and hope to get employee discounts.)


ADDITIONAL DETAILS AND CLARIFICATIONS:

* Keys and values cannot be empty strings or contain an '@'.

* The order of the key/value pairs in the input file does not matter but
  a -1 must follow all of the key/value pairs.

* The dictionary input uses '@' to delimit keys and values, but the '@'s
  are not part of the key/values themselves so in the input the keyword
  appears as @employer name@ but the key is "employer name".

* In the template letter, keywords all start and end with the '@' delimiter
  so @employer name@ becomes the key "employer name".

* If an empty keyword (@@) appears in the template letter, it is not a valid
  keyword and is instead replaced by a single @ in the generated letter.
  Note: Only an empty keyword is replaced by a single @.
        Two '@'s could be adjacent and belong to two different keywords
        (for example: @keyword one@@keyword two@). In this situation
        both keywords would be replaced by their corresponding values.

* If a keyword appears in the template letter that does not appear in the
  dictionary, it is replaced with the string "ERROR".

* The template letter must have an even number of '@' symbols but you do
  not need to assert or enforce this.

* The test client prints an extra "***\n" after each letter.

* letters_generate may not modify or alter the passed dictionaries.
