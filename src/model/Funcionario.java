package model;

public class Funcionario extends Entidade {
	private int idFuncionario;

	public Funcionario(int id, String nome, String morada, String codigoPostal, int nIF, int nISS, String contacto,
			String email, String password, String apagado, int idFuncionario) {
		super(id, nome, morada, codigoPostal, nIF, nISS, contacto, email, password, apagado);
		this.idFuncionario = idFuncionario;
	}

	public int getIdFuncionario() {
		return idFuncionario;
	}

	public void setIdFuncionario(int idFuncionario) {
		this.idFuncionario = idFuncionario;
	}
	
}
