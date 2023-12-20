#スラッシュ
## 攻撃
 execute if entity @s[scores={ExWeapons.katana.useCombo6=18}] run function exweapons:core/weapons/katana/use/mode1/2-6-.damage
 execute if entity @s[scores={ExWeapons.katana.useCombo6=16}] run function exweapons:core/weapons/katana/use/mode1/2-6-.damage
 execute if entity @s[scores={ExWeapons.katana.useCombo6=14}] run function exweapons:core/weapons/katana/use/mode1/2-6-.damage
 execute if entity @s[scores={ExWeapons.katana.useCombo6=12}] run function exweapons:core/weapons/katana/use/mode1/2-6-.damage
 execute if entity @s[scores={ExWeapons.katana.useCombo6=10}] run function exweapons:core/weapons/katana/use/mode1/2-6-.damage
 execute if entity @s[scores={ExWeapons.katana.useCombo6=8}] run function exweapons:core/weapons/katana/use/mode1/2-6-.damage
 execute if entity @s[scores={ExWeapons.katana.useCombo6=6}] run function exweapons:core/weapons/katana/use/mode1/2-6-.damage
 execute if entity @s[scores={ExWeapons.katana.useCombo6=4}] run function exweapons:core/weapons/katana/use/mode1/2-6-.damage
 execute if entity @s[scores={ExWeapons.katana.useCombo6=2}] run function exweapons:core/weapons/katana/use/mode1/2-6-.damage
 execute if entity @s[scores={ExWeapons.katana.useCombo6=0}] run function exweapons:core/weapons/katana/use/mode1/2-6-.damage

## パーティクル
 execute if entity @s[scores={ExWeapons.katana.useCombo6=18}] anchored eyes positioned ^ ^-0.5 ^ run function exweapons:core/particle/katana/mode1/6-1
 execute if entity @s[scores={ExWeapons.katana.useCombo6=16}] anchored eyes positioned ^ ^-0.5 ^ run function exweapons:core/particle/katana/mode1/6-2
 execute if entity @s[scores={ExWeapons.katana.useCombo6=14}] anchored eyes positioned ^ ^-0.5 ^ run function exweapons:core/particle/katana/mode1/6-3
 execute if entity @s[scores={ExWeapons.katana.useCombo6=12}] anchored eyes positioned ^ ^-0.5 ^ run function exweapons:core/particle/katana/mode1/6-4
 execute if entity @s[scores={ExWeapons.katana.useCombo6=10}] anchored eyes positioned ^ ^-0.5 ^ run function exweapons:core/particle/katana/mode1/6-5
 execute if entity @s[scores={ExWeapons.katana.useCombo6=8}] anchored eyes positioned ^ ^-0.5 ^ run function exweapons:core/particle/katana/mode1/6-6
 execute if entity @s[scores={ExWeapons.katana.useCombo6=6}] anchored eyes positioned ^ ^-0.5 ^ run function exweapons:core/particle/katana/mode1/6-7
 execute if entity @s[scores={ExWeapons.katana.useCombo6=4}] anchored eyes positioned ^ ^-0.5 ^ run function exweapons:core/particle/katana/mode1/6-8
 execute if entity @s[scores={ExWeapons.katana.useCombo6=2}] anchored eyes positioned ^ ^-0.5 ^ run function exweapons:core/particle/katana/mode1/6-9
 execute if entity @s[scores={ExWeapons.katana.useCombo6=0}] anchored eyes positioned ^ ^-0.5 ^ run function exweapons:core/particle/katana/mode1/6-10

## 処理
 scoreboard players set @s ExWeapons.katana.useReturn 10
 scoreboard players remove @s ExWeapons.katana.useCombo6 1

## 同時発動を防ぐためチェックを付けておく
 tag @s add tmp.check

 