   execute at @s run function exweapons:core/item/poppy_deuce/0.give
   data modify entity @e[type=item,limit=1,sort=nearest] PickupDelay set value 0
   recipe take @s exweapons:item/poppy_deuce
   clear @s knowledge_book 1
   advancement revoke @s only exweapons:craft/item/poppy_deuce