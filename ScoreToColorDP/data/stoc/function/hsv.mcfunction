## TextColor:H,S,V -> R,G,B
scoreboard players operation ##HTmp TextColor = @s TextColorH
scoreboard players operation ##HTmp TextColor %= ###360 TextColor
## HQuot = H/60
scoreboard players operation ##HQuot TextColor = ##HTmp TextColor
scoreboard players operation ##HQuot TextColor %= ###360 TextColor
scoreboard players operation ##HQuot TextColor /= ###60 TextColor
## HPos = H%60*255/60
scoreboard players operation ##HPos TextColor = ##HTmp TextColor
scoreboard players operation ##HPos TextColor %= ###60 TextColor
scoreboard players operation ##HPos TextColor *= ###255 TextColor
scoreboard players operation ##HPos TextColor /= ###60 TextColor

## RGBに入れるMAX,MIN,MIDを計算
## MAX = V
scoreboard players operation ##MAX TextColor = @s TextColorV
## MIN = V*(255-S)/255
scoreboard players operation ##MIN TextColor = ###255 TextColor
scoreboard players operation ##MIN TextColor -= @s TextColorS
scoreboard players operation ##MIN TextColor *= @s TextColorV
scoreboard players operation ##MIN TextColor /= ###255 TextColor
## MID = V*(255-S*HPos)/255
scoreboard players operation ##HQuot2 TextColor = ##HQuot TextColor
scoreboard players operation ##HQuot2 TextColor %= ###2 TextColor
execute if score ##HQuot2 TextColor matches 0 run scoreboard players operation ##HPos TextColor *= ###-1 TextColor
execute if score ##HQuot2 TextColor matches 0 run scoreboard players operation ##HPos TextColor += ###255 TextColor
scoreboard players operation ##MID TextColor = ##HPos TextColor
scoreboard players operation ##MID TextColor *= @s TextColorS
scoreboard players operation ##MID TextColor /= ###255 TextColor
scoreboard players operation ##MID TextColor *= ###-1 TextColor
scoreboard players operation ##MID TextColor += ###255 TextColor
scoreboard players operation ##MID TextColor *= @s TextColorV
scoreboard players operation ##MID TextColor /= ###255 TextColor

## HSVからRGBスコアを設定
execute if score ##HQuot TextColor matches 0 run function stoc:run/hsvtorgb {R:MAX,G:MID,B:MIN}
execute if score ##HQuot TextColor matches 1 run function stoc:run/hsvtorgb {R:MID,G:MAX,B:MIN}
execute if score ##HQuot TextColor matches 2 run function stoc:run/hsvtorgb {R:MIN,G:MAX,B:MID}
execute if score ##HQuot TextColor matches 3 run function stoc:run/hsvtorgb {R:MIN,G:MID,B:MAX}
execute if score ##HQuot TextColor matches 4 run function stoc:run/hsvtorgb {R:MID,G:MIN,B:MAX}
execute if score ##HQuot TextColor matches 5 run function stoc:run/hsvtorgb {R:MAX,G:MIN,B:MID}

## 実行
$data modify storage stoc command set value ['$(command)']
function stoc:run/run