@echo off
echo === Soundisle update repo push ===
cd /d D:\Soudisle_update_repo
git -c http.version=HTTP/1.1 push origin main
if errorlevel 1 (
  echo.
  echo Push failed, retrying once...
  git push origin main
)
echo.
echo === Done. If a login window appeared, sign in once, then run this again. ===
pause
