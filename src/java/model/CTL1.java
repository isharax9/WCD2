package model;

import java.io.IOException;
import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author isharaLakshitha
 */
public class CTL1 extends SimpleTagSupport {
    
    private String value;

    public void setValue(String value){
        this.value = value;
    }
    
    
    public String getvalue() {
        return value;
    }
    
    @Override
    public void doTag() throws JspException, IOException {
        JspContext context = getJspContext();
        context.getOut().write(getvalue());
    }

    

}
