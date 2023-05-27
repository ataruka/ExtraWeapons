   execute at @s run function exweapons:core/craft/armor/babbling/babbling_helmet
   data modify entity @e[type=item,limit=1,sort=nearest] PickupDelay set value 0
   recipe take @s exweapons:armor/babbling/babbling_helmet
   clear @s knowledge_book 1
   advancement revoke @s only exweapons:craft/armor/babbling/babbling_helmet