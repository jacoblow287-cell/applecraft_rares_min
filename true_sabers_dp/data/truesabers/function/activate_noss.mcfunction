item replace entity @s weapon.mainhand with minecraft:netherite_sword[custom_name='Noss Saber',lore=['TRUE DAMAGE: ACTIVE','Fuel: 1 amethyst shard every 5 seconds.'],custom_data={SaberType:"noss",SaberActive:1b},enchantments={"minecraft:sharpness":8},consumable={consume_seconds:0.05,animation:"none",has_consume_particles:false}]
playsound minecraft:block.amethyst_block.chime player @s ~ ~ ~ 1 1.25
title @s actionbar {"text":"Noss Saber activated","color":"aqua"}
advancement revoke @s only truesabers:use_noss
