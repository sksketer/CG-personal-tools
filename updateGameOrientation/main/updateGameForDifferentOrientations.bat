@echo off

:: delete main_data.json from game folder and desktop_en_main_data.json from Localization Tool (Localization Tools path or game name should be provide by another file which start this script)
:: Here %1 represent GameName and %2 represent Localization Tool path
D:
cd %2\resource\destop_EN_JSON\
del desktop_en_main_data.json
echo "Delete desktop_en_main_data.json from Localization Tool"
cd D:\IngenuityGit\ONLINE\CoreGaming\%1
del main_data.json

:: copy desktop_en_main_data.json from game to Localization Tool and execute replicateMainDataGb command
copy "D:\IngenuityGit\ONLINE\CoreGaming\%1\template\source\res\manifest\mainData\desktop\en\desktop_en_main_data.json" "%2\resource\destop_EN_JSON\"
cd %2
node replicateMainDataGB.js

:: after executing the command move main_data.json to game folder
move "%2\resource\mainDataTarget\main_data.json" "D:\IngenuityGit\ONLINE\CoreGaming\%1\"
echo "update main_data.json sucessfully"
echo "Automatically exiting, please wait"

:: add timout for 5sec
timeout /t 5 /nobreak

:: pause command prompt after script completed
::pause