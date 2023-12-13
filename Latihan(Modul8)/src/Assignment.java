/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Harfin aqbil falah
 */
public class Assignment {
    private double mark=-1; 
    Assignment(){ } 
    public double getMark() throws NotYetSetException { 
        if (mark==-1) { 
            throw new 
            NotYetSetException("Mark is not yet set"); 
        } 
        return mark; 
    } 
     public void setMark( int m) { 
        mark=m; 
    } 
}
