# Wolf Link Outline
hey

so I'm gonna make a plan here about what to do, and each sub-category can have it's own list of everything that goes into it. Functions/variables should be documented as well.

get `Markdown Preview for Github Alerts` to preview this document properly

Feel free to redo the formatting if this sucks to read lol

## Project
### Model
- Import the new "export" model and re-apply the transforms to copy the new IK model **$\color{lightgreen}Done$**
- Finish making the textures, add teeth and hair cards

### Debug
- Try to get an accurate in-game speed value printed to screen just like in GZ

### Display Lists
- Can DLs be added instead of replacing parts of the mesh? (eg. shield, goron bracelet)
- Can they be rotated on the fly? 
- Ultimately, can we put the sword in his mouth and rotate it to be sideways or pointed forward depending on actions
- Investigate first person DLs (follow `PLAYER_ADULT_LIMB_L_FOREARM` or `PLAYER_ADULT_LIMB_R_SHOULDER`)

## Gameplay
> [!IMPORTANT]
> investigate `sAgeProperties` and try to find out what all of the parameters do
### Collision
- `sAgeProperties` has info on environment collision data
### Hit/Hurtboxes
- `WolfHurtBox` for the cylinder

### Movement Properties
`sBootData`, the properties are as follows: 
- Array start `(REG(19))`
- Strafing min step speed `(REG(30))`
- Strafing step speed velocity `(REG(32))`
- Unknown `(REG(34))`
- Minimum Walk animation speed `(REG(35))`
- Maximum Walk Animation Speed `(REG(36))`
- Walk/Run Blend Ratio `(REG(37))`
- Standard Run Anim Speed `(REG(38))`
- Deceleration at Neutral stick `(REG(43))`
- Max Run Speed `(REG(45))`
- Gravity `(REG(68))`
- Unknown `(REG(69))`
- Max Jump Speed Threshold `(IREG(66))`
- Jump Strength `(IREG(67))`
- Unknown `(IREG(69))`
- Unknown `(IREG(68))`
- Aim Strafing `(MREG(95))`

### Unsorted things to look into later
- Find out how to sharpen his turning radius while running
- Fix Feet on Slopes `Player_OverrideLimbDrawGameplayCommon` -> `if (limbIndex == PLAYER_WOLF_LIMB_L/R_THIGH)`
- Fix Shadows so there are 4 of them, look at `Actor_SetFootPos`, `unk_04` in `sAgeProperties`, `ActorShape_Init` -> `ActorShadow_DrawFeet`


## Basic

### Notes

### Idles
- Basic Idle anim  **$\color{lightgreen}Done$** `gLinkWolfWaitAnim`
- accented anims that play as flavour
    - sitting anim
    - looking around
    - maybe one where he seems to get distracted by something
- possibly double the length of the basic idle so the other anims don't play as frequently
> [!IMPORTANT]
> List all idle types; hot, cold, etc.

### Walking

- Walking Animation **$\color{lightgreen}Done$** `gLinkWolfWalkAnim` 
- Animate transitions `..walk_endL` and `..walk_endR`
    - This will require learning about how it distinguishes which foot he is on. I believe it's determined by the current frame of the animation

-   Discover any other Transitions


### Running
- Animation **$\color{lightgreen}Done$** `gLinkWolfRunAnim` $\color{orange}wip$ back legs need some work, and it seems to not be correctly looping for some reason. maybe test a longer anim and see what happens
> [!IMPORTANT]
> I may need to remake the animation after finding out how to measure the floor speed in Blender, and update it to match the actual speed of 10 upf;

- Find and experiment with turning radius
- Discover Animation Transitions to and from this animation

### Side-Walking

- Make Animation and assess further
- Decrease speed on Wolf only

### Back-Walking
- Make Animation and assess further
- Decrease speed on Wolf only

## Secondary Movement

### Rolling
- Idea to repurpose the roll as a head charge similar to TP's sprint, perhaps have it be hold A to continue doing it instead of having to re-press it over and over
### Jumping
### Ledges 
### Climbing (Ladders/Vines)

## Attacks
Sword Dog Reference Ideas: https://www.youtube.com/watch?v=g1_sr46finE Zacian in Pokemon Unite, look into Sif, Okami

play TP, read TP manga

Assign "Unequipped (Teeth/Claws)" to Short Sword state/anims and assign "Master Sword" to Long Sword state/anims
> [!IMPORTANT]
> list all attack types
### L Combo
### R Combo
### Stab Combo
### Jump Attack

## Equipment/Abilities
**Ideas:**
- could be cool to have a magic dash that's even faster than sprint but drains magic, similar to MM zora swim

## More

> [!IMPORTANT]
> List additional categories for the mod

## Polish Notes for later