package aliya.xin.blog.util;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by zhenya.1291813139.com
 * on 2017/7/1.
 * blog.
 */
public class Error {
    public static void showError(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("message", "出了一点问题");
        try {
            request.getRequestDispatcher("default.jsp").forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
}
