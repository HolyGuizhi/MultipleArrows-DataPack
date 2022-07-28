#Guizhi(桂枝)

##第一次旋轉
    ##設定-7.3 degree的三角函數
    scoreboard players set @s sin -127
    scoreboard players set @s cos 992

    ##設定其他數值
    scoreboard players operation @s mx = @e[tag=1st,limit=1] Mx
    scoreboard players operation @s my = @e[tag=1st,limit=1] My
    scoreboard players operation @s mz = @e[tag=1st,limit=1] Mz

    ##旋轉軸設定
    scoreboard players operation @s ax = @p[tag=mult,scores={ub=1..}] ax
    scoreboard players operation @s ay = @p[tag=mult,scores={ub=1..}] ay
    scoreboard players operation @s az = @p[tag=mult,scores={ub=1..}] az

    ##執行函數ro_matrix (旋轉向量)
    function multa:ro_matrix

##第二次旋轉
    ##設定-10 degree的三角函數
    scoreboard players set @s sin -174
    scoreboard players set @s cos 985

    ##設定其他數值
    scoreboard players operation @s mx = @s Mx
    scoreboard players operation @s my = @s My
    scoreboard players operation @s mz = @s Mz

    ##旋轉軸更換
    scoreboard players operation @s ax = @p[tag=mult,scores={ub=1..}] ax2
    scoreboard players operation @s ay = @p[tag=mult,scores={ub=1..}] ay2
    scoreboard players operation @s az = @p[tag=mult,scores={ub=1..}] az2

    ##執行函數ro_matrix (旋轉向量)
    function multa:ro_matrix

##Owner & Crit 設定
data modify entity @s Owner set from entity @e[tag=1st,limit=1] Owner
data modify entity @s crit set from entity @e[tag=1st,limit=1] crit

##輸入Motion資料
execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s Mx
execute store result entity @s Motion[1] double 0.001 run scoreboard players get @s My
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s Mz

##收尾
tag @s remove 5th
