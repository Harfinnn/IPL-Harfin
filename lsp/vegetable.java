package lsp;

import java.util.Date;

public class vegetable extends product {
    @Override 
    String getName() { 
        return "Broccoli"; 
    } 
  
    @Override 
    Date getExpiredDate() { 
        return new Date(); 
    } 
}
