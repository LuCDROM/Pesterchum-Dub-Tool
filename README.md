# Pesterchum Dub Tool

This is a tool designed for making pesterlog editing a little easier for Homestuck dubbing videos.

It will type out pesterlogs line by line (or word by word), which you can record alongside the audio for your dub. While you probably won't line it up perfectly, you can always edit it yourself to line it up better.

If you use this in your videos I do ask that you credit LuCD and link this GitHub repository in the description!

Also shoutout to [https://www.jujuadams.com/Scribble/#/latest/](Scribble), a text renderer for GameMaker that this would not have been possible without.

If you have any questions about how to use this tool, my Discord is lucdrom

## Tutorial

The program comes with three text files for you to configure: color.txt, pesterlog.txt, and settings.txt.

The controls are:
  - S, D, Down, Right to progress log
    - S and Down may be held to go faster
    - D and Right may be pressed
  - A, W, Left, Up to go backward
    - W and Up may be held to go faster
    - A and Left may be pressed
  - Space to screenshot

### color.txt

This is where you can set up all the colours you'll be using, by default this has the beta kids's colours set up as a template.

As an example of how this is used, let's say we wanted to add Karkat's text colour. Lines said by him begin with his chumhandle initials and a colon, so "CG:", and his text colour in RGB is 98, 98, 98.

You'd input this as:
```
CG:
98
98
98

```

With the "Auto Color" setting on, any line beginning with "CG:" will be set to this colour! You can also set up in-line colour changes in your pesterlog with something like [CG:].

By the way, you can find all the text colours [https://flaringk.github.io/hs-hexes/](here)!

### pesterlog.txt

This is where you place your pesterlog, though there's a little more to it.

If there are any square brackets in your pesterlog, you must add an extra one to the opening bracket (EX: [[), or else Scribble will attempt to read the text inside as a command.

As mentioned previously, with the "Auto Color" setting on, lines beginning with whatever you titled your colours will automatically be that colour. You can also set up in-line colour changes in your pesterlog with [colorname].

The typical opening line of a pesterlog would be written something like this.
```
-- carcinoGeneticist [CG:][[CG][--] began pestering ectoBiologist [EB:][[EB][--] at 16:13 --
```

Images and some letters are not compatible, you'll have to edit those in yourself sorry.

### settings.txt

You guessed it, this is where you configure your settings. Here's a list of each setting.
  - Background Color (R, G, B)
  - Screen Width and Height (in pixels)
    - Do not make bigger than your screen, you may suffer from rendering issues.
  - Padding (in pixels)
  - Screen Scale
    - Once again, make sure not to make application bigger than your screen.
  - Auto Screenshot (0 = No, 1 = Yes)
    - You can screenshot the game with Space, however this setting allows you to automatically screenshot when progressing the pesterlog
  - Auto Color (0 = No, 1 = Yes)
    - Whether to automatically colour lines that begin with colour names in color.txt.
  - Print Type (1 = line by line, 2 = word by word, 3 = letter by letter)

## Updates?

I will likely update this in the future, some potential features (not guaranteed) include:
 - A proper settings menu
 - No extra space below a line that isn't fully typed out
 - Option to skip username portion of line when using word by word or letter by letter
 - More letters added to font (such as Ψ or ø)

If there's anything you'd like to see let me know and I'll see what I can do.