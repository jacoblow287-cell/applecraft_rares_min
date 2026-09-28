item replace entity @s weapon.mainhand with minecraft:netherite_sword[custom_name='Noss Saber',lore=['Right-click to toggle true damage.','Fuel: amethyst shards.'],custom_data={SaberType:"noss",SaberActive:0b},enchantments={"minecraft:sharpness":8},consumable={consume_seconds:0.05,animation:"none",has_consume_particles:false}]
playsound minecraft:block.amethyst_block.break player @s ~ ~ ~ 0.7 0.8
title @s actionbar {"text":"Noss Saber deactivated","color":"gray"}
advancement revoke @s only truesabers:deactivate_noss
