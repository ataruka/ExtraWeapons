# particle
## 処理
 execute store result score $Tmp_MaxHealth ExWeapons.rng run attribute @s generic.max_health get 100
 execute store result score $Tmp_Health ExWeapons.rng run data get entity @s Health 100
 execute store result score $Tmp_HalfMaxHealth ExWeapons.rng run scoreboard players get $Tmp_MaxHealth ExWeapons.rng
 scoreboard players operation $Tmp_HalfMaxHealth ExWeapons.rng /= #2 ExWeapons.rng
 execute if score $Tmp_HalfMaxHealth ExWeapons.rng < $Tmp_Health ExWeapons.rng run tag @s add tmp.over50