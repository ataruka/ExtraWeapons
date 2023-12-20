# loreの設定
data modify storage open: Set.Rng set from entity @s SelectedItem.tag.exweapons.ability[{Slot:6}].detail.Mul_Armor
data modify storage util: in set string storage open: Set.Rng
data remove storage util: out
function #util:split
data modify storage util: Temp set from storage util: out[-1]
execute if data storage util: {Temp:"f"} run data remove storage util: out[-1]
item modify entity @s weapon.mainhand exweapons:lore_nbt/status/detail/armor_mul