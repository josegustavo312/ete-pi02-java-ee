/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projeto.utilitarios;

import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class FormataData
{
    
    // Conversao de datas SQL - String
    
    DateFormat fmt = new SimpleDateFormat("dd-MM-yyyy");
    
    public Date convertDataString(String strData) throws ParseException {
        Date formatodate = new java.sql.Date(fmt.parse(strData).getTime());

        return formatodate;
    }

    public String convertDataDate(Date dtDate) throws ParseException {
        String strData = fmt.format(dtDate);

        return strData;
    } 
    
}
