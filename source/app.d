import std.stdio;
import std.conv;



extern(C)
{
  bool foo(const int guess)
  {
    foreach(i ; 0..5)
    { 
      if(i % 2 == 0)
      {
        writeln("Even");
      } else {
        writeln("Odd");
      }
    }

    return guess == 5 ? true : false;
  }
}


