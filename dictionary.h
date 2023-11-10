// A dictionary module with string keys and string values

// SEASHELL_READONLY

struct dictionary;

// dict_create() creates a new (empty) dictionary
// effects: allocates memory (must call dict_destroy)
struct dictionary *dict_create(void);

// dict_insert(key, val, d) adds key/val pair to d if key does not already
//   exist (if key already exists, insert has no effect)
// note: makes a copy of key, val
// requires: key, val, d are valid (not NULL)
// effects: may modify d
// time: O(mlogn) where n is the number of words in d and m is the length
//       of the key
void dict_insert(const char *key, const char *val, struct dictionary *d);

// dict_lookup(key, d) returns the corresponding val if key is in d
//   or NULL if key does not exist in d
// requires: key, d are valid (not NULL)
// time: O(mlogn) where n is the number of words in d and m is the length
//       of the key
const char *dict_lookup(const char *key, const struct dictionary *d);

// dict_destroy(d) frees all memory associated with d
// effects: d is no longer valid
// time: O(n) where n is the number of words in d
void dict_destroy(struct dictionary *d);
