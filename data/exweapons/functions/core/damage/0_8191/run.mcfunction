#二分探索-0~8191
execute if score $Tmp ExWeapons.rng matches 0..4095 run function exweapons:core/damage/0_8191/0_4095/run
execute if score $Tmp ExWeapons.rng matches 4096..8191 run function exweapons:core/damage/0_8191/4096_8191/run
