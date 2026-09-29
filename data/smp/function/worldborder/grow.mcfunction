scoreboard players operation #remaining smp.border = #cap smp.border
scoreboard players operation #remaining smp.border -= #diameter smp.border
execute if score #delta smp.border > #remaining smp.border run scoreboard players operation #delta smp.border = #remaining smp.border
execute if score #delta smp.border matches ..0 run return 0
scoreboard players operation #diameter smp.border += #delta smp.border
execute store result storage smp:worldborder value int 1 run scoreboard players get #diameter smp.border
function smp:worldborder/apply with storage smp:worldborder
tellraw @a [{"text":"[граница] +","color":"gray","italic":true},{"score":{"name":"#delta","objective":"smp.border"},"color":"green"},{"text":" блоков, теперь ","color":"gray"},{"score":{"name":"#diameter","objective":"smp.border"},"color":"gold"}]
