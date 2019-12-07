; Script generated by the HM NIS Edit Script Wizard.

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "invisibleHandshake"
!define PRODUCT_VERSION "1.0.0"
!define PRODUCT_PUBLISHER "Seia-Soto"
!define PRODUCT_WEB_SITE "https://github.com/Seia-Soto/invisibleHandshake"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\invisibleHandshake.exe"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"

SetCompressor lzma

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "icon.ico"
!define MUI_UNICON "icon.ico"

; Language Selection Dialog Settings
!define MUI_LANGDLL_REGISTRY_ROOT "${PRODUCT_UNINST_ROOT_KEY}"
!define MUI_LANGDLL_REGISTRY_KEY "${PRODUCT_UNINST_KEY}"
!define MUI_LANGDLL_REGISTRY_VALUENAME "NSIS:Language"

; Welcome page
!insertmacro MUI_PAGE_WELCOME
; License page
!define MUI_LICENSEPAGE_CHECKBOX
!insertmacro MUI_PAGE_LICENSE "licenseText.rtf"
; Components page
!insertmacro MUI_PAGE_COMPONENTS
; Directory page
!insertmacro MUI_PAGE_DIRECTORY
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
!define MUI_FINISHPAGE_RUN "$INSTDIR\invisibleHandshake.exe"
!insertmacro MUI_PAGE_FINISH

; Uninstaller pages
!insertmacro MUI_UNPAGE_INSTFILES

; Language files
!insertmacro MUI_LANGUAGE "English"
!insertmacro MUI_LANGUAGE "Korean"

; Reserve files
!insertmacro MUI_RESERVEFILE_INSTALLOPTIONS

; MUI end ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "invisibleHandshake-Setup.exe"
InstallDir "$PROGRAMFILES\invisibleHandshake"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show

Function .onInit
  !insertmacro MUI_LANGDLL_DISPLAY
FunctionEnd

