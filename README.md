# nokiajam-pico8-template

a template + instructions for using the [PICO-8](https://www.lexaloffle.com/pico-8.php) game engine for the [Nokia 3310 game jam](https://itch.io/jam/nokiajam3)

## features

- [x] nokia color palette
- [x] 84x48 resolution 
- [x] 15fps

## HOW TO MAKE YOUR GAME
- use colors 1 (dark) and 7 (light). Do not use color 0 (black)
- draw your game inside the rectangle from 0,0 to 83,47 (inclusive)
    - anything outside this region will not be seen in the exported game
    - during development, you may want to `rect(-1,-1,84,48,15)` during `_draw`, so that you can visualize the final area

## HOW TO EXPORT

1. intial setup 
    - open pico8
    - run `folder config` -- this will open a folder in your OS
    - navigate to the `plates` subfolder
    - download [`plates/nokia3310.html`](./plates/nokia3310.html) and save it in this folder
2. exporting
    - inside pico8, run `export -p nokia3310 -f mycoolgame.html`
3. setting the label image
    - manually create an 84x48 image with the correct colors
    - convert the image to [base64](https://elmah.io/tools/base64-image-encoder/)
    - open `mycoolgame_html/index.html` in a text editor
    - replace the `background:url` part of `.p8_start_button{` with your base64 image-string
4. replace palette
    - option 1 (manual)
        - open `mycoolgame_html/mycoolgame.js` in a text editor
        - find this string...:
            - `29,43,83,126,37,83,0,135,81,171,82,54,95,87,79,194,195,199,255,241,232,255,0,77,255,163,0,255,236,39,0,228,54,41,173,255,131,118,156,255,119,168,255,204,170`
            - ...and replace it with this string:
            - `67,82,61,67,82,61,67,82,61,67,82,61,67,82,61,199,240,216,199,240,216,199,240,216,199,240,216,199,240,216,199,240,216,199,240,216,199,240,216,199,240,216,199,240,216`
            - (it's in there twice, replace both of them)
    - option 2 (automatic)
        - for commmandline users: edit + run the included [`change-palette.sh`](./change-palette.sh) shell script)

## palette
- the exporting process (described above) replaces the colors 1-15 with the original nokia colors, like this:

B | D | D | D
--- | --- | --- | ---
D | D | L | L
L | L | L | L
L | L | L | L

D is the darker #43523d, and L is the lighter #c7f0d8. I'm not sure how to replace color 0, so it stays black -- **don't use color 0 in your game**. Use colors 1 and 7 (or any combination of D/L from the table)

## pause menu
you should suppress the pause menu (`if(btn(6)) poke(0x5f30,1)` inside `_update`) and make your own instead.

this is a bit awkward, because the screen position of pico-8's menu is not configurable

note that players can still hold the pause button for 0.5 seconds to reach pico8's pause menu, which will be very confusing since it's not visible

## TODO
- [ ] custom font
  - note when porting: the classic 3310 font on the [jam resources page](https://phillipp.itch.io/nokiajamresources) has many small mistakes, e.g. "M" "W" "S"
- [ ] custom pause menu
- [ ] sfx example - instr 3 (green) ?

## license / credits
- [MIT license](./LICENSE)
- it's not required, but if you'd like to credit me I'd appreciate it; this took hours to nail down all the specifics. something like "[nokia html template](https://github.com/pancelor/nokiajam-pico8-template) by [pancelor](https://pancelor.itch.io/)". up to you!
- thanks to [Tobias V. Langhoff](https://itch.io/profile/tobiasvl) and [PaloBlancoGames](https://itch.io/profile/paloblancogames) for initial work figuring out the palette-swapping!
