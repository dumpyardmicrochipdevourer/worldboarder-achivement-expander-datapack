# worldboarder achievement expander datapack

на каждый явный vanilla-адвансмент (story/nether/end/adventure/husbandry)

 через `#minecraft:tick` + `execute ... if entity @s[advancements={...}]` (без
переопределения ванильных JSON) один раз на игрока навешивается
`worldborder add <N>`

| advancment-type | blocks |
|---|---|
| task | 5 |
| goal | 15 |
| challenge | 40 |


#cap=3000 в data/smp/function/worldborder/config.mcfunction — это абсолютный потолок диаметра: прирост клэмпится, чтобы #diameter никогда не превысил #cap

при каждом росте границы в чат уходит серое сообщение `[граница] +N блоков, теперь D` (N — реальный прирост после клэмпа, D — новый `#diameter`); когда потолок уже достигнут и прирост 0, сообщения нет

