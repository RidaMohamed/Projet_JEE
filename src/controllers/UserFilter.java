package controllers;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * The type User filter.
 */
public class UserFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;
        HttpSession session = request.getSession(true);
        String log= (String) session.getAttribute("admin");

        System.out.println(log);

        if(log != null) {

            if (log.equals("false")) {
                chain.doFilter(req, resp);
            } else {
                response.sendRedirect(request.getContextPath() + "/login");
            }
        }
        else{
            response.sendRedirect(request.getContextPath() + "/login");
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
