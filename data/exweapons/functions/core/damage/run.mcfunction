#二分探索-0~16384
execute if score $Tmp ExWeapons.rng matches 0..8191 run function exweapons:core/damage/0_8191/run
execute if score $Tmp ExWeapons.rng matches 8192..16383 run function exweapons:core/damage/8192_16383/run
