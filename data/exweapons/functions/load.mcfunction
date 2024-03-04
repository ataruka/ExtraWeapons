# スコアボード
scoreboard objectives add ExWeapons.attack minecraft.custom:damage_dealt
scoreboard objectives add ExWeapons.jump minecraft.custom:jump
scoreboard objectives add ExWeapons.jumpTick dummy
scoreboard objectives add ExWeapons.use.carrot_on_a_stick minecraft.used:carrot_on_a_stick
scoreboard objectives add ExWeapons.death deathCount

scoreboard objectives add ExWeapons.setting dummy
scoreboard objectives add ExWeapons.damagerng dummy
scoreboard objectives add ExWeapons.rng dummy
scoreboard objectives add ExWeapons.rnd dummy
scoreboard objectives add ExWeapons.day dummy
scoreboard objectives add ExWeapons.textTrigger trigger
scoreboard objectives add ExWeapons.login minecraft.custom:leave_game

scoreboard objectives add ExWeapons.varA dummy
scoreboard objectives add ExWeapons.open dummy
scoreboard objectives add ExWeapons.InvulnerabilityTime dummy
scoreboard objectives add ExWeapons.health_ dummy
scoreboard objectives add ExWeapons.health_max dummy
scoreboard objectives add ExWeapons.health_replace dummy
scoreboard objectives add ExWeapons.varB dummy
scoreboard objectives add ExWeapons.XFacing dummy
scoreboard objectives add ExWeapons.ZFacing dummy
scoreboard objectives add ExWeapons.PrevPosX dummy
scoreboard objectives add ExWeapons.PrevPosZ dummy
scoreboard objectives add ExWeapons.slimeMove dummy
scoreboard objectives add ExWeapons.slimeMove.kill dummy
scoreboard objectives add ExWeapons.textEntity.kill dummy
scoreboard objectives add ExWeapons.concat.kill dummy

scoreboard objectives add ExWeapons.Attacker dummy
scoreboard objectives add ExWeapons.AttackTrack dummy
## 状態異常-Abnormal (Status)
### 継続時間
scoreboard objectives add ExWeapons.Abnormal.physicsTick dummy
scoreboard objectives add ExWeapons.Abnormal.fireTick dummy
scoreboard objectives add ExWeapons.Abnormal.waterTick dummy
scoreboard objectives add ExWeapons.Abnormal.thunderTick dummy
scoreboard objectives add ExWeapons.Abnormal.grassTick dummy
scoreboard objectives add ExWeapons.Abnormal.iceTick dummy
scoreboard objectives add ExWeapons.Abnormal.grassThunderTick dummy
scoreboard objectives add ExWeapons.Abnormal.voidTick dummy

scoreboard objectives add ExWeapons.Abnormal.ice.frozenTick dummy
scoreboard objectives add ExWeapons.Abnormal.voidTriggerTick custom:damage_taken
### 効果発動待機時間
scoreboard objectives add ExWeapons.Abnormal.physicsDamageTick dummy
scoreboard objectives add ExWeapons.Abnormal.fireDamageTick dummy
scoreboard objectives add ExWeapons.Abnormal.waterDamageTick dummy
scoreboard objectives add ExWeapons.Abnormal.thunderDamageTick dummy
scoreboard objectives add ExWeapons.Abnormal.voidArmorTick dummy
scoreboard objectives add ExWeapons.Abnormal.voidAttackTick dummy
scoreboard objectives add ExWeapons.Abnormal.voidMoveTick dummy
scoreboard objectives add ExWeapons.Abnormal.voidAttackSpeedTick dummy
scoreboard objectives add ExWeapons.Abnormal.voidMaxHealthTick dummy
scoreboard objectives add ExWeapons.Abnormal.voidKBResistTick dummy
## Ability
### 記録
scoreboard objectives add ExWeapons.DetailAbility.Health_Last dummy

