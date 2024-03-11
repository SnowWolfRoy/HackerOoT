#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "mod_gameplay_keep.h"
#include "assets/misc/wolf_animetion/wolf_animetion.h"

LinkAnimationHeader gPlayerAnim_wolf_normal_temp = {
	{ 55 }, gPlayerAnim_wolf_normal_tempData
};

#define TEMP_ANIM(frameCount) \
LinkAnimationHeader gPlayerAnim_wolf_normal_temp_##frameCount = { \
	{ frameCount }, gPlayerAnim_wolf_normal_tempData \
}
TEMP_ANIM(3);
TEMP_ANIM(4);
TEMP_ANIM(5);
TEMP_ANIM(6);
TEMP_ANIM(7);
TEMP_ANIM(8);
TEMP_ANIM(9);
TEMP_ANIM(10);
TEMP_ANIM(11);
TEMP_ANIM(12);
TEMP_ANIM(13);
TEMP_ANIM(14);
TEMP_ANIM(15);
TEMP_ANIM(16);
TEMP_ANIM(17);
TEMP_ANIM(18);
TEMP_ANIM(19);
TEMP_ANIM(20);
TEMP_ANIM(21);
TEMP_ANIM(22);
TEMP_ANIM(23);
TEMP_ANIM(24);
TEMP_ANIM(25);
TEMP_ANIM(26);
TEMP_ANIM(27);
TEMP_ANIM(28);
TEMP_ANIM(29);
TEMP_ANIM(30);
TEMP_ANIM(31);
TEMP_ANIM(32);
TEMP_ANIM(33);
TEMP_ANIM(34);
TEMP_ANIM(35);
TEMP_ANIM(36);
TEMP_ANIM(37);
TEMP_ANIM(38);
TEMP_ANIM(39);
TEMP_ANIM(40);
TEMP_ANIM(41);
TEMP_ANIM(42);
TEMP_ANIM(43);
TEMP_ANIM(44);
TEMP_ANIM(45);
TEMP_ANIM(46);
TEMP_ANIM(47);
TEMP_ANIM(48);
TEMP_ANIM(49);
TEMP_ANIM(50);
TEMP_ANIM(51);
TEMP_ANIM(52);
TEMP_ANIM(53);
TEMP_ANIM(54);
TEMP_ANIM(55);
#undef TEMP_ANIM
// TODO: Add a temporary filler animation that has 300 frames.
#define TEMP_ANIM(frameCount) \
LinkAnimationHeader gPlayerAnim_wolf_normal_temp_##frameCount = { \
	{ 55 }, gPlayerAnim_wolf_normal_tempData \
}
TEMP_ANIM(56);
TEMP_ANIM(57);
TEMP_ANIM(58);
TEMP_ANIM(59);
TEMP_ANIM(60);
TEMP_ANIM(61);
TEMP_ANIM(62);
TEMP_ANIM(63);
TEMP_ANIM(64);
TEMP_ANIM(65);
TEMP_ANIM(66);
TEMP_ANIM(67);
TEMP_ANIM(68);
TEMP_ANIM(69);
TEMP_ANIM(70);
TEMP_ANIM(71);
TEMP_ANIM(72);
TEMP_ANIM(73);
TEMP_ANIM(74);
TEMP_ANIM(75);
TEMP_ANIM(76);
TEMP_ANIM(77);
TEMP_ANIM(78);
TEMP_ANIM(79);
TEMP_ANIM(80);
TEMP_ANIM(81);
TEMP_ANIM(82);
TEMP_ANIM(83);
TEMP_ANIM(84);
TEMP_ANIM(85);
TEMP_ANIM(86);
TEMP_ANIM(87);
TEMP_ANIM(88);
TEMP_ANIM(89);
TEMP_ANIM(113);
TEMP_ANIM(120);
TEMP_ANIM(131);
TEMP_ANIM(178);
TEMP_ANIM(195);
TEMP_ANIM(208);
TEMP_ANIM(230);
TEMP_ANIM(252);
#undef TEMP_ANIM

LinkAnimationHeader gPlayeranim_wolf_normal_walk = {
	{ 55 }, gPlayeranim_wolf_normal_walkData
};