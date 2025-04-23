@echo off
chcp 65001 >nul

:top
cls
echo.
echo Uninstall One UI apps?
echo.
set /p input="Type "go" to proceed> "
if /i "%input%"=="go" goto :go
goto :top

:go
adb devices
pause

echo Ar Zone
adb shell pm uninstall --user 0 com.samsung.android.arzone

echo Ar-зарисовка
adb shell pm uninstall --user 0 com.samsung.android.ardrawing

echo Bixby
adb shell pm uninstall --user 0 com.samsung.android.bixby.agent

::echo Galaxy Shop
::adb shell pm uninstall --user 0 com.samsung.android.bixby.galaxy

echo Ar-приложения
adb shell pm uninstall --user 0 com.samsung.android.visionarapps

echo Samsung Members
adb shell pm uninstall --user 0 com.samsung.android.voc

echo Bixby Vision
adb shell pm uninstall --user 0 com.samsung.android.visionintelligence

echo Bixby Voice
adb shell pm uninstall --user 0 com.samsung.android.bixby.agent.dummy

echo Bixby Vision Framework
adb shell pm uninstall --user 0 com.samsung.android.bixbyvision.framework

echo Bookmark Provider
adb shell pm uninstall --user 0 com.android.bookmarkprovider

echo Briefing
adb shell pm uninstall --user 0 flipboard.boxer.app

echo DECO PIC
adb shell pm uninstall --user 0 com.samsung.android.livestickers

echo Dex для ПК
adb shell pm uninstall --user 0 com.sec.android.app.dexonpc

echo Smart Switch
adb shell pm uninstall --user 0 com.sec.android.easyMover

echo Duo
adb shell pm uninstall --user 0 com.google.android.apps.tachyon

echo Facebook
adb shell pm uninstall --user 0 com.facebook.katana
adb shell pm uninstall --user 0 com.facebook.system
adb shell pm uninstall --user 0 com.facebook.appmanager
adb shell pm uninstall --user 0 com.facebook.services

echo Galaxy Wearable
adb shell pm uninstall --user 0 com.samsung.android.app.watchmanager

echo Game Booster
adb shell pm uninstall --user 0 com.samsung.android.game.gametools

echo Game Launcher
adb shell pm uninstall --user 0 com.samsung.android.game.gamehome

echo Game Optimizing Service
adb shell pm uninstall --user 0 com.samsung.android.game.gos

echo Gmail
adb shell pm uninstall --user 0 com.google.android.gm

echo Google
adb shell pm uninstall --user 0 com.google.android.googlequicksearchbox

echo Google Play Services for AR
adb shell pm uninstall --user 0 com.google.ar.core

echo Google Play Фильмы
adb shell pm uninstall --user 0 com.google.android.videos

echo Google Ассистент
adb shell pm uninstall --user 0 com.android.hotwordenrollment.xgoogle
adb shell pm uninstall --user 0 com.android.hotwordenrollment.okgoogle

::echo Google Фото
::adb shell pm uninstall --user 0 com.google.android.apps.photos

echo Link Sharing
adb shell pm uninstall --user 0 com.samsung.android.app.simplesharing

echo Netflix
adb shell pm uninstall --user 0 com.netflix.mediaclient

echo PartnerNetflixActivation
adb shell pm uninstall --user 0 com.netflix.partner.activation

echo Office
adb shell pm uninstall --user 0 com.microsoft.office.officehubrow

::echo OneDrive
::adb shell pm uninstall --user 0 com.microsoft.skydrive

echo Outlook
adb shell pm uninstall --user 0 com.microsoft.office.outlook

echo Private Share
adb shell pm uninstall --user 0 com.samsung.android.privateshare

echo Samsung Daily
adb shell pm uninstall --user 0 com.samsung.android.app.spage

echo Samsung DeX
adb shell pm uninstall --user 0 com.sec.android.desktopmode.uiservice

echo Samsung Galaxy Friends
adb shell pm uninstall --user 0 com.samsung.android.mateagent

echo Samsung Global Goals
adb shell pm uninstall --user 0 com.samsung.sree

echo Samsung Internet
adb shell pm uninstall --user 0 com.sec.android.app.sbrowser

echo Samsung Kids
adb shell pm uninstall --user 0 com.sec.android.app.kidshome

echo Samsung Pass
adb shell pm uninstall --user 0 com.samsung.android.authfw

echo Samsung Pass Provider
adb shell pm uninstall --user 0 com.samsung.android.samsungpass

echo Smart Tutor
adb shell pm uninstall --user 0 com.rsupport.rs.activity.rsupport.aas2

echo SwiftKey factory settings
adb shell pm uninstall --user 0 com.touchtype.swiftkey
adb shell pm uninstall --user 0 com.swiftkey.swiftkeyconfigurator

echo Wearable Manager Installer
adb shell pm uninstall --user 0 com.samsung.android.app.watchmanagerstub

echo YouTube Music
adb shell pm uninstall --user 0 com.google.android.apps.youtube.music

echo Автозаполнение с Samsung Pass
adb shell pm uninstall --user 0 com.samsung.android.samsungpassautofill

echo Включение голосом
adb shell pm uninstall --user 0 com.samsung.android.bixby.wakeup

echo Главный экран Samsung DeX
adb shell pm uninstall --user 0 com.sec.android.app.desktoplauncher

echo Google Диск
adb shell pm uninstall --user 0 com.google.android.apps.docs


echo Каталог живых обоев
adb shell pm uninstall --user 0 com.android.wallpaper.livepicker

echo Клавиатура Microsoft SwiftKey
adb shell pm uninstall --user 0 com.touchtype.swiftkey


echo Редактор AR-эмодзи
adb shell pm uninstall --user 0 com.samsung.android.aremojieditor

echo Руководство пользователя
adb shell pm uninstall --user 0 com.sec.android.widgetapp.webmanual

echo SIM-карта
adb shell pm uninstall --user 0 com.android.stk

echo Служба Bixby
adb shell pm uninstall --user 0 com.samsung.android.bixby.service

echo Советы
adb shell pm uninstall --user 0 com.samsung.android.app.tips

echo Стикеры AR Emoji
adb shell pm uninstall --user 0 com.sec.android.mimage.avatarstickers

echo Сценарии Bixby
adb shell pm uninstall --user 0 com.samsung.android.app.routines

echo Установщик Kids
adb shell pm uninstall --user 0 com.samsung.android.kidsinstaller

echo Яндекс
adb shell pm uninstall --user 0 ru.yandex.searchplugin

adb kill-server
echo.

taskkill /F /IM adb.exe /T 2>NUL

RMDIR /S /Q %USERPROFILE%\.android 2>NUL
RMDIR /S /Q %USERPROFILE%\.dbus-keyrings 2>NUL
pause
