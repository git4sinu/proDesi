package com.desiEngg.webapp;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class MessageFilter implements Filter {

    Log dlogger= LogFactory.getFactory().getInstance(MessageFilter.class);

    public void doFilter(ServletRequest req, ServletResponse res,
                         FilterChain chain)
    throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) req;

        // grab messages from the session and put them into request
        // this is so they're not lost in a redirect
        Object message = request.getSession().getAttribute("message");
        dlogger.info("Inside Message Filter-->"+request.getRequestURI());
        if (!request.getRequestURI().startsWith("/app") && message != null) {
            request.setAttribute("message", message);
            request.getSession().removeAttribute("message");
        }

        chain.doFilter(req, res);
    }

    public void init(FilterConfig filterConfig) {
    }

    public void destroy() {
    }
}
