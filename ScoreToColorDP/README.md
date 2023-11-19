# ScoreToColor
スコアから、タイトルや看板などに使われる

JSONテキストのカラーコード(例:#FF0000)を生成します

# 使い方
## 準備
初めに以下のコマンドを実行してください
```
function stoc:setup
```

## RGB値から実行
プレイヤーへスコアボードTextColorR,TextColorG,TextColorBを0-255の範囲内の値で設定します

次に以下のコマンドを使用することで、実行元プレイヤーのスコアに設定されたRGB値のカラーコードが内包されたコマンドを実行することができます
```
function stoc:rgb {command:'stoc:texts/testtitle'}
```
このコマンドを実行すると、スコアに設定されたRGB値の色の付いたtestという文字をtitleで表示することができます。

## HSV値から実行
プレイヤーへスコアボードTextColorH,TextColorS,TextColorVをH:0-360,S:0-255,V:0-255の範囲内の値で設定します

次に以下のコマンドを使用することで、実行元プレイヤーのスコアに設定されたHSV値のカラーコードが内包されたコマンドを実行することができます
```
function stoc:hsv {command:'stoc:texts/testtitle'}
```
このコマンドを実行すると、スコアで設定されたHSV値の色の付いたtestという文字をtitleで表示することができます。

## 単一のスコア値から実行
プレイヤーへスコアボードTextColorDigitを0-16777215の範囲内の値で設定します

次に以下のコマンドを使用することで、実行元プレイヤーのスコアに設定された値のカラーコードが内包されたコマンドを実行することができます
```
function stoc:digit {command:'stoc:texts/testtitle'}
```
このコマンドを実行すると、スコアで設定された値で色の付けられたtestという文字をtitleで表示することができます。

## 任意のコマンドの実行
以下のコマンドから、任意のコマンドを実行することが可能です
```
function stoc:rgb {command:'コマンド'}
```
"コマンド"には以下のいずれかの文字列を入れてください
- ファンクションのパス
  
  例：'stoc:texts/testtitle'
  ```
  function stoc:rgb {command:'stoc:texts/testtitle'}
  ```
  ファンクション内のコマンドの頭に\$を付け、color値を"$(color)"で置き換えてください
  ```
  $title @s title {"text":"test","color":"$(color)"}
  ```
- color値を"\\',\\'"に置き換えたコマンド
  
  例：'title @s title {"text":"test","color":"\\',\\'"}'
  ```
  function stoc:rgb {command:'title @s title {"text":"test","color":"\',\'"}'}
  ```