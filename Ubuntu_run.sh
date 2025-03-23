#!/bin/bash

# Start backend
if [ -d "qr-backend" ]; then
    cd qr-backend || exit
    echo "Installing backend dependencies..."
    npm install
    echo "Starting backend..."
    gnome-terminal -- bash -c "npm run dev; exec bash"
    cd .. # Return to root folder
else
    echo "Error: qr-backend directory not found!"
    exit 1
fi

# Start frontend
if [ -d "qr-frontend" ]; then
    cd qr-frontend || exit
    echo "Installing frontend dependencies..."
    npm install
    echo "Starting frontend..."
    gnome-terminal -- bash -c "npm run dev; exec bash"
else
    echo "Error: qr-frontend directory not found!"
    exit 1
fi

echo "MERN app started successfully!"

