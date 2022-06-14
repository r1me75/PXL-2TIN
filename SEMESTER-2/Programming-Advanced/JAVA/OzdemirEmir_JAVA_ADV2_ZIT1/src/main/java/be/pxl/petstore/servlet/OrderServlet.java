package be.pxl.petstore.servlet;

import be.pxl.petstore.rest.data.OrderDTO;
import be.pxl.petstore.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {

	@Autowired
	private OrderService orderService;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");

		List<OrderDTO> orders = orderService.getAllOrders();

		try(PrintWriter writer = resp.getWriter()) {
			writeHeader(writer);

			for(OrderDTO order: orders) {
				writerOrderDTO(writer, order);
			}

			writeFooter(writer);
		}
	}

	private void writerOrderDTO(PrintWriter writer, OrderDTO order) {
		writer.println("<hr/>");
		writer.println("<div class=\"row\">");
		writer.println(order.getFullname());
		writer.println("</div>");
		for (String orderLine : order.getLineDetails()) {
			writer.println("<div class=\"row\">");
			writer.println(orderLine);
			writer.println("</div>");
		}
		writer.println("<div class=\"row\">Total:");
		writer.println(order.getTotalPrice());
		writer.println("</div>");
	}

	private void writeHeader(PrintWriter writer) {
		writer.println("<html><head><title>Orders</title></head><body>");
	}


	private void writeFooter(PrintWriter writer) {
		writer.println("</body></html>");
	}

}
