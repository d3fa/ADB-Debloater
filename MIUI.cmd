@echo off
chcp 65001 >nul

:top
cls
adb devices
echo.
echo Uninstall MIUI apps?
echo.
set /p input="Type "y" to proceed> "

if /i "%input%"=="y" goto :START
goto :top

:START

echo.
echo GooglePartnerSetup
adb shell pm disable-user --user 0 com.google.android.partnersetup
echo.
echo.
echo WPS Office 
adb shell pm uninstall --user 0 cn.wps.moffice_eng
echo.
echo Carusel
adb shell pm uninstall -k user 0 com.miui.android.fashiongallery
adb shell pm disable-user --user 0 com.miui.android.fashiongallery
echo.
echo.
echo Mi Doc Viewer (Powered by WPS) 
adb shell pm uninstall --user 0 cn.wps.xiaomi.abroad.lite
echo.
echo Aliexpress
adb shell pm uninstall --user 0 com.alibaba.aliexpresshd
echo.
echo Aliexpress Ru
adb shell pm uninstall --user 0 ru.aliexpress.buyer
echo.
echo Юла
adb shell pm uninstall --user 0 com.allgoritm.youla
echo.
echo Bookmark Provider
adb shell pm uninstall --user 0 com.android.bookmarkprovider
echo.
echo Browser Services
adb shell pm uninstall --user 0 com.android.browser

echo.
echo Mi Browser Pro
:: Unable to uninstall
adb shell pm uninstall --user 0 com.mi.globalbrowser
adb shell pm disable-user --user 0 com.mi.globalbrowser
echo.
echo Bouygues AppCloud
adb shell pm uninstall --user 0 com.aura.oobe.bouygues
echo.
echo Booking.com
adb shell pm uninstall --user 0 com.booking
echo.
echo eBay Partner Attribution
adb shell pm uninstall --user 0 com.ebay.carrier
echo.
echo eBay
adb shell pm uninstall --user 0 com.ebay.mobile
echo.
echo YouTube Music
adb shell pm uninstall --user 0 com.google.android.apps.youtube.music
echo.
echo Android Accessibility Suite
adb shell pm uninstall --user 0 com.google.android.marvin.talkback
echo.
echo Facebook
adb shell pm uninstall --user 0 com.facebook.katana
adb shell pm uninstall --user 0 com.facebook.system
adb shell pm uninstall --user 0 com.facebook.appmanager
adb shell pm uninstall --user 0 com.facebook.services
echo.
echo Emoji Keyboard
adb shell pm uninstall --user 0 com.facemoji.lite.xiaomi
echo.
echo Google Drive
adb shell pm uninstall --user 0 com.google.android.apps.docs
echo.
echo Google Assistant
adb shell pm uninstall --user 0 com.google.android.apps.googleassistant
echo.
echo Google News
adb shell pm uninstall --user 0 com.google.android.apps.magazines
echo.
echo Google Podcasts
adb shell pm uninstall --user 0 com.google.android.apps.podcasts
echo.
echo Duo
adb shell pm uninstall --user 0 com.google.android.apps.tachyon
echo.
echo Device Health Services
adb shell pm uninstall --user 0 com.google.android.apps.turbo
echo.
echo Digital Wellbeing
adb shell pm uninstall --user 0 com.google.android.apps.wellbeing
echo.
echo Gmail
adb shell pm uninstall --user 0 com.google.android.gm
echo.
echo Google
adb shell pm uninstall --user 0 com.google.android.googlequicksearchbox
echo.
echo Google Play Music
adb shell pm uninstall --user 0 com.google.android.music
echo.
echo Google Play Games
adb shell pm uninstall --user 0 com.google.android.play.games
echo.
echo Android One
adb shell pm uninstall --user 0 com.google.android.apps.subscriptions.red
echo.
echo Google TV
adb shell pm uninstall --user 0 com.google.android.videos
echo.
echo Google Lens
adb shell pm uninstall --user 0 com.google.ar.lens
echo.
echo Google Play Services for AR
adb shell pm uninstall --user 0 com.google.ar.core
echo.

echo.
echo Google Assistant
adb shell pm uninstall --user 0 com.android.hotwordenrollment.xgoogle
echo.
echo.
echo Google Assistant
adb shell pm uninstall --user 0 com.android.hotwordenrollment.okgoogle
echo.

echo Google security
adb shell pm uninstall --user 0 com.google.android.apps.safetyhub
echo.

