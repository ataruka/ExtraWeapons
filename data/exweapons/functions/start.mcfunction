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
## katana
### 斬撃tick
scoreboard objectives add ExWeapons.katana.zangekitick dummy 

# 設定(ダメージは10倍の値で入力すること)
scoreboard players set $DisableBamboo BCollision.core 1
scoreboard players set $DisableDripstone BCollision.core 1

## katana
### 斬撃ダメージ
execute unless score $katana_ZangekiDamage ExWeapons.setting matches -2147483648..2147483647 run scoreboard players set $katana_ZangekiDamage ExWeapons.setting 120

## FF(1 true |0 false)
execute unless score $FriendlyFire ExWeapons.setting matches -2147483648..2147483647 run scoreboard players set $FriendlyFire ExWeapons.setting 1

tellraw @a [{"text": "[ExtraWeapons] データパックの読み込みが完了しました。"}]
tellraw @a [{"text": "[ExtraWeapons] 武器などの設定をしたいときは"},{"text": "ここ","underlined": true,"clickEvent": {"action": "suggest_command","value": "/function exweapons:setting/text"}}]