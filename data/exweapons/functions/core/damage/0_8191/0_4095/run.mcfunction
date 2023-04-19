#二分探索-0~4095
execute if score $Tmp ExWeapons.rng matches 0..2047 run function exweapons:core/damage/0_8191/0_4095/0_2047/run
execute if score $Tmp ExWeapons.rng matches 2048..4095 run function exweapons:core/damage/0_8191/0_4095/2048_4095/run