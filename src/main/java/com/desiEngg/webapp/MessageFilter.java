package com.desiEngg.webapp;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.logging.FileHandler;
import java.util.logging.Logger;
import java.util.logging.SimpleFormatter;

public class MessageFilter implements Filter {

    Log dlogger= LogFactory.getFactory().getInstance(MessageFilter.class);
    Logger logger = Logger.getLogger("MessageFilter");
    public void doFilter(ServletRequest req, ServletResponse res,
                         FilterChain chain)
    throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) req;

        // grab messages from the session and put them into request
        // this is so they're not lost in a redirect
        Object message = request.getSession().getAttribute("message");
        dlogger.info("Inside Message Filter-->"+request.getRequestURI());
        if (!request.getRequestURI().startsWith("/desiengg") && message != null) {
            request.setAttribute("message", message);
            request.getSession().removeAttribute("message");
        }
        //recordLogs(request);
        chain.doFilter(req, res);
    }

    private void recordLogs(HttpServletRequest req) {
        FileHandler fh;
        try {
            // This block configure the logger with handler and formatter
            fh = new FileHandler("/usr/local/tomcat/webapps/www.desiengg.com/desiengg/desiengg.log");
            logger.addHandler(fh);
            //logger.setLevel(Level.ALL);
            SimpleFormatter formatter = new SimpleFormatter();
            fh.setFormatter(formatter);
            // the following statement is used to log any messages
            logger.info("Inside Message Filter-->"+req.getRequestURI());

        } catch (SecurityException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }


    public void init(FilterConfig filterConfig) {
    }

    public void destroy() {
    }
}
