   execute at @s run function exweapons:core/item/instant_respawn_anchor/0.give
   data modify entity @e[type=item,limit=1,sort=nearest] PickupDelay set value 0
   recipe take @s exweapons:item/instant_respawn_anchor
   clear @s knowledge_book 1
   advancement revoke @s only exweapons:craft/item/instant_respawn_anchor