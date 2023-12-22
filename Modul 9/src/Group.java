/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Harfin aqbil falah
 */
public class Group {
    public List getUsersSortedByMostRecentlyRegistered() {
        List users = new ArrayList();
        if (!userDirectoryExists())
            return users;
        addFoundUsersTo(users);
        sortByMostRecentlyRegistered(users);
        return users;
    }
