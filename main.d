//dos in a couple lines of code.

// Greatly optimized for small spaces & low memory.

// DOSMini does have...
// speedy command handling
// DOSMini does NOT have...
// the "readline" functionality such as UP ARROW, etc...

import std.string;
import std.array;
import std.stdio;
import std.file;
import std.conv;

extern (C) int system(const char*);

void main() {
  writeln("DOSMini [Version 1.0]\nCopyright (C) Kai Gonzalez Software (Bootleg Microsoft)");
  while (1) {
   write("C:"~getcwd()~">");
   string cmd = readln();
   string[] argv = cmd.split;
   if (cmd == "cd") {
    chdir(argv[1]);
   } else {
     system(cmd.toStringz());
   }
  }
}