scoreboard objectives add ExWeapons.DetailAbility.AttackDamage_Last dummy
scoreboard objectives add ExWeapons.DetailAbility.ExAttackDamage_Last dummy
scoreboard objectives add ExWeapons.DetailAbility.KnockbackResistance_Last dummy
scoreboard objectives add ExWeapons.DetailAbility.Armor_Last dummy
scoreboard objectives add ExWeapons.DetailAbility.ArmorToughness_Last dummy
scoreboard objectives add ExWeapons.DetailAbility.Luck_Last dummy
## 基本Ability
### 数値(1倍の値)
scoreboard objectives add ExWeapons.Ability.Strength dummy
scoreboard objectives add ExWeapons.Ability.Intelligence dummy
scoreboard objectives add ExWeapons.Ability.Agility dummy
scoreboard objectives add ExWeapons.Ability.Defense dummy
scoreboard objectives add ExWeapons.Ability.Dexterity dummy
### 倍率(1+値%x1000[1=0.1%])
scoreboard objectives add ExWeapons.Ability.StrengthMul dummy
scoreboard objectives add ExWeapons.Ability.IntelligenceMul dummy
scoreboard objectives add ExWeapons.Ability.AgilityMul dummy
scoreboard objectives add ExWeapons.Ability.DefenseMul dummy
scoreboard objectives add ExWeapons.Ability.DexterityMul dummy
## 詳細Ability
### 数値(100倍の値=[1=0.01])
scoreboard objectives add ExWeapons.DetailAbility.Health dummy
scoreboard objectives add ExWeapons.DetailAbility.AttackDamage dummy
scoreboard objectives add ExWeapons.DetailAbility.ExAttackDamage dummy
scoreboard objectives add ExWeapons.DetailAbility.KnockbackResistance dummy
scoreboard objectives add ExWeapons.DetailAbility.Armor dummy
scoreboard objectives add ExWeapons.DetailAbility.ArmorToughness dummy
scoreboard objectives add ExWeapons.DetailAbility.Luck dummy
### ※ScoreToDamageモードでのみ稼働...ではなくなった
scoreboard objectives add ExWeapons.DetailAbility.ExAttackProtection dummy
### 倍率(1+値%x1000=[1=0.1%]) 
scoreboard objectives add ExWeapons.DetailAbility.HealthMul dummy
scoreboard objectives add ExWeapons.DetailAbility.AttackDamageMul dummy
scoreboard objectives add ExWeapons.DetailAbility.ArmorMul dummy
scoreboard objectives add ExWeapons.DetailAbility.ArmorToughnessMul dummy
scoreboard objectives add ExWeapons.DetailAbility.KnockbackResistanceMul dummy
scoreboard objectives add ExWeapons.DetailAbility.MovementSpeed dummy
scoreboard objectives add ExWeapons.DetailAbility.AttackSpeed dummy
### 倍率(1+値%x100=[1=1%])
scoreboard objectives add ExWeapons.DetailAbility.ExAttackDamageMul dummy
scoreboard objectives add ExWeapons.DetailAbility.ExAttackDamageMul_mainhand dummy
scoreboard objectives add ExWeapons.DetailAbility.ExAttackDamageMul_offhand dummy
scoreboard objectives add ExWeapons.DetailAbility.ExAttackDamageMul_armor1 dummy
scoreboard objectives add ExWeapons.DetailAbility.ExAttackDamageMul_armor2 dummy
scoreboard objectives add ExWeapons.DetailAbility.ExAttackDamageMul_armor3 dummy
scoreboard objectives add ExWeapons.DetailAbility.ExAttackDamageMul_armor4 dummy
scoreboard objectives add ExWeapons.DetailAbility.ExAttackDamageMul_voidAttack dummy
scoreboard objectives add ExWeapons.DetailAbility.ExAttackDurationMul dummy
### ※ScoreToDamageモードでのみ稼働...ではなくなった
scoreboard objectives add ExWeapons.DetailAbility.ExAttackProtectionMul dummy
scoreboard objectives add ExWeapons.DetailAbility.ExAttackProtectionMul_mainhand dummy
scoreboard objectives add ExWeapons.DetailAbility.ExAttackProtectionMul_offhand dummy
scoreboard objectives add ExWeapons.DetailAbility.ExAttackProtectionMul_armor1 dummy
scoreboard objectives add ExWeapons.DetailAbility.ExAttackProtectionMul_armor2 dummy
scoreboard objectives add ExWeapons.DetailAbility.ExAttackProtectionMul_armor3 dummy
scoreboard objectives add ExWeapons.DetailAbility.ExAttackProtectionMul_armor4 dummy
scoreboard objectives add ExWeapons.DetailAbility.ExAttackProtectionMul_grassThunder dummy
scoreboard objectives add ExWeapons.DetailAbility.ExAttackProtectionMul_voidArmor dummy
## 属性Ability(1+値%x100=[1=1%])
scoreboard objectives add ExWeapons.AttributeAbility.MuDamage dummy
scoreboard objectives add ExWeapons.AttributeAbility.FireDamage dummy
scoreboard objectives add ExWeapons.AttributeAbility.WaterDamage dummy
scoreboard objectives add ExWeapons.AttributeAbility.ThunderDamage dummy
scoreboard objectives add ExWeapons.AttributeAbility.GrassDamage dummy
scoreboard objectives add ExWeapons.AttributeAbility.WindDamage dummy
scoreboard objectives add ExWeapons.AttributeAbility.FrostDamage dummy
scoreboard objectives add ExWeapons.AttributeAbility.VoidDamage dummy
### ※ScoreToDamageモードでのみ稼働...ではなくなった
scoreboard objectives add ExWeapons.AttributeAbility.MuProtection dummy
scoreboard objectives add ExWeapons.AttributeAbility.FireProtection dummy
scoreboard objectives add ExWeapons.AttributeAbility.WaterProtection dummy
scoreboard objectives add ExWeapons.AttributeAbility.ThunderProtection dummy
scoreboard objectives add ExWeapons.AttributeAbility.GrassProtection dummy
scoreboard objectives add ExWeapons.AttributeAbility.WindProtection dummy
scoreboard objectives add ExWeapons.AttributeAbility.FrostProtection dummy
scoreboard objectives add ExWeapons.AttributeAbility.VoidProtection dummy
## 刀-katana
### 斬撃-zangeki
scoreboard objectives add ExWeapons.katana.ZangekiTick dummy
scoreboard objectives add ExWeapons.katana.ZangekiLimitOut dummy
scoreboard objectives add ExWeapons.katana.ZangekiCT dummy
scoreboard objectives add ExWeapons.katana.ZangekiReturn dummy
scoreboard objectives add ExWeapons.katana.Zangeki3Time dummy
### Use
scoreboard objectives add ExWeapons.katana.useReturn dummy
#### Mode0
#### Mode1
scoreboard objectives add ExWeapons.katana.useComboReturn dummy
scoreboard objectives add ExWeapons.katana.useCombo6 dummy
scoreboard objectives add ExWeapons.katana.useCombo6sneak dummy
#### ChargeBreak
##### 1-雷者の一太刀
scoreboard objectives add ExWeapons.katana.useChargeBreak1 dummy
scoreboard objectives add ExWeapons.katana.useChargeBreak1.tick dummy
##### 2-乱れ蝶
scoreboard objectives add ExWeapons.katana.useChargeBreak2 dummy
scoreboard objectives add ExWeapons.katana.useChargeBreak2.tick dummy
scoreboard objectives add ExWeapons.katana.useChargeBreak2.selectorid dummy
scoreboard objectives add ExWeapons.katana.useChargeBreak2.rideid dummy
scoreboard objectives add ExWeapons.katana.useChargeBreak2.tpid dummy
### ModeChange
scoreboard objectives add ExWeapons.katana.ModeChange0 dummy
scoreboard objectives add ExWeapons.katana.ModeChange1 dummy
## 孔雀扇-kuzyakusen
### 旋風-senpu
scoreboard objectives add ExWeapons.kuzyakusen.SenpuTick dummy 
scoreboard objectives add ExWeapons.kuzyakusen.SenpuDamageTick dummy
scoreboard objectives add ExWeapons.kuzyakusen.SenpuCT dummy 
## 一時しのぎのポーション-makeshift_potion
scoreboard objectives add ExWeapons.makeshift_potion.DurationTick dummy 

