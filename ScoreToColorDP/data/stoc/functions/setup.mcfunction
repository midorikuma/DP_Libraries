## スコアボードを作成
scoreboard objectives add TextColor dummy
scoreboard objectives add TextColorR dummy
scoreboard objectives add TextColorG dummy
scoreboard objectives add TextColorB dummy
scoreboard objectives add TextColorH dummy
scoreboard objectives add TextColorS dummy
scoreboard objectives add TextColorV dummy
scoreboard objectives add TextColorDecimal dummy

## 定数を設定
scoreboard players set ###16 TextColor 16
scoreboard players set ###360 TextColor 360
scoreboard players set ###60 TextColor 60
scoreboard players set ###255 TextColor 255
scoreboard players set ###2 TextColor 2
scoreboard players set ###-1 TextColor -1
scoreboard players set ###256 TextColor 256
scoreboard players set ###65536 TextColor 65536

data modify storage stoc hexvalue set value ["0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F"]