import std.string;

extern(C)
{
  bool fastBlank(const char* value)
  {
    if(value == "" || strip(value.fromStringz) == "") {
      return true;
    } 

    return false;
  }
}


