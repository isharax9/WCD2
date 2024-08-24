/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.IOException;
import java.io.StringWriter;
import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author isharaLakshitha
 */
public class NameTag extends SimpleTagSupport {

    @Override
    public void doTag() throws JspException, IOException {

        System.out.println("Execute NameTag");
        //JspTag jspTag = getParent();
        UserTag userTag = (UserTag) getParent();
        
        JspContext jspContext = getJspContext();
        
        User user = (User) jspContext.getAttribute(
                "user" + userTag.getId(),
                PageContext.APPLICATION_SCOPE
        );
        
        JspFragment jspFragment =getJspBody();
        StringWriter stringWriter = new StringWriter();
        jspFragment.invoke(stringWriter);
        
        user.setName(stringWriter.toString());
    }

}