# 設定(ダメージは10倍の値で入力し、倍率は100倍の値で入力すること)
setblock 13501 -63 13501 bedrock
fill 13401 -62 13400 13401 -64 13400 minecraft:bedrock
setblock 13201 -63 13201 bedrock
setblock 13201 -64 13201 shulker_box{Items:[{Slot:0,id:"minecraft:stick"}]}
forceload add 13201 13201
data modify storage util: settings.at set value {Pos:[13501d,-64d,13501d],Rotation:[0f,0f],Dimension:"minecraft:overworld"}
function #util:advanced/on
scoreboard players set #-1 ExWeapons.rng -1
scoreboard players set #1 ExWeapons.rng 1
scoreboard players set #2 ExWeapons.rng 2
scoreboard players set #3 ExWeapons.rng 3
scoreboard players set #4 ExWeapons.rng 4
scoreboard players set #5 ExWeapons.rng 5
scoreboard players set #6 ExWeapons.rng 6
scoreboard players set #7 ExWeapons.rng 7
scoreboard players set #8 ExWeapons.rng 8
scoreboard players set #9 ExWeapons.rng 9
scoreboard players set #10 ExWeapons.rng 10
scoreboard players set #20 ExWeapons.rng 20
scoreboard players set #30 ExWeapons.rng 30
scoreboard players set #50 ExWeapons.rng 50
scoreboard players set #100 ExWeapons.rng 100
scoreboard players set #1000 ExWeapons.rng 1000

