package lsp;

import java.sql.Date;

public class smartphone extends product {

    @Override
    String getName() {
        return "Samsung s10+ Limited Edition";
    }

    @Override 
    Date getExpiredDate() { 
        return new Date(0);
    } 
}