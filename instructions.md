instructions for how to export a PICO-8 game with the correct colors and screen resolution for [Nokia 3310 Jam](https://itch.io/jam/nokiajam6)

## resolution
- open pico8, load your game
- run `folder config` -- this will open a folder in your OS
- navigate to the `plates` subfolder
- download `nokia.html` (below) and save it in this folder. it should be named `nokia.html`
- inside pico8, run `export -p nokia -f mycoolgame.html`

## label image
- manually create an 84x48 image with the correct colors
- convert the image to [base64](https://elmah.io/tools/base64-image-encoder/)
- open `mycoolgame_html/index.html` in a text editor
- replace the `background:url` part of `.p8_start_button{` with your base64 image-string

## palette
- open `mycoolgame_html/mycoolgame.js` in a text editor
- find this string...:
  - `29,43,83,126,37,83,0,135,81,171,82,54,95,87,79,194,195,199,255,241,232,255,0,77,255,163,0,255,236,39,0,228,54,41,173,255,131,118,156,255,119,168,255,204,170`
  - ...and replace it with this string:
  - `67,82,61,67,82,61,67,82,61,67,82,61,67,82,61,199,240,216,199,240,216,199,240,216,199,240,216,199,240,216,199,240,216,199,240,216,199,240,216,199,240,216,199,240,216`
  - (it's in there twice, replace both of them)

- this will replace colors 1-15 with the original nokia colors, like this:

B | D | D | D
--- | --- | --- | ---
D | D | L | L
L | L | L | L
L | L | L | L

D is the darker #43523d, and L is the lighter #c7f0d8. I'm not sure how to replace color 0, so it stays black -- **don't use color 0 in your game**. Use colors 1 and 7 (or any combination of D/L from the table)

## license
- [CC0](https://creativecommons.org/publicdomain/zero/1.0/) - feel free to use this!
- it's not required, but if you'd like to credit me I'd appreciate it; this took hours to nail down all the specifics. something like "[nokia html template](https://gist.github.com/pancelor/322491bdc12d1f6fef5d08832a4a565e) by [pancelor](https://pancelor.itch.io/)". up to you!