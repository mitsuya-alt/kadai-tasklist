package servlet;

import java.io.IOException;
import java.sql.Timestamp;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Task;
import utils.DBUtil;

/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/Update")
public class UpdateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String token = request.getParameter("token");
        if(token!=null && request.getSession().getId().equals(token)){
            EntityManager em = DBUtil.createEntityManager();
            Task t = em.find(Task.class,(Integer)request.getSession().getAttribute("task_id"));
            t.setContent(request.getParameter("content"));
            Timestamp currentTime = new Timestamp(System.currentTimeMillis());
            t.setUpdated_at(currentTime);
            em.getTransaction().begin();
            em.getTransaction().commit();
            em.close();
            request.getSession().removeAttribute("task_id");
            response.sendRedirect(request.getContextPath() + "/Index");
        }
    }

}
