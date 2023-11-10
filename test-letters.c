// This is an I/O Test client for the letters module
// See README.TXT for more information

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include "dictionary.h"
#include "read-dicts.h"
#include "slurp.h"
#include "letters.h"

int main(void) {
  int count = 0;
  struct dictionary **dicts = read_dicts(&count, '@');
  char *template = slurp();
  assert(template);
  char **new_letters = letters_generate(template, dicts, count);
  assert(new_letters);
  for (int i = 0; i < count; ++i) {
    assert(new_letters[i]);
    printf("%s***\n", new_letters[i]);
    free(new_letters[i]);
    dict_destroy(dicts[i]);
  }
  free(new_letters);
  free(template);
  free(dicts);
}
