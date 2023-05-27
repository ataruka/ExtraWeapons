# 読み込み時の値補正-状態異常
execute if entity @s[tag=ExWeapons.Abnormal.voidArmorLv5] run scoreboard players remove @s ExWeapons.DetailAbility.ExAttackProtectionMul 12
execute if entity @s[tag=ExWeapons.Abnormal.voidArmorLv4] run scoreboard players remove @s ExWeapons.DetailAbility.ExAttackProtectionMul 4
execute if entity @s[tag=ExWeapons.Abnormal.voidArmorLv3] run scoreboard players remove @s ExWeapons.DetailAbility.ExAttackProtectionMul 5
execute if entity @s[tag=ExWeapons.Abnormal.voidArmorLv2] run scoreboard players remove @s ExWeapons.DetailAbility.ExAttackProtectionMul 4
execute if entity @s[tag=ExWeapons.Abnormal.voidArmorLv1] run scoreboard players remove @s ExWeapons.DetailAbility.ExAttackProtectionMul 8
execute if entity @s[tag=ExWeapons.Abnormal.voidAttackLv5] run scoreboard players remove @s ExWeapons.DetailAbility.ExAttackDamageMul 15
execute if entity @s[tag=ExWeapons.Abnormal.voidAttackLv4] run scoreboard players remove @s ExWeapons.DetailAbility.ExAttackDamageMul 6
execute if entity @s[tag=ExWeapons.Abnormal.voidAttackLv3] run scoreboard players remove @s ExWeapons.DetailAbility.ExAttackDamageMul 6
execute if entity @s[tag=ExWeapons.Abnormal.voidAttackLv2] run scoreboard players remove @s ExWeapons.DetailAbility.ExAttackDamageMul 5
execute if entity @s[tag=ExWeapons.Abnormal.voidAttackLv1] run scoreboard players remove @s ExWeapons.DetailAbility.ExAttackDamageMul 6
execute if entity @s[tag=tmtm] run scoreboard players add @s ExWeapons.DetailAbility.ExAttackDamageMul 200