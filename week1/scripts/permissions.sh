#!/bin/bash

# ==========================================
# Week 1 Assignment 3 — Permissions Script
# Author: iamgracefund
# Fernwood Academy
# ==========================================

echo "================================="
echo "   PERMISSIONS CHALLENGE SCRIPT"
echo "================================="

# Step 1: Create a new group
echo ""
echo "Creating group fernwood..."
sudo groupadd fernwood 2>/dev/null || echo "Group already exists"

# Step 2: Create a new user
echo "Creating user fernstudent..."
sudo useradd -m -G fernwood fernstudent 2>/dev/null || echo "User already exists"

# Step 3: Create a file only they can read
echo "Creating private file..."
sudo touch /home/fernstudent/private.txt
echo "This file is private to fernstudent only" | sudo tee /home/fernstudent/private.txt

# Step 4: Set permissions
sudo chown fernstudent:fernwood /home/fernstudent/private.txt
sudo chmod 400 /home/fernstudent/private.txt

# Step 5: Verify permissions
echo ""
echo "================================="
echo "   VERIFYING PERMISSIONS"
echo "================================="
ls -l /home/fernstudent/private.txt

echo ""
echo "================================="
echo "Permissions breakdown:"
echo "400 = owner can READ only"
echo "No group access"
echo "No public access"
echo "================================="
