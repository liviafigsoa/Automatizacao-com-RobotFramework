***Settings***
Documentation   Código base para abrir uma sessão com o Appium Server

Library         AppiumLibrary

Resource        kws.robot


***Keywords***
#Hooks
Open Session
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=Emulator
    ...                 app=${EXECDIR}/app/ninjachef.apk
    ...                 udir=emulator-5554
    ...                 adbExecTimeout=60000

Close Session
    Capture Page Screenshot
    Close Application


