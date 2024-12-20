package com.distribuida.principaldao;

import java.util.Date;
import java.util.List;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.distribuida.dao.ClienteDAO;
import com.distribuida.dao.FacturaDAO;
import com.distribuida.entities.Cliente;
import com.distribuida.entities.Factura;

public class FacturaDAOPrincipal {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		
		FacturaDAO facturaDAO = context.getBean("facturaDAOImpl", FacturaDAO.class);
		ClienteDAO clienteDAO = context.getBean("clienteDAOImpl", ClienteDAO.class);
		
	
		// add
		Cliente cliente = clienteDAO.findOne(1);
		Factura factura = new Factura(0,"FAC-00099",new Date(), 123.23, 12.3, 1141.20,cliente);
		//facturaDAO.add(factura);
		
		
		// up
		Cliente cliente2 = clienteDAO.findOne(2);
		Factura factura2 = new Factura(86,"FAC-00100",new Date(), 240.44, 44.44, 444.44,cliente2);
		//facturaDAO.up(factura2);
		
		// del
		//facturaDAO.del(86);
		
		// findOne
		try {
			System.out.println(facturaDAO.findOne(86));
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		// findAll
		List<Factura> facturas = facturaDAO.findAll();
		
		for (Factura item : facturas) {
			System.out.println(item.toString());
		}
		
		context.close();
		
		
	}

}
