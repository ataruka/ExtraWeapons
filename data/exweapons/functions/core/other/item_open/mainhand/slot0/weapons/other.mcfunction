# その他
data remove storage open: Tmp
data merge storage open: {Tmp:[{Slot:0,detail:{Mul_AttackDamage:6}}]}
item modify entity @s weapon.mainhand exweapons:lore_nbt/copy_lore_nbt

execute store result storage open: Set.Rng float 0.1 run data get storage open: Tmp[{Slot:0}].detail.Mul_AttackDamage
# item modify entity @s weapon.mainhand exweapons:lore_nbt/status/detail/attackdamage_mul
