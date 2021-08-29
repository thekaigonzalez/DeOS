import std.stdio;
import std.system;

int main()
{
 writeln("Hello!");
 writeln("I will guess your Operating System...");
 write("I'm gonna guess you're on.... ");
  
 version(Windows) {
  writeln("Come on... Windows?");
 } else {
  writeln("Thank you for using any other OS other than windows..");
 }
 return 1;
}
