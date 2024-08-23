package model;

import java.io.IOException;
import java.util.HashMap;
import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author isharaLakshitha
 */
public class CTL1 extends SimpleTagSupport {

    private String var;
    private Object value;
    private String scope;

    private HashMap<String, Integer> scopeMap;

    public CTL1() {
        scopeMap = new HashMap<String, Integer>();
        scopeMap.put(null, PageContext.PAGE_SCOPE);
        scopeMap.put("page", PageContext.PAGE_SCOPE);
        scopeMap.put("request", PageContext.REQUEST_SCOPE);
        scopeMap.put("session", PageContext.SESSION_SCOPE);
        scopeMap.put("application", PageContext.APPLICATION_SCOPE);
    }

    public void setVar(String var) {
        this.var = var;
    }

    public void setValue(Object value) {
        this.value = value;
    }

    public void setScope(String scope) {
        this.scope = scope;
    }

    @Override
    public void doTag() throws JspException, IOException {
        JspContext jspContext = getJspContext();
        jspContext.setAttribute(var, value, scopeMap.get(scope));
    }
}
