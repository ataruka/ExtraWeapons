# 読み込み時の値適応-MaxHealth
## リセット
attribute @s generic.max_health modifier remove 65-1-9CB1-0-1
attribute @s generic.max_health modifier remove 65-1-9CB1-0-2

attribute @s generic.max_health modifier remove 65-1-9CB1-0-3
attribute @s generic.max_health modifier remove 65-1-9CB1-0-4
attribute @s generic.max_health modifier remove 65-1-9CB1-0-5
attribute @s generic.max_health modifier remove 65-1-9CB1-0-6
## 計算
### 小数点第2桁目
scoreboard players operation $Tmp ExWeapons.rnd = @s ExWeapons.DetailAbility.Health
scoreboard players operation $Tmp ExWeapons.rng %= #10 ExWeapons.rng
execute if score $Tmp ExWeapons.rng matches 1 run attribute @s generic.max_health modifier add 65-1-9CB1-0-1 "Ability HP小数点第2桁目" 0.01 add
execute if score $Tmp ExWeapons.rng matches 2 run attribute @s generic.max_health modifier add 65-1-9CB1-0-1 "Ability HP小数点第2桁目" 0.02 add
execute if score $Tmp ExWeapons.rng matches 3 run attribute @s generic.max_health modifier add 65-1-9CB1-0-1 "Ability HP小数点第2桁目" 0.03 add
execute if score $Tmp ExWeapons.rng matches 4 run attribute @s generic.max_health modifier add 65-1-9CB1-0-1 "Ability HP小数点第2桁目" 0.04 add
execute if score $Tmp ExWeapons.rng matches 5 run attribute @s generic.max_health modifier add 65-1-9CB1-0-1 "Ability HP小数点第2桁目" 0.05 add
execute if score $Tmp ExWeapons.rng matches 6 run attribute @s generic.max_health modifier add 65-1-9CB1-0-1 "Ability HP小数点第2桁目" 0.06 add
execute if score $Tmp ExWeapons.rng matches 7 run attribute @s generic.max_health modifier add 65-1-9CB1-0-1 "Ability HP小数点第2桁目" 0.07 add
execute if score $Tmp ExWeapons.rng matches 8 run attribute @s generic.max_health modifier add 65-1-9CB1-0-1 "Ability HP小数点第2桁目" 0.08 add
execute if score $Tmp ExWeapons.rng matches 9 run attribute @s generic.max_health modifier add 65-1-9CB1-0-1 "Ability HP小数点第2桁目" 0.09 add
### 小数点第1桁目
scoreboard players operation $Tmp ExWeapons.rnd = @s ExWeapons.DetailAbility.Health
scoreboard players operation $Tmp ExWeapons.rng /= #10 ExWeapons.rng
scoreboard players operation $Tmp ExWeapons.rng %= #100 ExWeapons.rng
execute if score $Tmp ExWeapons.rng matches 1 run attribute @s generic.max_health modifier add 65-1-9CB1-0-2 "Ability HP小数点第1桁目" 0.1 add
execute if score $Tmp ExWeapons.rng matches 2 run attribute @s generic.max_health modifier add 65-1-9CB1-0-2 "Ability HP小数点第1桁目" 0.2 add
execute if score $Tmp ExWeapons.rng matches 3 run attribute @s generic.max_health modifier add 65-1-9CB1-0-2 "Ability HP小数点第1桁目" 0.3 add
execute if score $Tmp ExWeapons.rng matches 4 run attribute @s generic.max_health modifier add 65-1-9CB1-0-2 "Ability HP小数点第1桁目" 0.4 add
execute if score $Tmp ExWeapons.rng matches 5 run attribute @s generic.max_health modifier add 65-1-9CB1-0-2 "Ability HP小数点第1桁目" 0.5 add
execute if score $Tmp ExWeapons.rng matches 6 run attribute @s generic.max_health modifier add 65-1-9CB1-0-2 "Ability HP小数点第1桁目" 0.6 add
execute if score $Tmp ExWeapons.rng matches 7 run attribute @s generic.max_health modifier add 65-1-9CB1-0-2 "Ability HP小数点第1桁目" 0.7 add
execute if score $Tmp ExWeapons.rng matches 8 run attribute @s generic.max_health modifier add 65-1-9CB1-0-2 "Ability HP小数点第1桁目" 0.8 add
execute if score $Tmp ExWeapons.rng matches 9 run attribute @s generic.max_health modifier add 65-1-9CB1-0-2 "Ability HP小数点第1桁目" 0.9 add
### 1桁目
scoreboard players operation $Tmp ExWeapons.rnd = @s ExWeapons.DetailAbility.Health
scoreboard players operation $Tmp ExWeapons.rng /= #100 ExWeapons.rng
scoreboard players operation $Tmp ExWeapons.rng %= #10 ExWeapons.rng
execute if score $Tmp ExWeapons.rng matches 1 run attribute @s generic.max_health modifier add 65-1-9CB1-0-3 "Ability HP1桁目" 1 add
execute if score $Tmp ExWeapons.rng matches 2 run attribute @s generic.max_health modifier add 65-1-9CB1-0-3 "Ability HP1桁目" 2 add
execute if score $Tmp ExWeapons.rng matches 3 run attribute @s generic.max_health modifier add 65-1-9CB1-0-3 "Ability HP1桁目" 3 add
execute if score $Tmp ExWeapons.rng matches 4 run attribute @s generic.max_health modifier add 65-1-9CB1-0-3 "Ability HP1桁目" 4 add
execute if score $Tmp ExWeapons.rng matches 5 run attribute @s generic.max_health modifier add 65-1-9CB1-0-3 "Ability HP1桁目" 5 add
execute if score $Tmp ExWeapons.rng matches 6 run attribute @s generic.max_health modifier add 65-1-9CB1-0-3 "Ability HP1桁目" 6 add
execute if score $Tmp ExWeapons.rng matches 7 run attribute @s generic.max_health modifier add 65-1-9CB1-0-3 "Ability HP1桁目" 7 add
execute if score $Tmp ExWeapons.rng matches 8 run attribute @s generic.max_health modifier add 65-1-9CB1-0-3 "Ability HP1桁目" 8 add
execute if score $Tmp ExWeapons.rng matches 9 run attribute @s generic.max_health modifier add 65-1-9CB1-0-3 "Ability HP1桁目" 9 add
### 2桁目
scoreboard players operation $Tmp ExWeapons.rnd = @s ExWeapons.DetailAbility.Health
scoreboard players operation $Tmp ExWeapons.rng /= #100 ExWeapons.rng
scoreboard players operation $Tmp ExWeapons.rng /= #10 ExWeapons.rng
scoreboard players operation $Tmp ExWeapons.rng %= #10 ExWeapons.rng
execute if score $Tmp ExWeapons.rng matches 1 run attribute @s generic.max_health modifier add 65-1-9CB1-0-4 "Ability HP2桁目" 10 add
execute if score $Tmp ExWeapons.rng matches 2 run attribute @s generic.max_health modifier add 65-1-9CB1-0-4 "Ability HP2桁目" 20 add
execute if score $Tmp ExWeapons.rng matches 3 run attribute @s generic.max_health modifier add 65-1-9CB1-0-4 "Ability HP2桁目" 30 add
execute if score $Tmp ExWeapons.rng matches 4 run attribute @s generic.max_health modifier add 65-1-9CB1-0-4 "Ability HP2桁目" 40 add
execute if score $Tmp ExWeapons.rng matches 5 run attribute @s generic.max_health modifier add 65-1-9CB1-0-4 "Ability HP2桁目" 50 add
execute if score $Tmp ExWeapons.rng matches 6 run attribute @s generic.max_health modifier add 65-1-9CB1-0-4 "Ability HP2桁目" 60 add
execute if score $Tmp ExWeapons.rng matches 7 run attribute @s generic.max_health modifier add 65-1-9CB1-0-4 "Ability HP2桁目" 70 add
execute if score $Tmp ExWeapons.rng matches 8 run attribute @s generic.max_health modifier add 65-1-9CB1-0-4 "Ability HP2桁目" 80 add
execute if score $Tmp ExWeapons.rng matches 9 run attribute @s generic.max_health modifier add 65-1-9CB1-0-4 "Ability HP2桁目" 90 add
### 3桁目
scoreboard players operation $Tmp ExWeapons.rnd = @s ExWeapons.DetailAbility.Health
scoreboard players operation $Tmp ExWeapons.rng /= #100 ExWeapons.rng
scoreboard players operation $Tmp ExWeapons.rng /= #100 ExWeapons.rng
scoreboard players operation $Tmp ExWeapons.rng %= #10 ExWeapons.rng
execute if score $Tmp ExWeapons.rng matches 1 run attribute @s generic.max_health modifier add 65-1-9CB1-0-5 "Ability HP3桁目" 100 add
execute if score $Tmp ExWeapons.rng matches 2 run attribute @s generic.max_health modifier add 65-1-9CB1-0-5 "Ability HP3桁目" 200 add
execute if score $Tmp ExWeapons.rng matches 3 run attribute @s generic.max_health modifier add 65-1-9CB1-0-5 "Ability HP3桁目" 300 add
execute if score $Tmp ExWeapons.rng matches 4 run attribute @s generic.max_health modifier add 65-1-9CB1-0-5 "Ability HP3桁目" 400 add
execute if score $Tmp ExWeapons.rng matches 5 run attribute @s generic.max_health modifier add 65-1-9CB1-0-5 "Ability HP3桁目" 500 add
execute if score $Tmp ExWeapons.rng matches 6 run attribute @s generic.max_health modifier add 65-1-9CB1-0-5 "Ability HP3桁目" 600 add
execute if score $Tmp ExWeapons.rng matches 7 run attribute @s generic.max_health modifier add 65-1-9CB1-0-5 "Ability HP3桁目" 700 add
execute if score $Tmp ExWeapons.rng matches 8 run attribute @s generic.max_health modifier add 65-1-9CB1-0-5 "Ability HP3桁目" 800 add
execute if score $Tmp ExWeapons.rng matches 9 run attribute @s generic.max_health modifier add 65-1-9CB1-0-5 "Ability HP3桁目" 900 add
### 4桁目
scoreboard players operation $Tmp ExWeapons.rnd = @s ExWeapons.DetailAbility.Health
scoreboard players operation $Tmp ExWeapons.rng /= #100 ExWeapons.rng
scoreboard players operation $Tmp ExWeapons.rng /= #100 ExWeapons.rng
scoreboard players operation $Tmp ExWeapons.rng /= #10 ExWeapons.rng
scoreboard players operation $Tmp ExWeapons.rng %= #10 ExWeapons.rng
execute if score $Tmp ExWeapons.rng matches 1 run attribute @s generic.max_health modifier add 65-1-9CB1-0-6 "Ability HP4桁目" 1000 add
execute if score $Tmp ExWeapons.rng matches 2 run attribute @s generic.max_health modifier add 65-1-9CB1-0-6 "Ability HP4桁目" 2000 add
execute if score $Tmp ExWeapons.rng matches 3 run attribute @s generic.max_health modifier add 65-1-9CB1-0-6 "Ability HP4桁目" 3000 add
execute if score $Tmp ExWeapons.rng matches 4 run attribute @s generic.max_health modifier add 65-1-9CB1-0-6 "Ability HP4桁目" 4000 add
execute if score $Tmp ExWeapons.rng matches 5 run attribute @s generic.max_health modifier add 65-1-9CB1-0-6 "Ability HP4桁目" 5000 add
execute if score $Tmp ExWeapons.rng matches 6 run attribute @s generic.max_health modifier add 65-1-9CB1-0-6 "Ability HP4桁目" 6000 add
execute if score $Tmp ExWeapons.rng matches 7 run attribute @s generic.max_health modifier add 65-1-9CB1-0-6 "Ability HP4桁目" 7000 add
execute if score $Tmp ExWeapons.rng matches 8 run attribute @s generic.max_health modifier add 65-1-9CB1-0-6 "Ability HP4桁目" 8000 add
execute if score $Tmp ExWeapons.rng matches 9 run attribute @s generic.max_health modifier add 65-1-9CB1-0-6 "Ability HP4桁目" 9000 add