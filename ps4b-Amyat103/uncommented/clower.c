long long
clower(long long cres, char *cptr)
{
  char c;
  int i=0;

  for (i=0; cptr[i] != 0; i++) {
    c = cptr[i];
    if ((c >= 'A') && (c <= 'Z')) {
      // we found a value that within the range of upper case ascii
      // we need to overwrite the value at cptr[i] with the lower case version
      *((int *)0) = 1;
    }
  }
  return cres + i;
}
