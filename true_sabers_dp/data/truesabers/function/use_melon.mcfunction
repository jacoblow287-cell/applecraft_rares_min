# Toggle Melon Saber active/inactive for the player

execute as @a[nbt={Inventory:[{id:"minecraft:netherite_sword",tag:{SaberType:"melon",SaberActive:1b}}]}] run function truesabers:deactivate_melon
execute as @a[nbt={Inventory:[{id:"minecraft:netherite_sword",tag:{SaberType:"melon",SaberActive:0b}}]}] run function truesabers:activate_melon
execute as @a[nbt={Inventory:[{id:"minecraft:netherite_sword",tag:{SaberType:"melon"}}]}] unless score @s saber_active matches 1.. run function truesabers:activate_melon
