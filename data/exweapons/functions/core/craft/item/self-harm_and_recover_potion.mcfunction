   execute at @s run function exweapons:core/item/self-harm_and_recover_potion/0.give
   data modify entity @e[type=item,limit=1,sort=nearest] PickupDelay set value 0
   recipe take @s exweapons:item/self-harm_and_recover_potion
   clear @s knowledge_book 1
   advancement revoke @s only exweapons:craft/item/self-harm_and_recover_potion