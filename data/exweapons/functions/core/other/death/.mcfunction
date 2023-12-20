# death処理
execute unless score $Damageid ExWeapons.rng matches -2147483648..2147483647 if entity @e[tag=tmp.owner,limit=1,sort=nearest] run damage @s 10000 exweapons:mob_attack by @e[tag=tmp.owner,limit=1,sort=nearest]
execute unless score $Damageid ExWeapons.rng matches -2147483648..2147483647 unless entity @e[tag=tmp.owner,limit=1,sort=nearest] run damage @s 10000 exweapons:mob_attack
execute if score $Damageid ExWeapons.rng matches -1 if entity @e[tag=tmp.owner,limit=1,sort=nearest] run damage @s 10000 exweapons:mob_attack by @e[tag=tmp.owner,limit=1,sort=nearest]
execute if score $Damageid ExWeapons.rng matches -1 unless entity @e[tag=tmp.owner,limit=1,sort=nearest] run damage @s 10000 exweapons:mob_attack

execute if score $Damageid ExWeapons.rng matches 1 run damage @s 10000 exweapons:death/on_fire
execute if score $Damageid ExWeapons.rng matches 2 run damage @s 10000 exweapons:death/in_fire
execute if score $Damageid ExWeapons.rng matches 3 run damage @s 10000 exweapons:death/dry_out
execute if score $Damageid ExWeapons.rng matches 4 run damage @s 10000 exweapons:death/lava
execute if score $Damageid ExWeapons.rng matches 5 run damage @s 10000 exweapons:death/cactus
execute if score $Damageid ExWeapons.rng matches 6 run damage @s 10000 exweapons:death/sweet_berry_bush
execute if score $Damageid ExWeapons.rng matches 7 run damage @s 10000 exweapons:death/sting
execute if score $Damageid ExWeapons.rng matches 8 run damage @s 10000 exweapons:death/freeze
execute if score $Damageid ExWeapons.rng matches 9 run damage @s 10000 exweapons:death/lightning_bolt
execute if score $Damageid ExWeapons.rng matches 10 run damage @s 10000 exweapons:death/drown
execute if score $Damageid ExWeapons.rng matches 11 run damage @s 10000 exweapons:death/sonic_boom
execute if score $Damageid ExWeapons.rng matches 12 run damage @s 10000 exweapons:death/physics
execute if score $Damageid ExWeapons.rng matches 13 run damage @s 10000 exweapons:death/physics_bleeding