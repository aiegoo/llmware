#!/bin/bash

# Step 1: Launch Anaconda Navigator
echo "Launching Anaconda Navigator..."
anaconda-navigator &

# Wait for Navigator to launch (adjust sleep time as needed)
sleep 30

# Step 2: Launch Anaconda Prompt shell
echo "Launching Anaconda PowerShell Prompt shell..."
start cmd.exe /k "cd /d C:\Users\hsyyu & conda.bat activate 'C:\Users\hsyyu\anaconda3'"

# Wait for Anaconda PowerShell Prompt shell to open
sleep 10

# Navigate to the project folder (if needed)
echo "Navigating to project folder..."
cd /d repos/uconcreative/accent-coach/llmware

# Step 3: Start Jupyter Notebook in the Anaconda PowerShell Prompt shell
echo "Starting Jupyter Notebook..."
cmd.exe /c "nohup jupyter notebook &"

# Note: The Anaconda PowerShell Prompt shell will remain open after Jupyter Notebook is started

