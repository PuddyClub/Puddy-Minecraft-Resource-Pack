## There is extra stuff here that I added for detecting silk touch, there are probably other ways to do it but this was a simple way to do it which only uses the remove function.

# Tag if silk touch drop and player actually holding silk touch nearby
execute if entity @e[type=item,distance=0..2,sort=nearest,limit=1,nbt={OnGround:0b,Item:{id:"minecraft:stone",Count:1b}}] if entity @a[distance=0..10,nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}] run tag @s add silk

# Drop ore if silk touch
execute if entity @s[tag=silk] run summon item ~ ~0.5 ~ {Item:{id:"minecraft:item_frame",Count:1b,tag:{display:{Name:'{"text":"Ruby Ore"}'},CustomModelData:777778,EntityTag:{Tags:["rubyore"],Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:777778}},Invulnerable:1b,Invisible:1b,Fixed:1b}}}}

# Drop ruby if not silk touch
execute unless entity @s[tag=silk] run summon item ~ ~0.5 ~ {Item:{id:"minecraft:command_block",Count:1b,tag:{ruby:1b,display:{Name:'{"text":"Ruby"}'},CustomModelData:777777}}}

# Kill silk touch drop if silk
execute if entity @s[tag=silk] run kill @e[type=item,distance=0..2,sort=nearest,limit=1,nbt={Item:{id:"minecraft:stone",Count:1b}}]

# Kill normal drop if not silk
execute unless entity @s[tag=silk] run kill @e[type=item,distance=0..2,sort=nearest,limit=1,nbt={Item:{id:"minecraft:cobblestone"}}]

kill @s