# リセット(スコア)
## 状態異常-Abnormal(Status)
### 継続時間
execute if entity @s[scores={ExWeapons.Abnormal.fireTick=-2147483648..2147483647}] run scoreboard players set @s ExWeapons.Abnormal.fireTick 0
execute if entity @s[scores={ExWeapons.Abnormal.waterTick=-2147483648..2147483647}] run scoreboard players set @s ExWeapons.Abnormal.waterTick 0
execute if entity @s[scores={ExWeapons.Abnormal.thunderTick=-2147483648..2147483647}] run scoreboard players set @s ExWeapons.Abnormal.thunderTick 0
execute if entity @s[scores={ExWeapons.Abnormal.grassTick=-2147483648..2147483647}] run scoreboard players set @s ExWeapons.Abnormal.grassTick 0
execute if entity @s[scores={ExWeapons.Abnormal.iceTick=-2147483648..2147483647}] run scoreboard players set @s ExWeapons.Abnormal.iceTick 0
execute if entity @s[scores={ExWeapons.Abnormal.grassThunderTick=-2147483648..2147483647}] run scoreboard players set @s ExWeapons.Abnormal.grassThunderTick 0
execute if entity @s[scores={ExWeapons.Abnormal.voidTick=-2147483648..2147483647}] run scoreboard players set @s ExWeapons.Abnormal.voidTick 0

scoreboard players set @s ExWeapons.Abnormal.ice.frozenTick 0
scoreboard players reset @s ExWeapons.Abnormal.voidTriggerTick
### 効果発動待機時間
scoreboard players reset @s ExWeapons.Abnormal.fireDamageTick
scoreboard players reset @s ExWeapons.Abnormal.waterDamageTick
scoreboard players reset @s ExWeapons.Abnormal.thunderDamageTick
scoreboard players reset @s ExWeapons.Abnormal.voidArmorTick
scoreboard players reset @s ExWeapons.Abnormal.voidAttackTick
scoreboard players reset @s ExWeapons.Abnormal.voidMoveTick
scoreboard players reset @s ExWeapons.Abnormal.voidAttackSpeedTick
scoreboard players reset @s ExWeapons.Abnormal.voidMaxHealthTick
scoreboard players reset @s ExWeapons.Abnormal.voidKBResistTick
## 刀-katana
### 斬撃-zangeki
scoreboard players reset @s ExWeapons.katana.ZangekiTick
scoreboard players reset @s ExWeapons.katana.ZangekiLimitOut
scoreboard players reset @s ExWeapons.katana.ZangekiCT
scoreboard players reset @s ExWeapons.katana.ZangekiReturn
scoreboard players reset @s ExWeapons.katana.Zangeki3Time
## 孔雀扇-kuzyakusen
### 旋風-senpu
scoreboard players reset @s ExWeapons.kuzyakusen.SenpuTick
scoreboard players reset @s ExWeapons.kuzyakusen.SenpuDamageTick
scoreboard players reset @s ExWeapons.kuzyakusen.SenpuCT
# リセット(tag)
## 状態異常-Abnormal(Status)
tag @s remove ExWeapons.Abnormal.fireLv1
tag @s remove ExWeapons.Abnormal.fireLv2
tag @s remove ExWeapons.Abnormal.fireLv3
tag @s remove ExWeapons.Abnormal.grassLv1
tag @s remove ExWeapons.Abnormal.grassLv2
tag @s remove ExWeapons.Abnormal.grassLv3
tag @s remove ExWeapons.Abnormal.iceLv1
tag @s remove ExWeapons.Abnormal.iceLv2
tag @s remove ExWeapons.Abnormal.iceLv3
tag @s remove ExWeapons.Abnormal.ice.frozen
tag @s remove ExWeapons.Abnormal.thunderLv1
tag @s remove ExWeapons.Abnormal.thunderLv2
tag @s remove ExWeapons.Abnormal.thunderLv3
tag @s remove ExWeapons.Abnormal.waterLv1
tag @s remove ExWeapons.Abnormal.waterLv2
tag @s remove ExWeapons.Abnormal.waterLv3
tag @s remove ExWeapons.Abnormal.windLv1
tag @s remove ExWeapons.Abnormal.windLv2
tag @s remove ExWeapons.Abnormal.windLv3

tag @s remove ExWeapons.Abnormal.voidLv1
tag @s remove ExWeapons.Abnormal.voidLv2
tag @s remove ExWeapons.Abnormal.voidLv3

tag @s remove ExWeapons.Abnormal.voidArmorLv1
tag @s remove ExWeapons.Abnormal.voidArmorLv2
tag @s remove ExWeapons.Abnormal.voidArmorLv3
tag @s remove ExWeapons.Abnormal.voidArmorLv4
tag @s remove ExWeapons.Abnormal.voidArmorLv5
tag @s remove ExWeapons.Abnormal.voidAttackSpeedLv1
tag @s remove ExWeapons.Abnormal.voidAttackSpeedLv2
tag @s remove ExWeapons.Abnormal.voidAttackSpeedLv3
tag @s remove ExWeapons.Abnormal.voidAttackSpeedLv4
tag @s remove ExWeapons.Abnormal.voidAttackSpeedLv5
tag @s remove ExWeapons.Abnormal.voidAttackLv1
tag @s remove ExWeapons.Abnormal.voidAttackLv2
tag @s remove ExWeapons.Abnormal.voidAttackLv3
tag @s remove ExWeapons.Abnormal.voidAttackLv4
tag @s remove ExWeapons.Abnormal.voidAttackLv5
tag @s remove ExWeapons.Abnormal.voidKBResistanceLv1
tag @s remove ExWeapons.Abnormal.voidKBResistanceLv2
tag @s remove ExWeapons.Abnormal.voidKBResistanceLv3
tag @s remove ExWeapons.Abnormal.voidKBResistanceLv4
tag @s remove ExWeapons.Abnormal.voidKBResistanceLv5
tag @s remove ExWeapons.Abnormal.voidMovementLv1
tag @s remove ExWeapons.Abnormal.voidMovementLv2
tag @s remove ExWeapons.Abnormal.voidMovementLv3
tag @s remove ExWeapons.Abnormal.voidMovementLv4
tag @s remove ExWeapons.Abnormal.voidMovementLv5
tag @s remove ExWeapons.Abnormal.voidMaxHealthLv1
tag @s remove ExWeapons.Abnormal.voidMaxHealthLv2
tag @s remove ExWeapons.Abnormal.voidMaxHealthLv3
tag @s remove ExWeapons.Abnormal.voidMaxHealthLv4
tag @s remove ExWeapons.Abnormal.voidMaxHealthLv5
## katana
tag @s remove exweapons.katana.zangeki5
## kuzyakusen
tag @s remove exweapons.kuzyakusen.senpuCT
## other
tag @s remove tmp.check
tag @s remove tmp.noattack
tag @s remove tmp.damage
tag @s remove tmp.target
scoreboard players reset @s ExWeapons.death