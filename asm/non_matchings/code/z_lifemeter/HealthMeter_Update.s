.late_rodata
glabel D_8013C888
    .float 0.1

.text
glabel HealthMeter_Update
/* AEFBD8 80078A38 3C0E0001 */  lui   $t6, 1
/* AEFBDC 80078A3C 01C47021 */  addu  $t6, $t6, $a0
/* AEFBE0 80078A40 85CE06EE */  lh    $t6, 0x6ee($t6)
/* AEFBE4 80078A44 3C018014 */  lui   $at, %hi(D_8013C888)
/* AEFBE8 80078A48 C428C888 */  lwc1  $f8, %lo(D_8013C888)($at)
/* AEFBEC 80078A4C 448E2000 */  mtc1  $t6, $f4
/* AEFBF0 80078A50 3C010001 */  lui   $at, (0x000104F0 >> 16) # lui $at, 1
/* AEFBF4 80078A54 342104F0 */  ori   $at, (0x000104F0 & 0xFFFF) # ori $at, $at, 0x4f0
/* AEFBF8 80078A58 468021A0 */  cvt.s.w $f6, $f4
/* AEFBFC 80078A5C 00811021 */  addu  $v0, $a0, $at
/* AEFC00 80078A60 844F0200 */  lh    $t7, 0x200($v0)
/* AEFC04 80078A64 24040032 */  li    $a0, 50
/* AEFC08 80078A68 240600FF */  li    $a2, 255
/* AEFC0C 80078A6C 46083002 */  mul.s $f0, $f6, $f8
/* AEFC10 80078A70 51E0000B */  beql  $t7, $zero, .L80078AA0
/* AEFC14 80078A74 844C01FE */   lh    $t4, 0x1fe($v0)
/* AEFC18 80078A78 845801FE */  lh    $t8, 0x1fe($v0)
/* AEFC1C 80078A7C 2719FFFF */  addiu $t9, $t8, -1
/* AEFC20 80078A80 A45901FE */  sh    $t9, 0x1fe($v0)
/* AEFC24 80078A84 844B01FE */  lh    $t3, 0x1fe($v0)
/* AEFC28 80078A88 5D600010 */  bgtzl $t3, .L80078ACC
/* AEFC2C 80078A8C 24190046 */   li    $t9, 70
/* AEFC30 80078A90 A44001FE */  sh    $zero, 0x1fe($v0)
/* AEFC34 80078A94 1000000C */  b     .L80078AC8
/* AEFC38 80078A98 A4400200 */   sh    $zero, 0x200($v0)
/* AEFC3C 80078A9C 844C01FE */  lh    $t4, 0x1fe($v0)
.L80078AA0:
/* AEFC40 80078AA0 240F000A */  li    $t7, 10
/* AEFC44 80078AA4 24180001 */  li    $t8, 1
/* AEFC48 80078AA8 258D0001 */  addiu $t5, $t4, 1
/* AEFC4C 80078AAC A44D01FE */  sh    $t5, 0x1fe($v0)
/* AEFC50 80078AB0 844E01FE */  lh    $t6, 0x1fe($v0)
/* AEFC54 80078AB4 29C1000A */  slti  $at, $t6, 0xa
/* AEFC58 80078AB8 54200004 */  bnezl $at, .L80078ACC
/* AEFC5C 80078ABC 24190046 */   li    $t9, 70
/* AEFC60 80078AC0 A44F01FE */  sh    $t7, 0x1fe($v0)
/* AEFC64 80078AC4 A4580200 */  sh    $t8, 0x200($v0)
.L80078AC8:
/* AEFC68 80078AC8 24190046 */  li    $t9, 70
.L80078ACC:
/* AEFC6C 80078ACC 240B0028 */  li    $t3, 40
/* AEFC70 80078AD0 240C003C */  li    $t4, 60
/* AEFC74 80078AD4 A446020E */  sh    $a2, 0x20e($v0)
/* AEFC78 80078AD8 A4590212 */  sh    $t9, 0x212($v0)
/* AEFC7C 80078ADC A4440216 */  sh    $a0, 0x216($v0)
/* AEFC80 80078AE0 A444021A */  sh    $a0, 0x21a($v0)
/* AEFC84 80078AE4 A44B021E */  sh    $t3, 0x21e($v0)
/* AEFC88 80078AE8 A44C0222 */  sh    $t4, 0x222($v0)
/* AEFC8C 80078AEC 3C0D8012 */  lui   $t5, %hi(sHeartsPrimColors) # $t5, 0x8012
/* AEFC90 80078AF0 85ADFF10 */  lh    $t5, %lo(sHeartsPrimColors)($t5)
/* AEFC94 80078AF4 3C0E8012 */  lui   $t6, %hi(sHeartsPrimColors+2) # $t6, 0x8012
/* AEFC98 80078AF8 3C0F8012 */  lui   $t7, %hi(sHeartsPrimColors+4) # $t7, 0x8012
/* AEFC9C 80078AFC A44D0210 */  sh    $t5, 0x210($v0)
/* AEFCA0 80078B00 85CEFF12 */  lh    $t6, %lo(sHeartsPrimColors+2)($t6)
/* AEFCA4 80078B04 3C188012 */  lui   $t8, %hi(sHeartsEnvColors) # $t8, 0x8012
/* AEFCA8 80078B08 3C198012 */  lui   $t9, %hi(sHeartsEnvColors+2) # $t9, 0x8012
/* AEFCAC 80078B0C A44E0214 */  sh    $t6, 0x214($v0)
/* AEFCB0 80078B10 85EFFF14 */  lh    $t7, %lo(sHeartsPrimColors+4)($t7)
/* AEFCB4 80078B14 3C0B8012 */  lui   $t3, %hi(sHeartsEnvColors+4) # $t3, 0x8012
/* AEFCB8 80078B18 3C078012 */  lui   $a3, %hi(sHeartsPrimFactors) # $a3, 0x8012
/* AEFCBC 80078B1C A44F0218 */  sh    $t7, 0x218($v0)
/* AEFCC0 80078B20 8718FF24 */  lh    $t8, %lo(sHeartsEnvColors)($t8)
/* AEFCC4 80078B24 24E7FF38 */  addiu $a3, %lo(sHeartsPrimFactors) # addiu $a3, $a3, -0xc8
/* AEFCC8 80078B28 3C088012 */  lui   $t0, %hi(sHeartsEnvFactors) # $t0, 0x8012
/* AEFCCC 80078B2C A458021C */  sh    $t8, 0x21c($v0)
/* AEFCD0 80078B30 8739FF26 */  lh    $t9, %lo(sHeartsEnvColors+2)($t9)
/* AEFCD4 80078B34 2508FF4C */  addiu $t0, %lo(sHeartsEnvFactors) # addiu $t0, $t0, -0xb4
/* AEFCD8 80078B38 3C018016 */  lui   $at, %hi(sBeatingHeartsDDPrim+6) # $at, 0x8016
/* AEFCDC 80078B3C A4590220 */  sh    $t9, 0x220($v0)
/* AEFCE0 80078B40 856BFF28 */  lh    $t3, %lo(sHeartsEnvColors+4)($t3)
/* AEFCE4 80078B44 3C098016 */  lui   $t1, %hi(sHeartsDDPrim) # $t1, 0x8016
/* AEFCE8 80078B48 2529FDC0 */  addiu $t1, %lo(sHeartsDDPrim) # addiu $t1, $t1, -0x240
/* AEFCEC 80078B4C A44B0224 */  sh    $t3, 0x224($v0)
/* AEFCF0 80078B50 84EC0000 */  lh    $t4, ($a3)
/* AEFCF4 80078B54 84EE0002 */  lh    $t6, 2($a3)
/* AEFCF8 80078B58 84F80004 */  lh    $t8, 4($a3)
/* AEFCFC 80078B5C 448C5000 */  mtc1  $t4, $f10
/* AEFD00 80078B60 448E3000 */  mtc1  $t6, $f6
/* AEFD04 80078B64 3C078016 */  lui   $a3, %hi(sBeatingHeartsDDPrim) # $a3, 0x8016
/* AEFD08 80078B68 46805420 */  cvt.s.w $f16, $f10
/* AEFD0C 80078B6C 24E7FDD0 */  addiu $a3, %lo(sBeatingHeartsDDPrim) # addiu $a3, $a3, -0x230
/* AEFD10 80078B70 3C0A8016 */  lui   $t2, %hi(sHeartsDDEnv)
/* AEFD14 80078B74 254AFDC8 */  addiu $t2, %lo(sHeartsDDEnv) # addiu $t2, $t2, -0x238
/* AEFD18 80078B78 46803220 */  cvt.s.w $f8, $f6
/* AEFD1C 80078B7C 46008482 */  mul.s $f18, $f16, $f0
/* AEFD20 80078B80 4600910D */  trunc.w.s $f4, $f18
/* AEFD24 80078B84 44989000 */  mtc1  $t8, $f18
/* AEFD28 80078B88 46004282 */  mul.s $f10, $f8, $f0
/* AEFD2C 80078B8C 44032000 */  mfc1  $v1, $f4
/* AEFD30 80078B90 00000000 */  nop   
/* AEFD34 80078B94 00031C00 */  sll   $v1, $v1, 0x10
/* AEFD38 80078B98 46809120 */  cvt.s.w $f4, $f18
/* AEFD3C 80078B9C 00031C03 */  sra   $v1, $v1, 0x10
/* AEFD40 80078BA0 246C00FF */  addiu $t4, $v1, 0xff
/* AEFD44 80078BA4 318D00FF */  andi  $t5, $t4, 0xff
/* AEFD48 80078BA8 A44D0202 */  sh    $t5, 0x202($v0)
/* AEFD4C 80078BAC 4600540D */  trunc.w.s $f16, $f10
/* AEFD50 80078BB0 46002182 */  mul.s $f6, $f4, $f0
/* AEFD54 80078BB4 44048000 */  mfc1  $a0, $f16
/* AEFD58 80078BB8 00000000 */  nop   
/* AEFD5C 80078BBC 00042400 */  sll   $a0, $a0, 0x10
/* AEFD60 80078BC0 4600320D */  trunc.w.s $f8, $f6
/* AEFD64 80078BC4 00042403 */  sra   $a0, $a0, 0x10
/* AEFD68 80078BC8 248F0046 */  addiu $t7, $a0, 0x46
/* AEFD6C 80078BCC 31F800FF */  andi  $t8, $t7, 0xff
/* AEFD70 80078BD0 44054000 */  mfc1  $a1, $f8
/* AEFD74 80078BD4 A4580204 */  sh    $t8, 0x204($v0)
/* AEFD78 80078BD8 00052C00 */  sll   $a1, $a1, 0x10
/* AEFD7C 80078BDC 00052C03 */  sra   $a1, $a1, 0x10
/* AEFD80 80078BE0 24AB0032 */  addiu $t3, $a1, 0x32
/* AEFD84 80078BE4 316C00FF */  andi  $t4, $t3, 0xff
/* AEFD88 80078BE8 A44C0206 */  sh    $t4, 0x206($v0)
/* AEFD8C 80078BEC 850D0000 */  lh    $t5, ($t0)
/* AEFD90 80078BF0 850F0002 */  lh    $t7, 2($t0)
/* AEFD94 80078BF4 85190004 */  lh    $t9, 4($t0)
/* AEFD98 80078BF8 448D5000 */  mtc1  $t5, $f10
/* AEFD9C 80078BFC 448F3000 */  mtc1  $t7, $f6
/* AEFDA0 80078C00 3C088016 */  lui   $t0, %hi(sBeatingHeartsDDEnv) # $t0, 0x8016
/* AEFDA4 80078C04 46805420 */  cvt.s.w $f16, $f10
/* AEFDA8 80078C08 2508FDE0 */  addiu $t0, %lo(sBeatingHeartsDDEnv) # addiu $t0, $t0, -0x220
/* AEFDAC 80078C0C 3C0F8012 */  lui   $t7, %hi(sHeartsDDPrimColors) # $t7, 0x8012
/* AEFDB0 80078C10 3C0B8012 */  lui   $t3, %hi(sHeartsDDEnvColors)
/* AEFDB4 80078C14 46803220 */  cvt.s.w $f8, $f6
/* AEFDB8 80078C18 46008482 */  mul.s $f18, $f16, $f0
/* AEFDBC 80078C1C 4600910D */  trunc.w.s $f4, $f18
/* AEFDC0 80078C20 44999000 */  mtc1  $t9, $f18
/* AEFDC4 80078C24 46004282 */  mul.s $f10, $f8, $f0
/* AEFDC8 80078C28 44032000 */  mfc1  $v1, $f4
/* AEFDCC 80078C2C 00000000 */  nop   
/* AEFDD0 80078C30 00031C00 */  sll   $v1, $v1, 0x10
/* AEFDD4 80078C34 46809120 */  cvt.s.w $f4, $f18
/* AEFDD8 80078C38 00031C03 */  sra   $v1, $v1, 0x10
/* AEFDDC 80078C3C 246D0032 */  addiu $t5, $v1, 0x32
/* AEFDE0 80078C40 31AE00FF */  andi  $t6, $t5, 0xff
/* AEFDE4 80078C44 A44E0208 */  sh    $t6, 0x208($v0)
/* AEFDE8 80078C48 4600540D */  trunc.w.s $f16, $f10
/* AEFDEC 80078C4C 46002182 */  mul.s $f6, $f4, $f0
/* AEFDF0 80078C50 240E00C8 */  li    $t6, 200
/* AEFDF4 80078C54 44048000 */  mfc1  $a0, $f16
/* AEFDF8 80078C58 00000000 */  nop   
/* AEFDFC 80078C5C 00042400 */  sll   $a0, $a0, 0x10
/* AEFE00 80078C60 4600320D */  trunc.w.s $f8, $f6
/* AEFE04 80078C64 00042403 */  sra   $a0, $a0, 0x10
/* AEFE08 80078C68 24980028 */  addiu $t8, $a0, 0x28
/* AEFE0C 80078C6C 331900FF */  andi  $t9, $t8, 0xff
/* AEFE10 80078C70 44054000 */  mfc1  $a1, $f8
/* AEFE14 80078C74 A459020A */  sh    $t9, 0x20a($v0)
/* AEFE18 80078C78 3C188012 */  lui   $t8, %hi(sHeartsDDPrimColors+2) # $t8, 0x8012
/* AEFE1C 80078C7C 00052C00 */  sll   $a1, $a1, 0x10
/* AEFE20 80078C80 00052C03 */  sra   $a1, $a1, 0x10
/* AEFE24 80078C84 24AC003C */  addiu $t4, $a1, 0x3c
/* AEFE28 80078C88 318D00FF */  andi  $t5, $t4, 0xff
/* AEFE2C 80078C8C A44D020C */  sh    $t5, 0x20c($v0)
/* AEFE30 80078C90 A50E0000 */  sh    $t6, ($t0)
/* AEFE34 80078C94 A4E60000 */  sh    $a2, ($a3)
/* AEFE38 80078C98 A4E60002 */  sh    $a2, 2($a3)
/* AEFE3C 80078C9C A4E60004 */  sh    $a2, 4($a3)
/* AEFE40 80078CA0 A5000002 */  sh    $zero, 2($t0)
/* AEFE44 80078CA4 A5000004 */  sh    $zero, 4($t0)
/* AEFE48 80078CA8 3C0E8012 */  lui   $t6, %hi(sHeartsDDPrimFactors) # $t6, 0x8012
/* AEFE4C 80078CAC 85CEFF88 */  lh    $t6, %lo(sHeartsDDPrimFactors)($t6)
/* AEFE50 80078CB0 85EFFF60 */  lh    $t7, %lo(sHeartsDDPrimColors)($t7)
/* AEFE54 80078CB4 8718FF62 */  lh    $t8, %lo(sHeartsDDPrimColors+2)($t8)
/* AEFE58 80078CB8 448E5000 */  mtc1  $t6, $f10
/* AEFE5C 80078CBC 3C198012 */  lui   $t9, %hi(sHeartsDDPrimColors+4) # $t9, 0x8012
/* AEFE60 80078CC0 8739FF64 */  lh    $t9, %lo(sHeartsDDPrimColors+4)($t9)
/* AEFE64 80078CC4 46805420 */  cvt.s.w $f16, $f10
/* AEFE68 80078CC8 A42FFDD6 */  sh    $t7, %lo(sBeatingHeartsDDPrim+6)($at)
/* AEFE6C 80078CCC 3C018016 */  lui   $at, %hi(sBeatingHeartsDDPrim+8) # $at, 0x8016
/* AEFE70 80078CD0 856BFF74 */  lh    $t3, %lo(sHeartsDDEnvColors)($t3)
/* AEFE74 80078CD4 A438FDD8 */  sh    $t8, %lo(sBeatingHeartsDDPrim+8)($at)
/* AEFE78 80078CD8 3C188012 */  lui   $t8, %hi(sHeartsDDPrimFactors+2) # $t8, 0x8012
/* AEFE7C 80078CDC 46008482 */  mul.s $f18, $f16, $f0
/* AEFE80 80078CE0 A439FDDA */  sh    $t9, %lo(sBeatingHeartsDDPrim+0xa)($at)
/* AEFE84 80078CE4 8718FF8A */  lh    $t8, %lo(sHeartsDDPrimFactors+2)($t8)
/* AEFE88 80078CE8 3C018016 */  lui   $at, %hi(sBeatingHeartsDDEnv+6) # $at, 0x8016
/* AEFE8C 80078CEC A42BFDE6 */  sh    $t3, %lo(sBeatingHeartsDDEnv+6)($at)
/* AEFE90 80078CF0 3C0B8012 */  lui   $t3, %hi(sHeartsDDPrimFactors+4)
/* AEFE94 80078CF4 856BFF8C */  lh    $t3, %lo(sHeartsDDPrimFactors+4)($t3)
/* AEFE98 80078CF8 44983000 */  mtc1  $t8, $f6
/* AEFE9C 80078CFC 4600910D */  trunc.w.s $f4, $f18
/* AEFEA0 80078D00 448B9000 */  mtc1  $t3, $f18
/* AEFEA4 80078D04 3C0D8012 */  lui   $t5, %hi(sHeartsDDEnvColors+4) # $t5, 0x8012
/* AEFEA8 80078D08 46803220 */  cvt.s.w $f8, $f6
/* AEFEAC 80078D0C 44032000 */  mfc1  $v1, $f4
/* AEFEB0 80078D10 85ADFF78 */  lh    $t5, %lo(sHeartsDDEnvColors+4)($t5)
/* AEFEB4 80078D14 3C0C8012 */  lui   $t4, %hi(sHeartsDDEnvColors+2) # $t4, 0x8012
/* AEFEB8 80078D18 858CFF76 */  lh    $t4, %lo(sHeartsDDEnvColors+2)($t4)
/* AEFEBC 80078D1C 46809120 */  cvt.s.w $f4, $f18
/* AEFEC0 80078D20 46004282 */  mul.s $f10, $f8, $f0
/* AEFEC4 80078D24 00031C00 */  sll   $v1, $v1, 0x10
/* AEFEC8 80078D28 3C018016 */  lui   $at, %hi(sBeatingHeartsDDEnv+8) # $at, 0x8016
/* AEFECC 80078D2C 00031C03 */  sra   $v1, $v1, 0x10
/* AEFED0 80078D30 246E00FF */  addiu $t6, $v1, 0xff
/* AEFED4 80078D34 46002182 */  mul.s $f6, $f4, $f0
/* AEFED8 80078D38 A42DFDEA */  sh    $t5, %lo(sBeatingHeartsDDEnv+0xa)($at)
/* AEFEDC 80078D3C 31CF00FF */  andi  $t7, $t6, 0xff
/* AEFEE0 80078D40 A42CFDE8 */  sh    $t4, %lo(sBeatingHeartsDDEnv+8)($at)
/* AEFEE4 80078D44 A52F0000 */  sh    $t7, ($t1)
/* AEFEE8 80078D48 3C0F8012 */  lui   $t7, %hi(sHeartsDDEnvFactors) # $t7, 0x8012
/* AEFEEC 80078D4C 4600540D */  trunc.w.s $f16, $f10
/* AEFEF0 80078D50 3C0C8012 */  lui   $t4, %hi(sHeartsDDEnvFactors+4) # $t4, 0x8012
/* AEFEF4 80078D54 4600320D */  trunc.w.s $f8, $f6
/* AEFEF8 80078D58 44048000 */  mfc1  $a0, $f16
/* AEFEFC 80078D5C 44054000 */  mfc1  $a1, $f8
/* AEFF00 80078D60 00042400 */  sll   $a0, $a0, 0x10
/* AEFF04 80078D64 00042403 */  sra   $a0, $a0, 0x10
/* AEFF08 80078D68 00052C00 */  sll   $a1, $a1, 0x10
/* AEFF0C 80078D6C 00052C03 */  sra   $a1, $a1, 0x10
/* AEFF10 80078D70 249900FF */  addiu $t9, $a0, 0xff
/* AEFF14 80078D74 24AD00FF */  addiu $t5, $a1, 0xff
/* AEFF18 80078D78 332B00FF */  andi  $t3, $t9, 0xff
/* AEFF1C 80078D7C 31AE00FF */  andi  $t6, $t5, 0xff
/* AEFF20 80078D80 A52B0002 */  sh    $t3, 2($t1)
/* AEFF24 80078D84 A52E0004 */  sh    $t6, 4($t1)
/* AEFF28 80078D88 85EFFF9C */  lh    $t7, %lo(sHeartsDDEnvFactors)($t7)
/* AEFF2C 80078D8C 3C198012 */  lui   $t9, %hi(sHeartsDDEnvFactors+2)
/* AEFF30 80078D90 8739FF9E */  lh    $t9, %lo(sHeartsDDEnvFactors+2)($t9)
/* AEFF34 80078D94 448F5000 */  mtc1  $t7, $f10
/* AEFF38 80078D98 858CFFA0 */  lh    $t4, %lo(sHeartsDDEnvFactors+4)($t4)
/* AEFF3C 80078D9C 44993000 */  mtc1  $t9, $f6
/* AEFF40 80078DA0 46805420 */  cvt.s.w $f16, $f10
/* AEFF44 80078DA4 46803220 */  cvt.s.w $f8, $f6
/* AEFF48 80078DA8 46008482 */  mul.s $f18, $f16, $f0
/* AEFF4C 80078DAC 4600910D */  trunc.w.s $f4, $f18
/* AEFF50 80078DB0 448C9000 */  mtc1  $t4, $f18
/* AEFF54 80078DB4 46004282 */  mul.s $f10, $f8, $f0
/* AEFF58 80078DB8 44032000 */  mfc1  $v1, $f4
/* AEFF5C 80078DBC 00000000 */  nop   
/* AEFF60 80078DC0 00031C00 */  sll   $v1, $v1, 0x10
/* AEFF64 80078DC4 46809120 */  cvt.s.w $f4, $f18
/* AEFF68 80078DC8 00031C03 */  sra   $v1, $v1, 0x10
/* AEFF6C 80078DCC 246F00C8 */  addiu $t7, $v1, 0xc8
/* AEFF70 80078DD0 31F800FF */  andi  $t8, $t7, 0xff
/* AEFF74 80078DD4 A5580000 */  sh    $t8, ($t2)
/* AEFF78 80078DD8 4600540D */  trunc.w.s $f16, $f10
/* AEFF7C 80078DDC 46002182 */  mul.s $f6, $f4, $f0
/* AEFF80 80078DE0 44048000 */  mfc1  $a0, $f16
/* AEFF84 80078DE4 00000000 */  nop   
/* AEFF88 80078DE8 00042400 */  sll   $a0, $a0, 0x10
/* AEFF8C 80078DEC 4600320D */  trunc.w.s $f8, $f6
/* AEFF90 80078DF0 0004CC03 */  sra   $t9, $a0, 0x10
/* AEFF94 80078DF4 332B00FF */  andi  $t3, $t9, 0xff
/* AEFF98 80078DF8 A54B0002 */  sh    $t3, 2($t2)
/* AEFF9C 80078DFC 44054000 */  mfc1  $a1, $f8
/* AEFFA0 80078E00 00000000 */  nop   
/* AEFFA4 80078E04 00052C00 */  sll   $a1, $a1, 0x10
/* AEFFA8 80078E08 00056403 */  sra   $t4, $a1, 0x10
/* AEFFAC 80078E0C 318D00FF */  andi  $t5, $t4, 0xff
/* AEFFB0 80078E10 03E00008 */  jr    $ra
/* AEFFB4 80078E14 A54D0004 */   sh    $t5, 4($t2)
