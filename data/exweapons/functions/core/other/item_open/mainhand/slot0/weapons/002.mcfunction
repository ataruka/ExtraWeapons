# kuzyakusen-孔雀扇(id:002)
data remove storage open: Tmp
data merge storage open: {Tmp:[{Slot:0,attribute:{WindDamage:6}}]}
item modify entity @s weapon.mainhand exweapons:lore_nbt/copy_lore_nbt

execute store result storage open: Set.Rng float 0.1 run data get storage open: Tmp[{Slot:0}].attribute.WindDamage
# item modify entity @s weapon.mainhand exweapons:lore_nbt/status/attributes/winddamage_mul
