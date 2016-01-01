# What is this project

This is a very basic example project for building a `Node JS` program with `Haxe`.

# Background

Haxe allows you to target multiple operating systems and languages.

# Compile To..

Haxe can compile into:
- Actionscript3 (as3)
- Javascript (js)
- Java (java)
- C# (cs)
- Python (py)
- C++ (cpp)
- PHP (php)
- Neko (n)

# Getting started

Download Haxe here: http://haxe.org/download/
Then run the `haxelib setup` command.
Here is an example:

```
// Haxe Does not understand ~ so you must specify the dir absolutely.
// Also using .haxelib doesn't seem to work properly as of now.

// Replace `username` below with your system user
haxelib setup /Users/username/haxelib
```

# Download dependencies

This is so we can run our tests, and use node js bindings.
```
haxelib install munit
haxelib install hamcrest
haxelib install hxnodejs
```

After that you should be able to `git clone` this project and then run: `./bin/compile`
---
> `compile` is just a bash script that runs `haxe build.hxml`
> For more information on `build.hxml` look here: 
> - http://old.haxe.org/doc/compiler

The `build.hxml` file tells the compiler to:
- Find the source files inside `src`
- Create a `Main.swf` file in the `build` directory.

The `./bin/clean` bash script will clean out the build directory.

Try changing the build target by using the other options found at:
- http://haxe.org/documentation/introduction/compiler-usage.html

# Running tests

Right now there is only one test but it can be run using: `./bin/check`
