

@echo off
title You_Dow
echo ------------------------------------------------------- 
echo    __  __               ________        ______               
echo    _ \/ /______ ____  _____  __/____  _____  /_ _____        
echo    __  / _  __ \_  / / /__  /   _  / / /__  __ \_  _ \       
echo    _  /  / /_/ // /_/ / _  /    / /_/ / _  /_/ //  __/       
echo    /_/   \____/ \__,_/  /_/     \__,_/  /_.___/ \___/                                                               
echo ------------------------------------------------------- 
@echo off
CD %userprofile% 
CD Desktop\You_Dow

:: إدخال الرابط
powershell Write-Host "Enter the video link URL from Youtube" -ForegroundColor Red 
set /p URL=Enter URL: 

:: اختيار الصيغة
powershell Write-Host "1 = mp3 audio only" -ForegroundColor Cyan
powershell Write-Host "2 = mp4 video" -ForegroundColor DarkYellow
powershell Write-Host "3 = Playlist video" -ForegroundColor Green
set /p Users-choice=Enter Number : 

:: التحقق من الإدخال وتنفيذ العملية بناءً على الخيار
if "%Users-choice%"=="1" (
    yt-dlp -x --audio-format mp3 "%URL%"
) else if "%Users-choice%"=="2" (
    yt-dlp -f "best" "%URL%"
) else if "%Users-choice%"=="3" (
    yt-dlp -f "best" --yes-playlist "%URL%"
) else (
    echo Invalid input. Please enter 1, 2, 3.
)
pause

