# Toggle Noss Saber active/inactive for the player

# If already active, deactivate
execute as @a[nbt={Inventory:[{id:"minecraft:netherite_sword",tag:{SaberType:"noss",SaberActive:1b}}]}] run function truesabers:deactivate_noss

# If inactive, activate
execute as @a[nbt={Inventory:[{id:"minecraft:netherite_sword",tag:{SaberType:"noss",SaberActive:0b}}]}] run function truesabers:activate_noss

# If no SaberActive tag yet, treat as inactive and activate
execute as @a[nbt={Inventory:[{id:"minecraft:netherite_sword",tag:{SaberType:"noss"}}]}] unless score @s saber_active matches 1.. run function truesabers:activate_noss
