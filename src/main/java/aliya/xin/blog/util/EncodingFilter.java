package aliya.xin.blog.util;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

/**
 * Created by zhenya.1291813139.com
 * on 2017/7/1.
 * blog.
 */
@WebFilter(urlPatterns = "/*")
public class EncodingFilter implements Filter{
    private static final String CODE = "UTF-8";
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        request.setCharacterEncoding(CODE);
        response.setCharacterEncoding(CODE);
        chain.doFilter(request,response);
    }

    @Override
    public void destroy() {

    }
}
