package services;

import java.util.ArrayList;

import model.Funcionario;

public class SFuncionario {
	private ArrayList<Funcionario> arFuncionario;

	public SFuncionario() {
		super();
		arFuncionario = new ArrayList<>();
	}

	public ArrayList<Funcionario> getArFuncionario() {
		return arFuncionario;
	}

	public void setArFuncionario(ArrayList<Funcionario> arFuncionario) {
		this.arFuncionario = arFuncionario;
	}
	
}
