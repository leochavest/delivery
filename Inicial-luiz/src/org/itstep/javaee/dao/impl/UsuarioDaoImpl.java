package org.itstep.javaee.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.itstep.javaee.dao.DBConnect;
import org.itstep.javaee.dao.UsuarioDao;
import org.itstep.javaee.dao.exception.DaoException;
import org.itstep.javaee.model.Usuario;

public class UsuarioDaoImpl implements UsuarioDao {

	@Override
	public Usuario create(Usuario usuario) throws DaoException {
		Connection conexaoBD = DBConnect.getConnection();
		String comandoSql = "insert into usuario (nome, cpf) values (?, ?)";
		try {
			PreparedStatement comandoJdbc = conexaoBD.prepareStatement(comandoSql);
			comandoJdbc.setString(1, usuario.getNome());
			comandoJdbc.setString(2, usuario.getCpf());
			comandoJdbc.setString(3, usuario.getEndereco());
			comandoJdbc.setString(4, usuario.getTelefone());
			comandoJdbc.setString(5, usuario.getPedido());
			comandoJdbc.executeUpdate();
		} catch (SQLException e) {
			throw new DaoException("Inclus�o do Usu�rio falhou.", e);
		} finally {
			try {
				conexaoBD.close();
			} catch (SQLException e) {
				throw new DaoException("Close da conex�o com o banco de dados falhou.", e);
			}
		}
		return usuario;
	}

	@Override
	public List<Usuario> findByAll() throws DaoException {
		Connection conexaoBD = DBConnect.getConnection();
		String comandoSql = "select nome, cpf from usuario";
		List<Usuario> usuarios = new ArrayList<Usuario>();
		try {
			Statement comandoJdbc = conexaoBD.createStatement(ResultSet.TYPE_FORWARD_ONLY, ResultSet.CONCUR_READ_ONLY);
			ResultSet rs = comandoJdbc.executeQuery(comandoSql);
			while (rs.next()) {
				usuarios.add(new Usuario(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5)));
			}
		} catch (SQLException e) {
			throw new DaoException("Leitura do usu�rios falhou.", e);
		} finally {
			try {
				conexaoBD.close();
			} catch (SQLException e) {
				throw new DaoException("Close da conex�o com o banco de dados falhou.", e);
			}
		}
		return usuarios;
	}

	
}
