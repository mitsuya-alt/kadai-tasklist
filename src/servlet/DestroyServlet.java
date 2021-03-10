package servlet;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Task;
import utils.DBUtil;

/**
 * Servlet implementation class DestroyServlet
 */
@WebServlet("/Destroy")
public class DestroyServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public DestroyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String token = request.getParameter("token");
        if(token.equals(request.getSession().getId()) && token!=null){
            EntityManager em = DBUtil.createEntityManager();
            Task t = em.find(Task.class,(Integer)request.getSession().getAttribute("task_id"));
            em.getTransaction().begin();
            em.remove(t);
            em.getTransaction().commit();
            em.close();
            request.getSession().removeAttribute("task_id");
            response.sendRedirect(request.getContextPath()+ "/Index");
        }
    }

}
