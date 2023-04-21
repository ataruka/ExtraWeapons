# スコアボード
scoreboard objectives add ExWeapons.attack minecraft.custom:damage_dealt

scoreboard objectives add ExWeapons.setting dummy
scoreboard objectives add ExWeapons.rng dummy

scoreboard objectives add ExWeapons.PlayerUUID0 dummy
scoreboard objectives add ExWeapons.PlayerUUID1 dummy
scoreboard objectives add ExWeapons.PlayerUUID2 dummy
scoreboard objectives add ExWeapons.PlayerUUID3 dummy

scoreboard objectives add ExWeapons.OwnerUUID0 dummy
scoreboard objectives add ExWeapons.OwnerUUID1 dummy
scoreboard objectives add ExWeapons.OwnerUUID2 dummy
scoreboard objectives add ExWeapons.OwnerUUID3 dummy
## Ability
## 基本Ability
scoreboard objectives add ExWeapons.Ability.Strength dummy
scoreboard objectives add ExWeapons.Ability.Intelligence dummy
scoreboard objectives add ExWeapons.Ability.Agility dummy
scoreboard objectives add ExWeapons.Ability.Defense dummy
scoreboard objectives add ExWeapons.Ability.Dexterity dummy
## 詳細Ability
scoreboard objectives add ExWeapons.DetailAbility.Health dummy
scoreboard objectives add ExWeapons.DetailAbility.MovementSpeed dummy
scoreboard objectives add ExWeapons.DetailAbility.AttackDamage dummy
scoreboard objectives add ExWeapons.DetailAbility.AttackSpeed dummy
scoreboard objectives add ExWeapons.DetailAbility.ExAttackDamage dummy
scoreboard objectives add ExWeapons.DetailAbility.ExAttackRange dummy
scoreboard objectives add ExWeapons.DetailAbility.Armor dummy
scoreboard objectives add ExWeapons.DetailAbility.ArmorToughness dummy
scoreboard objectives add ExWeapons.DetailAbility.KnockbackResistance dummy
scoreboard objectives add ExWeapons.DetailAbility.AutoRegeneration dummy
scoreboard objectives add ExWeapons.DetailAbility.Luck dummy
## 属性Ability
scoreboard objectives add ExWeapons.AttributeAbility.FireDamage dummy
scoreboard objectives add ExWeapons.AttributeAbility.WaterDamage dummy
scoreboard objectives add ExWeapons.AttributeAbility.GrassDamage dummy
scoreboard objectives add ExWeapons.AttributeAbility.ThunderDamage dummy
scoreboard objectives add ExWeapons.AttributeAbility.WindDamage dummy
scoreboard objectives add ExWeapons.AttributeAbility.MuDamage dummy
## katana
### 斬撃tick
scoreboard objectives add ExWeapons.katana.ZangekiTick dummy 
scoreboard objectives add ExWeapons.katana.ZangekiCT dummy 

# 設定(ダメージは10倍の値で入力すること)
scoreboard players set $DisableBamboo BCollision.core 1
scoreboard players set $DisableDripstone BCollision.core 1
scoreboard players set #10 ExWeapons.rng 10
scoreboard players set #100 ExWeapons.rng 100

## katana
### 斬撃ダメージ
execute unless score $katana_ZangekiDamage ExWeapons.setting matches -2147483648..2147483647 run scoreboard players set $katana_ZangekiDamage ExWeapons.setting 120

## FF(1 true |0 false)
execute unless score $FriendlyFire ExWeapons.setting matches -2147483648..2147483647 run scoreboard players set $FriendlyFire ExWeapons.setting 1
## Ability(1 true|0 false)
execute unless score $Ability ExWeapons.setting matches -2147483648..2147483647 run scoreboard players set $Ability ExWeapons.setting 1

tellraw @a [{"text": "[ExtraWeapons] データパックの読み込みが完了しました。"}]
tellraw @a [{"text": "[ExtraWeapons] 武器などの設定をしたいときは"},{"text": "ここ","underlined": true,"clickEvent": {"action": "suggest_command","value": "/function exweapons:setting/text"}}]