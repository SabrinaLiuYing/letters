// This module reads in dictionary key/value pairs

// SEASHELL_READONLY

// read_dicts(count, delim) reads in dictionaries from input
//   and returns an array of dictionaries
// notes: modifies count to be the number of dictionaries
//        delim is used to surround keys and values
//        see README.txt for details
// requires: count must be valid (non-null)
// effects: allocates memory (caller must destroy each dictionary and
//            the array itself)
//          modifies *count
// time: not available (not needed to complete this question)
struct dictionary **read_dicts(int *count, char delim);
