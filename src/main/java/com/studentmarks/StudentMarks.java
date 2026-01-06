package com.studentmarks;

import java.util.*;
import java.io.*;

/**
 * StudentMarks class manages student records with marks
 * Supports add, update, retrieve, and export operations
 * Git version control enables tracking all changes
 */
public class StudentMarks {
    private String rollNumber;
    private String studentName;
    private Map<String, Integer> subjectMarks;
    private LocalDateTime lastUpdated;

    public StudentMarks(String rollNumber, String studentName) {
        this.rollNumber = rollNumber;
        this.studentName = studentName;
        this.subjectMarks = new HashMap<>();
        this.lastUpdated = LocalDateTime.now();
    }

    public void addMarks(String subject, int marks) {
        if (marks >= 0 && marks <= 100) {
            subjectMarks.put(subject, marks);
            this.lastUpdated = LocalDateTime.now();
        }
    }

    public int getMarks(String subject) {
        return subjectMarks.getOrDefault(subject, -1);
    }

    public double getAverageMarks() {
        if (subjectMarks.isEmpty()) return 0;
        return subjectMarks.values().stream()
                .mapToInt(Integer::intValue)
                .average()
                .orElse(0);
    }

    public String toString() {
        return String.format("Roll: %s, Name: %s, Avg: %.2f", 
            rollNumber, studentName, getAverageMarks());
    }
}

import java.time.LocalDateTime;
