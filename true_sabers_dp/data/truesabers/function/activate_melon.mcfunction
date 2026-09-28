item replace entity @s weapon.mainhand with minecraft:netherite_sword[custom_name='Melon Saber',lore=['TRUE DAMAGE: ACTIVE','Fuel: 1 melon every 5 seconds.'],custom_data={SaberType:"melon",SaberActive:1b},enchantments={"minecraft:sharpness":8},consumable={consume_seconds:0.05,animation:"none",has_consume_particles:false}]
playsound minecraft:block.grass.step player @s ~ ~ ~ 1 1.4
title @s actionbar {"text":"Melon Saber activated","color":"green"}
advancement revoke @s only truesabers:use_melon
