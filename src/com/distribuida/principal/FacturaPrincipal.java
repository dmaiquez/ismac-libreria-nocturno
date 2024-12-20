package com.distribuida.principal;

import java.util.Date;

import com.distribuida.entities.Cliente;
import com.distribuida.entities.Factura;

public class FacturaPrincipal {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
			
		Cliente cliente = new Cliente(1,"1701234567","Juan","Taipe","Av. por ahi y mas alla.","0987654321","jtaipe@correo.com");
		Cliente cliente2 = new Cliente(2,"1701234569","Jhon","Scotch","Av. occidental","0987654344","jscotch@correo.com");
		
		Factura factura = new Factura();
		
		factura.setIdFactura(1);
		factura.setFecha(new Date());
		factura.setNumFactura("FAC-0001");
		factura.setTotalNeto(100.50);
		factura.setIva(15.32);
		factura.setTotal(115.63);
		
		factura.setCliente(cliente);
		
		System.out.println(factura.toString());
		
		
		
	}

}
