# Every tick:
# - For each player with saber_active = 1:
#   - Increase timer
#   - Every 100 ticks (5s), try to consume fuel
#   - If no fuel, deactivate saber

# Ensure timer objective exists
scoreboard objectives add saber_timer dummy

# Increment timer for active players
scoreboard players add @a[scores={saber_active=1..}] saber_timer 1

# ---- NOSS SABER FUEL ----

# Every 100 ticks, try to consume 1 amethyst shard for Noss users
execute as @a[scores={saber_active=1..,saber_timer=100..}] at @s unless item entity @s weapon.mainhand minecraft:netherite_sword{SaberType:"noss"} run scoreboard players set @s saber_active 0

# If they have amethyst, consume 1 and reset timer
execute as @a[scores={saber_active=1..,saber_timer=100..}] at @s if item entity @s weapon.mainhand minecraft:netherite_sword{SaberType:"noss"} if item entity @s inventory minecraft:amethyst_shard run clear @s minecraft:amethyst_shard 1 1
execute as @a[scores={saber_active=1..,saber_timer=100..}] at @s if item entity @s weapon.mainhand minecraft:netherite_sword{SaberType:"noss"} if item entity @s inventory minecraft:amethyst_shard run scoreboard players set @s saber_timer 0

# If they DON'T have amethyst but are active with Noss, deactivate
execute as @a[scores={saber_active=1..,saber_timer=100..}] at @s if item entity @s weapon.mainhand minecraft:netherite_sword{SaberType:"noss"} unless item entity @s inventory minecraft:amethyst_shard run function truesabers:deactivate_noss

# ---- MELON SABER FUEL ----

execute as @a[scores={saber_active=1..,saber_timer=100..}] at @s if item entity @s weapon.mainhand minecraft:netherite_sword{SaberType:"melon"} if item entity @s inventory minecraft:melon run clear @s minecraft:melon 1 1
execute as @a[scores={saber_active=1..,saber_timer=100..}] at @s if item entity @s weapon.mainhand minecraft:netherite_sword{SaberType:"melon"} if item entity @s inventory minecraft:melon run scoreboard players set @s saber_timer 0

execute as @a[scores={saber_active=1..,saber_timer=100..}] at @s if item entity @s weapon.mainhand minecraft:netherite_sword{SaberType:"melon"} unless item entity @s inventory minecraft:melon run function truesabers:deactivate_melon
