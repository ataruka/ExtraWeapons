# 読み込み時の値補正-状態異常
execute if entity @s[tag=ExWeapons.Abnormal.voidArmorLv5] run scoreboard players remove @s ExWeapons.DetailAbility.ExAttackProtectionMul_voidArmor 120
execute if entity @s[tag=ExWeapons.Abnormal.voidArmorLv5] run tag @s add status.update
execute if entity @s[tag=ExWeapons.Abnormal.voidArmorLv4] run scoreboard players remove @s ExWeapons.DetailAbility.ExAttackProtectionMul_voidArmor 40
execute if entity @s[tag=ExWeapons.Abnormal.voidArmorLv4] run tag @s add status.update
execute if entity @s[tag=ExWeapons.Abnormal.voidArmorLv3] run scoreboard players remove @s ExWeapons.DetailAbility.ExAttackProtectionMul_voidArmor 50
execute if entity @s[tag=ExWeapons.Abnormal.voidArmorLv3] run tag @s add status.update
execute if entity @s[tag=ExWeapons.Abnormal.voidArmorLv2] run scoreboard players remove @s ExWeapons.DetailAbility.ExAttackProtectionMul_voidArmor 40
execute if entity @s[tag=ExWeapons.Abnormal.voidArmorLv2] run tag @s add status.update
execute if entity @s[tag=ExWeapons.Abnormal.voidArmorLv1] run scoreboard players remove @s ExWeapons.DetailAbility.ExAttackProtectionMul_voidArmor 80
execute if entity @s[tag=ExWeapons.Abnormal.voidArmorLv1] run tag @s add status.update
execute if entity @s[tag=ExWeapons.Abnormal.voidAttackLv5] run scoreboard players remove @s ExWeapons.DetailAbility.ExAttackDamageMul_voidAttack 150
execute if entity @s[tag=ExWeapons.Abnormal.voidAttackLv5] run tag @s add status.update
execute if entity @s[tag=ExWeapons.Abnormal.voidAttackLv4] run scoreboard players remove @s ExWeapons.DetailAbility.ExAttackDamageMul_voidAttack 60
execute if entity @s[tag=ExWeapons.Abnormal.voidAttackLv4] run tag @s add status.update
execute if entity @s[tag=ExWeapons.Abnormal.voidAttackLv3] run scoreboard players remove @s ExWeapons.DetailAbility.ExAttackDamageMul_voidAttack 60
execute if entity @s[tag=ExWeapons.Abnormal.voidAttackLv3] run tag @s add status.update
execute if entity @s[tag=ExWeapons.Abnormal.voidAttackLv2] run scoreboard players remove @s ExWeapons.DetailAbility.ExAttackDamageMul_voidAttack 50
execute if entity @s[tag=ExWeapons.Abnormal.voidAttackLv2] run tag @s add status.update
execute if entity @s[tag=ExWeapons.Abnormal.voidAttackLv1] run scoreboard players remove @s ExWeapons.DetailAbility.ExAttackDamageMul_voidAttack 60
execute if entity @s[tag=ExWeapons.Abnormal.voidAttackLv1] run tag @s add status.update
execute if entity @s[tag=ExWeapons.Abnormal.grassThunderLv3] run scoreboard players remove @s ExWeapons.DetailAbility.ExAttackProtectionMul_grassThunder 150
execute if entity @s[tag=ExWeapons.Abnormal.grassThunderLv3] run tag @s add status.update
execute if entity @s[tag=ExWeapons.Abnormal.grassThunderLv2] run scoreboard players remove @s ExWeapons.DetailAbility.ExAttackProtectionMul_grassThunder 100
execute if entity @s[tag=ExWeapons.Abnormal.grassThunderLv2] run tag @s add status.update
execute if entity @s[tag=ExWeapons.Abnormal.grassThunderLv1] run scoreboard players remove @s ExWeapons.DetailAbility.ExAttackProtectionMul_grassThunder 200
execute if entity @s[tag=ExWeapons.Abnormal.grassThunderLv1] run tag @s add status.update
execute if score @s ExWeapons.katana.useChargeBreak2.tick matches 0.. unless score @s ExWeapons.katana.useChargeBreak2 matches 0.. run scoreboard players remove @s ExWeapons.DetailAbility.ExAttackDamage 500
execute if score @s ExWeapons.katana.useChargeBreak2.tick matches 0.. unless score @s ExWeapons.katana.useChargeBreak2 matches 0.. run scoreboard players remove @s ExWeapons.DetailAbility.AttackDamage 500
execute if score @s ExWeapons.katana.useChargeBreak2.tick matches 0.. unless score @s ExWeapons.katana.useChargeBreak2 matches 0.. run scoreboard players remove @s ExWeapons.DetailAbility.MovementSpeed 150
execute if score @s ExWeapons.katana.useChargeBreak2.tick matches 0.. unless score @s ExWeapons.katana.useChargeBreak2 matches 0.. run tag @s add status.update