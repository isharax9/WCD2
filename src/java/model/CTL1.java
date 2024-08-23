package model;

import java.io.IOException;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author isharaLakshitha
 */
public class CTL1 extends SimpleTagSupport {

    private String test;

    public void setTest(String test) {
        this.test = test;
    }

    public String getTest() {
        return test;
    }

    @Override
    public void doTag() throws JspException, IOException {
        try {
            boolean b = Boolean.parseBoolean(test);
            if (b) {
                getJspBody().invoke(getJspContext().getOut());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
