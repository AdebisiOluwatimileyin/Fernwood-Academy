#!/bin/bash

# ==========================================
# Week 2 Assignment 1 — System Report
# Author: iamgracefund
# Fernwood Academy
# ==========================================

echo "========================================="
echo "         SYSTEM REPORT"
echo "   Generated: $(date)"
echo "   Server: $(hostname)"
echo "========================================="

# Section 1 — Top 5 CPU processes
echo ""
echo "─────────────────────────────────────────"
echo "   TOP 5 CPU-CONSUMING PROCESSES"
echo "─────────────────────────────────────────"
ps aux --sort=-%cpu | head -6

# Section 2 — Disk usage
echo ""
echo "─────────────────────────────────────────"
echo "   DISK USAGE OF ALL PARTITIONS"
echo "─────────────────────────────────────────"
df -h

# Section 3 — Memory usage
echo ""
echo "─────────────────────────────────────────"
echo "   MEMORY USAGE"
echo "─────────────────────────────────────────"
free -h

# Section 4 — Uptime and load
echo ""
echo "─────────────────────────────────────────"
echo "   SYSTEM UPTIME AND LOAD AVERAGES"
echo "─────────────────────────────────────────"
uptime

echo ""
echo "========================================="
echo "         END OF SYSTEM REPORT"
echo "========================================="
