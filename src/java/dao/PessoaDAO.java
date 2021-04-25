/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Pessoa;

/**
 *
 * @author Alexandre
 */
public class PessoaDAO {

    private Conexao conBD = null;

    //Declaração do método construtor
    public PessoaDAO() {
        conBD = new Conexao();
    }

    public int cadastrar(Pessoa p) {
        try {

            String sql = "insert into pessoa(nomecompleto, email, senha) values (?,?,?)";

            //PreparedStatement ps = conBD.abrirConexao().prepareStatement(sql);
            PreparedStatement ps = conBD.abrirConexao().prepareStatement(sql);
            ps.setString(1, p.getNome());
            ps.setString(2, p.getEmail());
            ps.setString(3, p.getSenha());

            ps.executeUpdate();
            ps.close();
            conBD.fecharConexao();

            return 1;
        } catch (SQLException ex) {
            Logger.getLogger(PessoaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;

    }
    
    public boolean validarSessao(Pessoa p) throws SQLException {
        try {
            String sql = "SELECT idPessoa, email, senha, nomecompleto FROM pessoa WHERE email = ?";
            PreparedStatement ps = conBD.abrirConexao().prepareStatement(sql);
            ps.setString(1, p.getEmail());

            ResultSet rs = ps.executeQuery();

            String password = null;
            while (rs.next()) {
                p.setId(rs.getInt("idPessoa"));
                p.setNome(rs.getString("nomecompleto"));
                p.setEmail(rs.getString("email"));
                password = (rs.getString("senha"));
            }

            return password != null && password.equals(p.getSenha());

        } catch (SQLException ex) {
            Logger.getLogger(PessoaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return false;

    }
}
