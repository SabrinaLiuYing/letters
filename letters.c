/////////////////////////////////////////////////////////////////////////////
// INTEGRITY STATEMENT (v3)
//
// By signing your name and ID below you are stating that you have agreed
// to the online academic integrity statement:
// https://student.cs.uwaterloo.ca/~cs136/current/assignments/integrity.shtml
/////////////////////////////////////////////////////////////////////////////
// I received help from and/or collaborated with:

// NONE
//
// Name: Ying Liu
// login ID: y2862liu
///////////////////////////////////////////////////////////////////////////// 

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include "letters.h"
#include "cs136-trace.h"

static const char *ERROR_MISSING_KEY = "ERROR";


char *generate(const char *template, struct dictionary *dict){
  assert(template);
  assert(dict);
  int k = 0;
  int i = 0;
  int len = strlen(template);
  int maxlen = len;
  char *new = malloc((maxlen + 1) * sizeof(char));
  while(i < len){
    if(template[i] == '@'){
      if(template[i + 1] == '@'){
        new[k] = template[i];
        i += 2;
        k++;
        continue;
      }
      char *str = malloc(len * sizeof(char));
      int j = 0;
      i++;
      while(template[i] != '@'){
        str[j] = template[i];
        i++;
        j++;
      }
      str[j] = '\0';
      new[k] = '\0';
      if(dict_lookup(str, dict) != NULL){
        if(k + strlen(dict_lookup(str, dict)) >= maxlen){
          maxlen += strlen(dict_lookup(str, dict));
          new = realloc(new, (maxlen + 1) * sizeof(char));
        }
        strcat(new, dict_lookup(str, dict));
        k += strlen(dict_lookup(str, dict));
      }else{
        if(k + strlen(ERROR_MISSING_KEY) >= maxlen){
          maxlen += strlen(ERROR_MISSING_KEY) + 1;
          new = realloc(new, (maxlen + 1) * sizeof(char));
        }
        strcat(new, ERROR_MISSING_KEY);
        k += strlen(ERROR_MISSING_KEY);
      }
      free(str);
    }else{
      if(k >= maxlen){
        maxlen *= 2;
        new = realloc(new, (maxlen + 1) * sizeof(char));
      }
      new[k] = template[i];
      k++;
    }
    i++;
  }
  new[k] = 0;
  int final = strlen(new);
  new = realloc(new, (final + 1) * sizeof(char));
  return new;
}

char **letters_generate(const char *template, struct dictionary *dicts[], 
                        int count) {
  assert(template);
  assert(dicts);
  assert(count > 0);
  char **g = malloc(count * sizeof(char *));
  for(int i = 0; i < count; i ++){
    assert(dicts[i]);
    g[i] = generate(template, dicts[i]);
  }
  return g;
}