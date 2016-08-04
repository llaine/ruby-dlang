
extern(C)
{
  bool fastBlank(const char* value)
  {
    import std.conv;
    import std.string;

    auto str = to!string(value);
    if(str == "" || strip(str) == "") {
      return true;
    } 

    return false;
  }
}


