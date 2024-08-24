/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.IOException;
import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author isharaLakshitha
 */
public class UserTag extends SimpleTagSupport {

    private String id;

    public void setId(String id) {
        this.id = id;
    }

    String getId() {
        return id;
    }

    @Override
    public void doTag() throws JspException, IOException {

        System.out.println("Execute UserTag");

        User user = new User();
        user.setId(this.id);
        
        
        JspContext jspContext = getJspContext();
        jspContext.setAttribute("user"+id,user,
                PageContext.APPLICATION_SCOPE);

        JspFragment jspFragment = getJspBody();
        jspFragment.invoke(jspContext.getOut());
    }

} 
