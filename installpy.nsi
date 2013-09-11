!define PRODUCT_NAME "Py Deploy"
!define PRODUCT_VERSION "1.0"
!define PY_VERSION "3.3.2"
 
SetCompressor lzma

; Modern UI installer stuff 
!include "MUI2.nsh"
!define MUI_ABORTWARNING
!define MUI_ICON "${NSISDIR}\Contrib\Graphics\Icons\modern-install.ico"

; UI pages
!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_COMPONENTS
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH
!insertmacro MUI_LANGUAGE "English"
; MUI end ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "PyDeploy.exe"
InstallDir "$PROGRAMFILES\${PRODUCT_NAME}"
ShowInstDetails show

Section -SETTINGS
  SetOutPath "$INSTDIR"
  SetOverwrite ifnewer
SectionEnd

Section "Python ${PY_VERSION}" sec_py
  File "python-${PY_VERSION}.msi"
  ExecWait 'msiexec /i "$INSTDIR\python-${PY_VERSION}.msi" /qb ALLUSERS=1'
  Delete $INSTDIR\python-${PY_VERSION}.msi
SectionEnd

; Functions

Function .onMouseOverSection
    ; Find the section we have moused over, and set the corresponding description.
    FindWindow $R0 "#32770" "" $HWNDPARENT
    GetDlgItem $R0 $R0 1043 ; description item (must be added to the UI)

    StrCmp $0 ${sec_py} 0 +2
      SendMessage $R0 ${WM_SETTEXT} 0 "STR:The Python interpreter. \
            This is required for ${PRODUCT_NAME} to run."

    ;StrCmp $0 1 "" +2
    ;  SendMessage $R0 ${WM_SETTEXT} 0 "STR:second section description"
  FunctionEnd
