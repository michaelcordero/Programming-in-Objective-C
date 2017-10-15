### Most of the programs contained within the subdirectories of this project can be easily compiled and run from the command line by:
1. navigating to the project you wish to run e.g. cd ~/Program3/
2. to compile: clang -fobjc-arc "files" -o "program
   - "files" = the list of files to be included in the compilation, seperated by a single space or "<program>"
   - "program" = the name of the executable file that will be created.
   - *Note:* only the implementation files (*.m) are compiled, the interfaces/include files are not needed.
   -- e.g.: clang -fobjc-arc main.m Cartesian.m -o prog
3. to run: ./prog

For more information on clang: [Clang 6 Documentation](https://clang.llvm.org/docs/ClangCommandLineReference.html) 
