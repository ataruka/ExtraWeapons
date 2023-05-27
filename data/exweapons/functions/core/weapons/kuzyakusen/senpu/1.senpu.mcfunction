# 旋風処理
 execute if entity @s[x_rotation=70..90] run effect give @s minecraft:levitation 1 15 true
 execute if entity @s[x_rotation=70..90] run effect give @s minecraft:slow_falling 2 15 true
 execute if entity @s[x_rotation=70..90] run summon area_effect_cloud ~ ~0.5 ~ {Radius:0f,Duration:6,DurationOnUse:0f,Age:4,Effects:[{Id:11,Amplifier:4b,Duration:30,ShowParticles:1b}]}
 
## 打ち上げ
 execute if entity @s[scores={ExWeapons.ZFacing=-1}] at @s run summon area_effect_cloud ~ ~0.5 ~ {Radius:0.0f,Duration:6,DurationOnUse:0,Age:4,Effects:[{Id:25b,Amplifier:3b,Duration:10,ShowParticles:0b},{Id:28b,Amplifier:0b,Duration:20,ShowParticles:0b}]}
## 数を指定して当たり判定用のスライムをぶつける
 execute if entity @s[scores={ExWeapons.ZFacing=-1}] run scoreboard players set @s ExWeapons.slimeMove 35
 execute if entity @s[scores={ExWeapons.ZFacing=-1}] run execute at @s rotated ~ 0 positioned ~ ~ ~ run function exweapons:core/other/slime_move

 execute anchored eyes rotated ~ ~ run summon armor_stand ^ ^ ^ {Rotation:[0F,0F],Tags:["exweapons.kuzyakusen.senpu","exweapons.armor_set"],Marker:1b,Invisible:1b,DisabledSlots:4144959,Silent:1b}
 execute anchored eyes run tp @e[limit=1,sort=nearest,tag=exweapons.armor_set,type=armor_stand] ^ ^ ^2 ~ ~
 scoreboard players operation @e[limit=1,sort=nearest,tag=exweapons.armor_set,type=armor_stand] ExWeapons.Attacker = @s OhMyDatID
 scoreboard players operation @e[limit=1,sort=nearest,tag=exweapons.armor_set,type=armor_stand] ExWeapons.kuzyakusen.SenpuTick = $kuzyakusen_SenpuDuration ExWeapons.setting
 execute as @e[limit=1,sort=nearest,tag=exweapons.armor_set,type=armor_stand] at @s run function exweapons:core/weapons/kuzyakusen/senpu/2.damage
 execute as @e[limit=1,sort=nearest,tag=exweapons.armor_set,type=armor_stand] at @s run function exweapons:core/weapons/kuzyakusen/senpu/3.tp
 tag @e[limit=1,sort=nearest,tag=exweapons.armor_set,type=armor_stand] remove exweapons.armor_set
 tag @s add exweapons.kuzyakusen.senpuCT
 scoreboard players operation @s ExWeapons.kuzyakusen.SenpuCT = $kuzyakusen_SenpuCoolTime ExWeapons.setting
 playsound minecraft:entity.player.attack.weak master @a ~ ~ ~ 2 2
 playsound minecraft:entity.player.attack.weak master @a ~ ~ ~ 2 2
 playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 2 2
 playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 2 2
 scoreboard players reset @s ExWeapons.use.carrot_on_a_stick