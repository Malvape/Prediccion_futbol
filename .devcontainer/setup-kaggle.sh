#!/bin/bash

# Create the .kaggle directory
mkdir -p /home/vscode/.kaggle

# Add the kaggle.json file with your credentials
cat <<EOF > /home/vscode/.kaggle/kaggle.json
{
  "username": "mauricioalvarezq",
  "key": "0ef9c395468b646e37543e131fd03cb4"
}
EOF

# Set permissions
chmod 600 /home/vscode/.kaggle/kaggle.json
mkdir -p /home/vscode/datasets

# Download the dataset
kaggle datasets download -d martj42/international-football-results-from-1872-to-2017 -p /home/vscode/datasets
kaggle datasets download -d cashncarry/fifa-23-complete-player-dataset -p /home/vscode/datasets

# Unzip the dataset
unzip /home/vscode/datasets/international-football-results-from-1872-to-2017.zip -d /home/vscode/datasets
unzip /home/vscode/datasets/fifa-23-complete-player-dataset.zip -d /home/vscode/datasets