## Weapons
### 刀-katana
#### 斬撃ダメージ
execute unless score $katana_ZangekiDuration ExWeapons.setting matches -2147483648..2147483647 run scoreboard players set $katana_ZangekiDuration ExWeapons.setting 20
execute unless score $katana_Zangeki_LimitOutDuration ExWeapons.setting matches -2147483648..2147483647 run scoreboard players set $katana_Zangeki_LimitOutDuration ExWeapons.setting 90

execute unless score $katana_ZangekiDamage ExWeapons.setting matches -2147483648..2147483647 run scoreboard players set $katana_ZangekiDamage ExWeapons.setting 1200
execute unless score $katana_ZangekiReturn ExWeapons.setting matches -2147483648..2147483647 run scoreboard players set $katana_ZangekiReturn ExWeapons.setting 100
execute unless score $katana_ZangekiMultiplier ExWeapons.setting matches -2147483648..2147483647 run scoreboard players set $katana_ZangekiMultiplier ExWeapons.setting 100
execute unless score $katana_ZangekiMultiplier2 ExWeapons.setting matches -2147483648..2147483647 run scoreboard players set $katana_ZangekiMultiplier2 ExWeapons.setting 120
execute unless score $katana_ZangekiMultiplier3 ExWeapons.setting matches -2147483648..2147483647 run scoreboard players set $katana_ZangekiMultiplier3 ExWeapons.setting 150
execute unless score $katana_ZangekiMultiplier4 ExWeapons.setting matches -2147483648..2147483647 run scoreboard players set $katana_ZangekiMultiplier4 ExWeapons.setting 310
execute unless score $katana_ZangekiMultiplierLimitOut ExWeapons.setting matches -2147483648..2147483647 run scoreboard players set $katana_ZangekiMultiplierLimitOut ExWeapons.setting 170
execute unless score $katana_useComboReturn ExWeapons.setting matches -2147483648..2147483647 run scoreboard players set $katana_useComboReturn ExWeapons.setting 40
execute unless score $katana_useMultiplier_Mode1_1 ExWeapons.setting matches -2147483648..2147483647 run scoreboard players set $katana_useMultiplier_Mode1_1 ExWeapons.setting 33
execute unless score $katana_useMultiplier_Mode1_2 ExWeapons.setting matches -2147483648..2147483647 run scoreboard players set $katana_useMultiplier_Mode1_2 ExWeapons.setting 37
execute unless score $katana_useMultiplier_Mode1_3 ExWeapons.setting matches -2147483648..2147483647 run scoreboard players set $katana_useMultiplier_Mode1_3 ExWeapons.setting 41
execute unless score $katana_useMultiplier_Mode1_4 ExWeapons.setting matches -2147483648..2147483647 run scoreboard players set $katana_useMultiplier_Mode1_4 ExWeapons.setting 46
execute unless score $katana_useMultiplier_Mode1_5 ExWeapons.setting matches -2147483648..2147483647 run scoreboard players set $katana_useMultiplier_Mode1_5 ExWeapons.setting 50