Section "App" SEC01
  SetOutPath "$INSTDIR"
  File "..\invisibleHandshake-win32-ia32\chrome_100_percent.pak"
  File "..\invisibleHandshake-win32-ia32\chrome_200_percent.pak"
  File "..\invisibleHandshake-win32-ia32\d3dcompiler_47.dll"
  File "..\invisibleHandshake-win32-ia32\ffmpeg.dll"
  File "..\invisibleHandshake-win32-ia32\icudtl.dat"
  File "..\invisibleHandshake-win32-ia32\invisibleHandshake.exe"
  CreateDirectory "$SMPROGRAMS\invisibleHandshake"
  CreateShortCut "$SMPROGRAMS\invisibleHandshake\invisibleHandshake.lnk" "$INSTDIR\invisibleHandshake.exe"
  CreateShortCut "$DESKTOP\invisibleHandshake.lnk" "$INSTDIR\invisibleHandshake.exe"
  File "..\invisibleHandshake-win32-ia32\libEGL.dll"
  File "..\invisibleHandshake-win32-ia32\libGLESv2.dll"
  File "..\invisibleHandshake-win32-ia32\LICENSE"
  File "..\invisibleHandshake-win32-ia32\LICENSES.chromium.html"
  SetOutPath "$INSTDIR\locales"
  File "..\invisibleHandshake-win32-ia32\locales\am.pak"
  File "..\invisibleHandshake-win32-ia32\locales\ar.pak"
  File "..\invisibleHandshake-win32-ia32\locales\bg.pak"
  File "..\invisibleHandshake-win32-ia32\locales\bn.pak"
  File "..\invisibleHandshake-win32-ia32\locales\ca.pak"
  File "..\invisibleHandshake-win32-ia32\locales\cs.pak"
  File "..\invisibleHandshake-win32-ia32\locales\da.pak"
  File "..\invisibleHandshake-win32-ia32\locales\de.pak"
  File "..\invisibleHandshake-win32-ia32\locales\el.pak"
  File "..\invisibleHandshake-win32-ia32\locales\en-GB.pak"
  File "..\invisibleHandshake-win32-ia32\locales\en-US.pak"
  File "..\invisibleHandshake-win32-ia32\locales\es-419.pak"
  File "..\invisibleHandshake-win32-ia32\locales\es.pak"
  File "..\invisibleHandshake-win32-ia32\locales\et.pak"
  File "..\invisibleHandshake-win32-ia32\locales\fa.pak"
  File "..\invisibleHandshake-win32-ia32\locales\fi.pak"
  File "..\invisibleHandshake-win32-ia32\locales\fil.pak"
  File "..\invisibleHandshake-win32-ia32\locales\fr.pak"
  File "..\invisibleHandshake-win32-ia32\locales\gu.pak"
  File "..\invisibleHandshake-win32-ia32\locales\he.pak"
  File "..\invisibleHandshake-win32-ia32\locales\hi.pak"
  File "..\invisibleHandshake-win32-ia32\locales\hr.pak"
  File "..\invisibleHandshake-win32-ia32\locales\hu.pak"
  File "..\invisibleHandshake-win32-ia32\locales\id.pak"
  File "..\invisibleHandshake-win32-ia32\locales\it.pak"
  File "..\invisibleHandshake-win32-ia32\locales\ja.pak"
  File "..\invisibleHandshake-win32-ia32\locales\kn.pak"
  File "..\invisibleHandshake-win32-ia32\locales\ko.pak"
  File "..\invisibleHandshake-win32-ia32\locales\lt.pak"
  File "..\invisibleHandshake-win32-ia32\locales\lv.pak"
  File "..\invisibleHandshake-win32-ia32\locales\ml.pak"
  File "..\invisibleHandshake-win32-ia32\locales\mr.pak"
  File "..\invisibleHandshake-win32-ia32\locales\ms.pak"
  File "..\invisibleHandshake-win32-ia32\locales\nb.pak"
  File "..\invisibleHandshake-win32-ia32\locales\nl.pak"
  File "..\invisibleHandshake-win32-ia32\locales\pl.pak"
  File "..\invisibleHandshake-win32-ia32\locales\pt-BR.pak"
  File "..\invisibleHandshake-win32-ia32\locales\pt-PT.pak"
  File "..\invisibleHandshake-win32-ia32\locales\ro.pak"
  File "..\invisibleHandshake-win32-ia32\locales\ru.pak"
  File "..\invisibleHandshake-win32-ia32\locales\sk.pak"
  File "..\invisibleHandshake-win32-ia32\locales\sl.pak"
  File "..\invisibleHandshake-win32-ia32\locales\sr.pak"
  File "..\invisibleHandshake-win32-ia32\locales\sv.pak"
  File "..\invisibleHandshake-win32-ia32\locales\sw.pak"
  File "..\invisibleHandshake-win32-ia32\locales\ta.pak"
  File "..\invisibleHandshake-win32-ia32\locales\te.pak"
  File "..\invisibleHandshake-win32-ia32\locales\th.pak"
  File "..\invisibleHandshake-win32-ia32\locales\tr.pak"
  File "..\invisibleHandshake-win32-ia32\locales\uk.pak"
  File "..\invisibleHandshake-win32-ia32\locales\vi.pak"
  File "..\invisibleHandshake-win32-ia32\locales\zh-CN.pak"
  File "..\invisibleHandshake-win32-ia32\locales\zh-TW.pak"
  SetOutPath "$INSTDIR"
  File "..\invisibleHandshake-win32-ia32\natives_blob.bin"
  File "..\invisibleHandshake-win32-ia32\osmesa.dll"
  SetOutPath "$INSTDIR\resources"
  File "..\invisibleHandshake-win32-ia32\resources\app.asar"
  File "..\invisibleHandshake-win32-ia32\resources\electron.asar"
  SetOutPath "$INSTDIR"
  File "..\invisibleHandshake-win32-ia32\resources.pak"
  File "..\invisibleHandshake-win32-ia32\snapshot_blob.bin"
  SetOutPath "$INSTDIR\swiftshader"
  File "..\invisibleHandshake-win32-ia32\swiftshader\libEGL.dll"
  File "..\invisibleHandshake-win32-ia32\swiftshader\libGLESv2.dll"
  SetOutPath "$INSTDIR"
  File "..\invisibleHandshake-win32-ia32\v8_context_snapshot.bin"
  File "..\invisibleHandshake-win32-ia32\version"
  File "..\invisibleHandshake-win32-ia32\VkICD_mock_icd.dll"
SectionEnd

Section -AdditionalIcons
  WriteIniStr "$INSTDIR\${PRODUCT_NAME}.url" "InternetShortcut" "URL" "${PRODUCT_WEB_SITE}"
  CreateShortCut "$SMPROGRAMS\invisibleHandshake\Website.lnk" "$INSTDIR\${PRODUCT_NAME}.url"
  CreateShortCut "$SMPROGRAMS\invisibleHandshake\Uninstall.lnk" "$INSTDIR\uninst.exe"
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\invisibleHandshake.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\invisibleHandshake.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "URLInfoAbout" "${PRODUCT_WEB_SITE}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
SectionEnd

; Section descriptions
!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC01} "The core files of application."
!insertmacro MUI_FUNCTION_DESCRIPTION_END


Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "Removed Seia-Soto/invisibleHandshake from your system, if you're running the application while the uninstaller running, the core files might not be deleted."
FunctionEnd

Function un.onInit
!insertmacro MUI_UNGETLANGUAGE
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "Seia-Soto/invisibleHandshake will be removed from your system." IDYES +2
  Abort
FunctionEnd

