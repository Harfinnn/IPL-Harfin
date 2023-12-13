/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Harfin aqbil falah
 */
import java.util.Vector; 
import java.util.Enumeration;
public class Course {
    private String title; 
     private Vector courseRecords; 
    Course() { 
        courseRecords=new Vector(); 
    }   
    public String getTitle() {return title;} 
    public void setTitle( String t) {title=t;} 
    public void addCourseRecord(CourseRecord cr) { 
        courseRecords.addElement(cr); 
    } 
    public Enumeration getCourseRecords() { 
        return courseRecords.elements(); 
    } 
    public void printCourseStudents(){ 
    /* 
    */ 
    } 
     public void printBestStudent(){ 
    /* 
    */ 
    } 
    public void printFinalExamStudents(){ 
    /* 
    */ 
    } 
}
