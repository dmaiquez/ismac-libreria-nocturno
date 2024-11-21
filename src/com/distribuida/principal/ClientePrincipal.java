package com.distribuida.principal;

import com.distribuida.entities.Cliente;

public class ClientePrincipal {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Cliente cliente = new Cliente(1,"1701234567","Juan","Taipe","Av. por ahi y mas alla.","0987654321","jtaipe@correo.com");
		Cliente cliente2 = new Cliente(2,"1701234569","Jhon","Scotch","Av. occidental","0987654344","jscotch@correo.com");
		
		System.out.println(cliente.toString());
		System.out.println(cliente2.toString());
		
	}

}
