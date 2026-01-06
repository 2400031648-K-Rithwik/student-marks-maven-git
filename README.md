# Student Marks Management System - Git & Maven Edition

## Overview
This repository demonstrates a complete Git-based version control system for managing student marks records with Maven build automation. It includes practical examples of POM file structure, Maven lifecycle phases, and repository management.

## Project Structure
```
student-marks-maven-git/
├── pom.xml                              # Maven Project Object Model
├── README.md                            # This file
├── data/
│   └── student_marks_semester1.csv      # Sample student marks data
├── scripts/
│   └── git-automation.sh                # Git automation script
└── src/
    └── main/java/com/studentmarks/
        └── StudentMarks.java            # Core Java class
```

## Part 1: Maven POM File Structure

The `pom.xml` file contains:

### Key Sections:
- **ModelVersion**: POM version (4.0.0)
- **GroupId**: `com.studentmarks` (organization identifier)
- **ArtifactId**: `student-marks-system` (project name)
- **Version**: `1.0.0` (release version)
- **Packaging**: `jar` (output format)

### Dependencies:
- JUnit 4.13.2 (for unit testing)
- Apache Commons CSV 1.9.0 (for CSV processing)

### Build Configuration:
- Maven Compiler Plugin v3.8.1
- Java source/target: 11

## Part 2: Maven Build Lifecycle Phases

Maven has three built-in lifecycles:

### Default Lifecycle (Build Process):
1. **validate** - Check project correctness
2. **compile** - Compile source code
3. **test-compile** - Compile test code
4. **test** - Run unit tests
5. **package** - Create JAR/WAR artifact
6. **integration-test** - Run integration tests
7. **verify** - Verify package validity
8. **install** - Install to local repository (~/.m2/repository)
9. **deploy** - Deploy to remote repository

### Clean Lifecycle:
- **pre-clean** - Pre-cleanup tasks
- **clean** - Remove build artifacts
- **post-clean** - Post-cleanup tasks

### Site Lifecycle:
- **pre-site** - Pre-site generation
- **site** - Generate project documentation
- **post-site** - Post-site generation
- **site-deploy** - Deploy site

## Part 3: Repository Types

### Local Repository
- **Location**: `~/.m2/repository` on developer machine
- **Access**: Only by local developer
- **Purpose**: Cache downloaded dependencies; stores locally built artifacts
- **Size**: Grows with dependencies used

### Central Repository
- **Location**: Public Maven Central at repo.maven.apache.org
- **Access**: Everyone (read-only)
- **Purpose**: Primary source for open-source libraries
- **Examples**: Spring, JUnit, Apache Commons

### Remote Repository
- **Location**: Custom server (internal/external)
- **Access**: Configured in pom.xml or settings.xml
- **Purpose**: Share artifacts within organization; deployment target
- **Examples**: Nexus, Artifactory, GitHub Packages

## Part 4: Git Version Control Operations

### Initial Setup:
```bash
git clone https://github.com/2400031648FrontEnd/student-marks-maven-git.git
cd student-marks-maven-git
```

### Using Git Automation Script:
```bash
# Make script executable
chmod +x scripts/git-automation.sh

# Add/update marks
./scripts/git-automation.sh add

# Create semester branch
./scripts/git-automation.sh branch

# Compile project
./scripts/git-automation.sh compile

# Run tests
./scripts/git-automation.sh test

# Full workflow
./scripts/git-automation.sh full

# View commit history
./scripts/git-automation.sh log
```

### Common Git Commands:
```bash
# Check status
git status

# Add files
git add data/

# Commit changes
git commit -m "Update semester 1 marks"

# Push to remote
git push origin main

# Create branch
git checkout -b semester-records

# View logs
git log --oneline
```

## Part 5: Maven Commands

```bash
# Compile
mvn clean compile

# Run tests
mvn test

# Package
mvn package

# Install locally
mvn install

# View dependencies
mvn dependency:tree

# Clean build
mvn clean
```

## Data Format

Student marks are stored in CSV format:
```csv
RollNumber,StudentName,Mathematics,English,Science,History,Geography
CSE001,Rahul Kumar,92,85,89,78,81
```

## StudentMarks Java Class

Features:
- Add marks for subjects
- Retrieve subject-wise marks
- Calculate average marks
- Track last update timestamp

## Workflow Example

1. **Add new student marks** to CSV
2. **Run Git automation script**: `./scripts/git-automation.sh add`
3. **Compile with Maven**: `mvn clean compile`
4. **Run tests**: `mvn test`
5. **Commit to Git**: Changes tracked automatically
6. **Push to remote**: `git push origin main`

## Learning Objectives

This repository teaches:
- Git version control fundamentals
- Maven POM configuration
- Maven build lifecycle
- Repository management (local/central/remote)
- Automation scripting
- Java project structure
- CSV data handling

## Repository Link

**GitHub**: https://github.com/2400031648FrontEnd/student-marks-maven-git

## Author
Created for educational purposes to demonstrate Git + Maven integration

## License
MIT License - Free to use and modify
