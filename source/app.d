import std.conv;
import std.string;

struct User
{
    char* a;
    char* b;
}

struct Users
{
    User[] results;
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

  Users getUsers(char* firstName, char* lastName)
  {
    auto users = [User(firstName, lastName), User(firstName, lastName)];

    return Users(users);
  }


  T[] select(const char* query)
  {
    import std.algorithm : map;
    import std.array : array;
    import ddb.postgres;
    auto connection = new PGConnection({
      return new PGConnection([
          "host" : "172.17.0.3", 
          "database" : "new_ecratum", 
          "user" : "postgres", 
          "password" : "postgres"]);
    });
    auto cmd = new PGCommand(connection, query);

    auto result = cmd.executeQuery!(T)();
    T[] r = result.map!(a => cast(T) a).array;
    result.close();
    return r;
  }
}


