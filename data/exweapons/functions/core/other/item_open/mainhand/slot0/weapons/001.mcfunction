# katana-八〇式刀剣(id:001)
data remove storage open: Tmp
data merge storage open: {Tmp:[{Slot:0,detail:{Mul_ExAttackDamage:6}}]}
item modify entity @s weapon.mainhand exweapons:lore_nbt/copy_lore_nbt
execute store result storage open: Set.Rng float 0.1 run data get storage open: Tmp[{Slot:0}].detail.Mul_ExAttackDamage
# item modify entity @s weapon.mainhand exweapons:lore_nbt/status/detail/exattackdamage_mul