/*
   clower: takes in 1) running result and 2) a pointer to an ASCII string.
   The function should lowercase any uppercase characters in the string
   and return the addition of the string length to the running result.

   This is the C version of an assembly function that would lowercase a string. 
   Learn how to work with an array of bytes as ASCII values in C.
 */
long long
clower(long long cres, char *cptr)
{
  char c;
  int i = 0;

  // Pointers and arrays are closely related in C syntax.
  //
  // This for loop iterates through the values pointed to by cptr as
  // an array. When we use 'cptr[i]' after a pointer, the compiler
  // will generate the assembly code that calculates an address by
  // taking the address of cptr as the base and adding to it i * the
  // size of the type of the pointer.
  //
  // In our case, cptr is a char pointer, which is one byte, so the loop
  // will iterate over the values pointed to by cptr one "char" at a
  // time. Note the loop terminates when it finds a zero value.
  // Since, by convention, we terminate ASCII strings with 0, we will
  // stop when we find it and thus when we are at the end of the string.
  for (i = 0; cptr[i] != 0; i++) {
    c = cptr[i];
    if ((c >= 'A') && (c <= 'Z')) {
      // We found a value within the range of uppercase ASCII characters.
      // We need to overwrite the value at cptr[i] with the lowercase version.
      // HINT: what does "c + ('a' - 'A')" do?
        // Force crash -- replace with your code here
      cptr[i] = c + ('a' - 'A');
    }
  }


  return cres + i;
}
