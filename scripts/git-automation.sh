#!/bin/bash

# Git Automation Script for Student Marks Management System
# This script automates version control operations

set -e

DATESTAMP=$(date +%Y%m%d_%H%M%S)
MARKS_FILE="data/student_marks_semester1.csv"
BRANCH_NAME="semester-records"

echo "========================================="
echo "Git Automation for Student Marks Records"
echo "========================================="

# Function to add marks
add_marks() {
    echo "Adding/updating marks file..."
    git add $MARKS_FILE
    git commit -m "Update student marks - $DATETSTAMP" || echo "No changes to commit"
}

# Function to create branch
create_branch() {
    echo "Creating branch: $BRANCH_NAME"
    git checkout -b $BRANCH_NAME 2>/dev/null || echo "Branch already exists"
}

# Function to show git log
show_log() {
    echo "\n=== Git Commit History ==="
    git log --oneline -10
}

# Function to compile with Maven
compile_project() {
    echo "Compiling Maven project..."
    mvn clean compile
}

# Function to run tests
run_tests() {
    echo "Running tests..."
    mvn test
}

# Main execution
case "${1:-log}" in
    add)
        add_marks
        ;;
    branch)
        create_branch
        ;;
    compile)
        compile_project
        ;;
    test)
        run_tests
        ;;
    full)
        add_marks && compile_project && run_tests
        ;;
    log)
        show_log
        ;;
    *)
        echo "Usage: ./git-automation.sh [add|branch|compile|test|full|log]"
        exit 1
        ;;
esac

echo "\nOperation completed successfully!"
