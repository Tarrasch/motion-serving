# motion-serving

This is a *very* simple simulation program written with the aid of the [Motion
Grammar Kit][mgk] (mgk). In particular, we use its LL(\*) code generator.

![Screenshot](https://github.com/Tarrasch/motion-serving/raw/master/screenshot-small.png
"Stay thirsty my friend!")

## Files

Here is a overview of the files here

  * `serve.c` - The file that the mgk generated. It has been slightly modified
    after generation though.
  * `draw.c` - A simple general purpose drawing library in C. Unrelated to our
    application.
  * `game.c` - A file containing the logic around
  * `draw_game.c` - A file containing the drawing logic
  * `bundle.c` - Cause I don't want to mess with any `.h` files nor makefiles

## Compile it

While I generated `serve.c`, I decided to commit it anyway to make it easier
for others to compile. To generate the file on your own, see the next section.

This program probably will only work on Linux. But anyways, just issue

    gcc serve.c -std=c99

Then run with

    ./a.out

## Generating your own `serve.c` and filling the stubs

  1. Install mgk -- You should now have the lisp REPL with `MG> ` as caption.
  2. Load the value residing in `grammar.lisp`
  3. In the list REPL, issue `(grammar->c-ll-star-parser (serve-robot-grammar))`.
  4. Locate the generated C-file and import to this folder.
  5. Apply the changes I applied to `serve.c` (search for the pattern "XXX") to
     you generated source file.

## Video

If you're lazy and don't want to compile this. I've also uploaded a
[video](http://vimeo.com/65211377).

[mgk]: https://github.com/golems/motion-grammar-kit
