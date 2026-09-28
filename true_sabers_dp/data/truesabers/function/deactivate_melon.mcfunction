item replace entity @s weapon.mainhand with minecraft:netherite_sword[custom_name='Melon Saber',lore=['Right-click to toggle true damage.','Fuel: melons.'],custom_data={SaberType:"melon",SaberActive:0b},enchantments={"minecraft:sharpness":8},consumable={consume_seconds:0.05,animation:"none",has_consume_particles:false}]
playsound minecraft:block.grass.step player @s ~ ~ ~ 0.7 0.6
title @s actionbar {"text":"Melon Saber deactivated","color":"gray"}
advancement revoke @s only truesabers:deactivate_melon
