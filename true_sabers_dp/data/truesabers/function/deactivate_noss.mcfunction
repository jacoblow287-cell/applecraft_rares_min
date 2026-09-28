# Deactivate Noss Saber for the player

scoreboard players set @s saber_active 0
item modify entity @s weapon.mainhand {SaberActive:0b}

tellraw @s {"text":"[Noss Saber] Deactivated – true damage OFF.","color":"gray"}
