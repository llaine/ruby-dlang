import std.conv;
import std.string;

struct User
{
    char* a;
    char* b;
}

extern(C)
{
  bool fastBlank(const char* value)
  {
    auto str = to!string(value);
    if(str == "" || strip(str) == "") {
      return true;
    } 

    return false;
  }

  User getUsers(char* firstName, char* lastName)
  {
    return User(firstName, lastName);
  }
}


