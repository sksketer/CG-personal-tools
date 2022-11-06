@echo off

:: delete main_data.json from game folder and desktop_en_main_data.json from Localization Tool (you may change the Localization Tools path or game name)
D:
cd D:\programming\tools\LocalizationTool(core gaming)\resource\destop_EN_JSON\
del desktop_en_main_data.json
echo "Delete desktop_en_main_data.json from Localization Tool"
cd D:\IngenuityGit\ONLINE\CoreGaming\%1
del main_data.json

:: copy desktop_en_main_data.json from game to Localization Tool and execute replicateMainDataGb command
copy "D:\IngenuityGit\ONLINE\CoreGaming\%1\template\source\res\manifest\mainData\desktop\en\desktop_en_main_data.json" "D:\programming\tools\LocalizationTool(core gaming)\resource\destop_EN_JSON\"
cd D:\programming\tools\LocalizationTool(core gaming)
node replicateMainDataGB.js

:: after executing the command move main_data.json to game folder
move "D:\programming\tools\LocalizationTool(core gaming)\resource\mainDataTarget\main_data.json" "D:\IngenuityGit\ONLINE\CoreGaming\%1\"
echo "update main_data.json sucessfully"
echo "Automatically exiting, please wait"

:: add timout for 5sec
timeout /t 5 /nobreak

:: pause command prompt after script completed
pause