Section Uninstall
  Delete "$INSTDIR\${PRODUCT_NAME}.url"
  Delete "$INSTDIR\uninst.exe"
  Delete "$INSTDIR\VkICD_mock_icd.dll"
  Delete "$INSTDIR\version"
  Delete "$INSTDIR\v8_context_snapshot.bin"
  Delete "$INSTDIR\swiftshader\libGLESv2.dll"
  Delete "$INSTDIR\swiftshader\libEGL.dll"
  Delete "$INSTDIR\snapshot_blob.bin"
  Delete "$INSTDIR\resources.pak"
  Delete "$INSTDIR\resources\electron.asar"
  Delete "$INSTDIR\resources\app.asar"
  Delete "$INSTDIR\osmesa.dll"
  Delete "$INSTDIR\natives_blob.bin"
  Delete "$INSTDIR\locales\zh-TW.pak"
  Delete "$INSTDIR\locales\zh-CN.pak"
  Delete "$INSTDIR\locales\vi.pak"
  Delete "$INSTDIR\locales\uk.pak"
  Delete "$INSTDIR\locales\tr.pak"
  Delete "$INSTDIR\locales\th.pak"
  Delete "$INSTDIR\locales\te.pak"
  Delete "$INSTDIR\locales\ta.pak"
  Delete "$INSTDIR\locales\sw.pak"
  Delete "$INSTDIR\locales\sv.pak"
  Delete "$INSTDIR\locales\sr.pak"
  Delete "$INSTDIR\locales\sl.pak"
  Delete "$INSTDIR\locales\sk.pak"
  Delete "$INSTDIR\locales\ru.pak"
  Delete "$INSTDIR\locales\ro.pak"
  Delete "$INSTDIR\locales\pt-PT.pak"
  Delete "$INSTDIR\locales\pt-BR.pak"
  Delete "$INSTDIR\locales\pl.pak"
  Delete "$INSTDIR\locales\nl.pak"
  Delete "$INSTDIR\locales\nb.pak"
  Delete "$INSTDIR\locales\ms.pak"
  Delete "$INSTDIR\locales\mr.pak"
  Delete "$INSTDIR\locales\ml.pak"
  Delete "$INSTDIR\locales\lv.pak"
  Delete "$INSTDIR\locales\lt.pak"
  Delete "$INSTDIR\locales\ko.pak"
  Delete "$INSTDIR\locales\kn.pak"
  Delete "$INSTDIR\locales\ja.pak"
  Delete "$INSTDIR\locales\it.pak"
  Delete "$INSTDIR\locales\id.pak"
  Delete "$INSTDIR\locales\hu.pak"
  Delete "$INSTDIR\locales\hr.pak"
  Delete "$INSTDIR\locales\hi.pak"
  Delete "$INSTDIR\locales\he.pak"
  Delete "$INSTDIR\locales\gu.pak"
  Delete "$INSTDIR\locales\fr.pak"
  Delete "$INSTDIR\locales\fil.pak"
  Delete "$INSTDIR\locales\fi.pak"
  Delete "$INSTDIR\locales\fa.pak"
  Delete "$INSTDIR\locales\et.pak"
  Delete "$INSTDIR\locales\es.pak"
  Delete "$INSTDIR\locales\es-419.pak"
  Delete "$INSTDIR\locales\en-US.pak"
  Delete "$INSTDIR\locales\en-GB.pak"
  Delete "$INSTDIR\locales\el.pak"
  Delete "$INSTDIR\locales\de.pak"
  Delete "$INSTDIR\locales\da.pak"
  Delete "$INSTDIR\locales\cs.pak"
  Delete "$INSTDIR\locales\ca.pak"
  Delete "$INSTDIR\locales\bn.pak"
  Delete "$INSTDIR\locales\bg.pak"
  Delete "$INSTDIR\locales\ar.pak"
  Delete "$INSTDIR\locales\am.pak"
  Delete "$INSTDIR\LICENSES.chromium.html"
  Delete "$INSTDIR\LICENSE"
  Delete "$INSTDIR\libGLESv2.dll"
  Delete "$INSTDIR\libEGL.dll"
  Delete "$INSTDIR\invisibleHandshake.exe"
  Delete "$INSTDIR\icudtl.dat"
  Delete "$INSTDIR\ffmpeg.dll"
  Delete "$INSTDIR\d3dcompiler_47.dll"
  Delete "$INSTDIR\chrome_200_percent.pak"
  Delete "$INSTDIR\chrome_100_percent.pak"

  Delete "$SMPROGRAMS\invisibleHandshake\Uninstall.lnk"
  Delete "$SMPROGRAMS\invisibleHandshake\Website.lnk"
  Delete "$DESKTOP\invisibleHandshake.lnk"
  Delete "$SMPROGRAMS\invisibleHandshake\invisibleHandshake.lnk"

  RMDir "$SMPROGRAMS\invisibleHandshake"
  RMDir "$INSTDIR\swiftshader"
  RMDir "$INSTDIR\resources"
  RMDir "$INSTDIR\locales"
  RMDir "$INSTDIR"

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true
SectionEnd