echo Lords Mobile
adb shell pm uninstall --user 0 com.igg.android.lordsmobile
echo.
echo Kaspersky Internet Security
adb shell pm uninstall --user 0 com.kms.free
echo.
echo App Vault
adb shell pm uninstall --user 0 com.mi.android.globalminusscreen
echo.
echo Mi Credit
adb shell pm uninstall --user 0 com.micredit.in
echo.
echo Mi Community
adb shell pm uninstall --user 0 com.mi.global.bbs
echo.
echo Mi Store
adb shell pm uninstall --user 0 com.mi.global.shop
echo.
echo MiDrive
adb shell pm uninstall --user 0 com.miui.newmidrive
echo.
echo Mi Mover
adb shell pm uninstall --user 0 com.miui.huanji
echo.
echo HybridAccessory
adb shell pm uninstall --user 0 com.miui.hybrid
echo.
echo Yellow Pages
adb shell pm uninstall --user 0 com.miui.yellowpage
echo.
echo Analytics
adb shell pm uninstall --user 0 com.miui.analytics
echo.
echo Services ^& Feedback
adb shell pm uninstall --user 0 com.miui.miservice
echo.
echo msa
adb shell pm uninstall --user 0 com.miui.msa.global
echo.
echo Mi Video
:: Unable to uninstall on some devices
adb shell pm uninstall --user 0 com.miui.videoplayer
adb shell pm disable-user --user 0 com.miui.videoplayer

echo.
echo PartnerNetflixActivation
adb shell pm uninstall --user 0 com.netflix.partner.activation
echo.
echo Netflix
adb shell pm uninstall --user 0 com.netflix.mediaclient
echo.
echo Opera
adb shell pm uninstall --user 0 com.opera.browser
adb shell pm uninstall --user 0 com.opera.preinstall
echo.
echo Qualcomm Voice Assist
adb shell pm uninstall --user 0 com.quicinc.voice.activation
echo.
echo Spotify
adb shell pm uninstall --user 0 com.spotify.music
echo.
echo PUBG MOBILE Gift Box
adb shell pm uninstall --user 0 com.tencent.igxiaomi
echo.

echo Booble shooter
adb shell pm uninstall --user 0 com.soulcompany.bubbleshooter.relaxing
echo.

echo Joyose
adb shell pm uninstall --user 0 com.xiaomi.joyose
echo.
echo Xiaomi Games
adb shell pm uninstall --user 0 com.xiaomi.glgm
echo.
echo Mi Picks (Mi app store)
::adb shell pm uninstall --user 0 com.xiaomi.mipicks
echo.
echo Mi Coin
adb shell pm uninstall --user 0 com.xiaomi.payment
echo.
echo Дзен
adb shell pm uninstall --user 0 com.yandex.zen
echo.
echo Яндекс Браузер
adb shell pm uninstall --user 0 com.yandex.browser
echo.
echo ZenkitPartnerConfig
adb shell pm uninstall --user 0 com.yandex.zenkitpartnerconfig
echo.
echo Яндекс Satellite
adb shell pm uninstall --user 0 com.yandex.preinstallsatellite
echo.
echo ivi
adb shell pm uninstall --user 0 ru.ivi.client
echo.
echo Яндекс
adb shell pm uninstall --user 0 ru.yandex.searchplugin
echo.
echo Яндекс2
adb shell pm uninstall --user 0 com.yandex.searchapp
echo.
echo Яндекс maps
adb shell pm uninstall --user 0 ru.yandex.yandexmaps
echo.
echo Linkedin
adb shell pm uninstall --user 0 com.linkedin.android
echo.
echo Amazon Shopping
adb shell pm uninstall --user 0 com.amazon.mShop.android.shopping
echo.
echo Block Puzzle Guardian
adb shell pm uninstall --user 0 com.block.puzzle.game.hippo.mi
echo.

echo Crazy Juicer
adb shell pm uninstall --user 0 com.crazy.juicer.xm
echo.
echo Snakeio
adb shell pm uninstall --user 0 com.nf.snake
echo.
echo Wordtrip
adb shell pm uninstall --user 0 com.mintgames.wordtrip
echo.


echo Tile Fun
adb shell pm uninstall --user 0 com.mintgames.triplecrush.tile.fun
echo.
echo Bubble Shooter With Friends
adb shell pm uninstall --user 0 com.sukhavati.gotoplaying.bubble.BubbleShooter.mint
echo.
echo Jewels Blast
adb shell pm uninstall --user 0 com.jewelsblast.ivygames.Adventure.free
echo.
echo Dust Settle
adb shell pm uninstall --user 0 com.logame.eliminateintruder3d
echo.
echo State of Survival
adb shell pm uninstall --user 0 com.kingsgroup.ss.xiaomi
echo.
echo Mihome
adb shell pm uninstall --user 0 com.xiaomi.smarthome
echo.


echo Poco Store
adb shell pm uninstall --user 0 com.mi.global.pocostore
echo.
echo Poco Community
adb shell pm uninstall --user 0 com.mi.global.pocobbs
echo.


adb kill-server
echo.

taskkill /F /IM adb.exe /T 2>NUL
pause
