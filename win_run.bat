@echo off
cd /d "%~dp0"

REM Start Backend
if exist "qr-backend" (
    cd qr-backend
    echo Installing backend dependencies...
    call npm install
    echo Starting backend...
    start cmd /k "npm run dev"
    cd ..
) else (
    echo Error: qr-backend directory not found!
    exit /b 1
)

REM Start Frontend
if exist "qr-frontend" (
    cd qr-frontend
    echo Installing frontend dependencies...
    call npm install
    echo Starting frontend...
    start cmd /k "npm run dev"
) else (
    echo Error: qr-frontend directory not found!
    exit /b 1
)

echo MERN app started successfully!
pause