execute unless score $katana_useMultiplier_Mode1_6 ExWeapons.setting matches -2147483648..2147483647 run scoreboard players set $katana_useMultiplier_Mode1_6 ExWeapons.setting 20
execute unless score $katana_useMultiplier_Mode1_6sneak ExWeapons.setting matches -2147483648..2147483647 run scoreboard players set $katana_useMultiplier_Mode1_6sneak ExWeapons.setting 100
execute unless score $katana_useMultiplier_Mode1_6sneak_50 ExWeapons.setting matches -2147483648..2147483647 run scoreboard players set $katana_useMultiplier_Mode1_6sneak_50 ExWeapons.setting 200

execute unless score $katana_useMultiplier_Mode1_7 ExWeapons.setting matches -2147483648..2147483647 run scoreboard players set $katana_useMultiplier_Mode1_7 ExWeapons.setting 50

execute unless score $katana_useMultiplier_Mode0_ChargeBreak ExWeapons.setting matches -2147483648..2147483647 run scoreboard players set $katana_useMultiplier_Mode0_ChargeBreak ExWeapons.setting 500
execute unless score $katana_useMultiplier_Mode0_ChargeBreak_addDamage ExWeapons.setting matches -2147483648..2147483647 run scoreboard players set $katana_useMultiplier_Mode0_ChargeBreak_addDamage ExWeapons.setting 10
### 孔雀扇-kuzyakusen
#### 旋風-senpu
execute unless score $kuzyakusen_SenpuDuration ExWeapons.setting matches -2147483648..2147483647 run scoreboard players set $kuzyakusen_SenpuDuration ExWeapons.setting 80

execute unless score $kuzyakusen_SenpuCoolTime ExWeapons.setting matches -2147483648..2147483647 run scoreboard players set $kuzyakusen_SenpuCoolTime ExWeapons.setting 70
execute unless score $kuzyakusen_SenpuDamage ExWeapons.setting matches -2147483648..2147483647 run scoreboard players set $kuzyakusen_SenpuDamage ExWeapons.setting 100
### 一時しのぎのポーション-makeshift_potion
execute unless score $makeshiftpotion_Duration ExWeapons.setting matches -2147483648..2147483647 run scoreboard players set $makeshiftpotion_Duration ExWeapons.setting 300
## Abnormal
### 拡散-Spread
# ここは固定値に変わりました
# execute unless score $abnormal_SpreadLv1Damage ExWeapons.setting matches -2147483648..2147483647 run scoreboard players set $abnormal_SpreadLv1Damage ExWeapons.setting 30
# execute unless score $abnormal_SpreadLv2Damage ExWeapons.setting matches -2147483648..2147483647 run scoreboard players set $abnormal_SpreadLv2Damage ExWeapons.setting 80
# execute unless score $abnormal_SpreadLv3Damage ExWeapons.setting matches -2147483648..2147483647 run scoreboard players set $abnormal_SpreadLv3Damage ExWeapons.setting 120

## FF(1 true |0 false)
execute unless score $FriendlyFire ExWeapons.setting matches -2147483648..2147483647 run scoreboard players set $FriendlyFire ExWeapons.setting 1
## Ability(1 true|0 false)
execute unless score $Ability ExWeapons.setting matches -2147483648..2147483647 run scoreboard players set $Ability ExWeapons.setting 1
## ScoreToDamageMode(1 true|0 false)※実験機能
execute unless score $ScoreToDamageMode ExWeapons.setting matches -2147483648..2147483647 run scoreboard players set $ScoreToDamageMode ExWeapons.setting 1
## InvulnerabilityTime(~-1 false|0~ true&tick)※実験機能
execute unless score $InvulnerabilityTime ExWeapons.setting matches -2147483648..2147483647 run scoreboard players set $InvulnerabilityTime ExWeapons.setting 10
## アニメーションの有効化(個人設定)(1 true|0 false)
scoreboard objectives add ExWeapons.playerSetting_enable-animation dummy
## アニメーションの有効化(個人設定)(0 100%|1 70%|2 40%|3 20%)
scoreboard objectives add ExWeapons.playerSetting_animation-alpha dummy

gamerule commandBlockOutput false

# 再読み込みメッセージ
tellraw @a [{"text": "[ExtraWeapons v0.2.2.4] データパックの読み込みが完了しました。"}]
tellraw @a [{"text": "[ExtraWeapons v0.2.2.4] 武器などの設定をしたいときは"},{"text": "ここ","underlined": true,"clickEvent": {"action": "suggest_command","value": "/function exweapons:setting/text"}}]