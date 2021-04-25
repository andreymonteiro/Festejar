package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Pessoa;
import model.Produto;

public class ProdutoDAO {

    private Conexao conBD = null;

    //Declaração do método construtor
    public ProdutoDAO() {
        conBD = new Conexao();
    }

    public int cadastrar(Produto p) {
        try {

            String sql = "insert into produto(nomeprod, preco, descriprod, contato, estado, cidade, Pessoa_idPessoa) values (?,?,?,?,?,?,?)";

            //PreparedStatement ps = conBD.abrirConexao().prepareStatement(sql);
            PreparedStatement ps = conBD.abrirConexao().prepareStatement(sql);
            ps.setString(1, p.getNomeprod());
            ps.setDouble(2, p.getPreco());
            ps.setString(3, p.getDescriprod());
            ps.setInt(4, p.getContato());
            ps.setString(5, p.getEstado());
            ps.setString(6, p.getCidade());
            ps.setInt(7, p.getPessoa_idPessoa());

            ps.executeUpdate();
            ps.close();
            conBD.fecharConexao();

            return 1;
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;

    }

    public List<Produto> listarProdutoPorPessoa(int idProduto) {
        try {
            String sql = "select * from produto where pessoa_idpessoa = ?";
            PreparedStatement ps = conBD.abrirConexao().prepareStatement(sql);
            ps.setInt(1, idProduto);

            ResultSet rs = ps.executeQuery();

            List<Produto> anuncios = new ArrayList();

            while (rs.next()) {
                Produto p = new Produto();
                p.setIdProduto(rs.getInt("idproduto"));
                p.setNomeprod(rs.getString("nomeprod"));
                p.setPreco(rs.getDouble("Preco"));
                p.setDescriprod(rs.getString("descriprod"));
                p.setContato(rs.getInt("contato"));
                p.setEstado(rs.getString("estado"));
                p.setCidade(rs.getString("cidade"));
                p.setPessoa_idPessoa(rs.getInt("pessoa_idPessoa"));
                //item.setImagem(rs.getDouble("imagem"));
                anuncios.add(p);
            }

            ps.close();
            rs.close();
            conBD.fecharConexao();

            return anuncios;

        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }

    public boolean excluir(int idPessoa, int idProduto) {
        try {

            String sql = "DELETE FROM produto WHERE pessoa_idpessoa = ? and idproduto = ?";

            //PreparedStatement ps = conBD.abrirConexao().prepareStatement(sql);
            PreparedStatement ps = conBD.abrirConexao().prepareStatement(sql);
            ps.setInt(1, idPessoa);
            ps.setInt(2, idProduto);

            ps.executeUpdate();
            ps.close();
            conBD.fecharConexao();

            return true;
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public List<Produto> listarTudo() {
        try {
            String sql = "select * from produto ORDER BY idproduto DESC";
            PreparedStatement ps = conBD.abrirConexao().prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            List<Produto> anuncios = new ArrayList();

            while (rs.next()) {
                Produto p = new Produto();
                p.setIdProduto(rs.getInt("idproduto"));
                p.setNomeprod(rs.getString("nomeprod"));
                p.setPreco(rs.getDouble("Preco"));
                p.setDescriprod(rs.getString("descriprod"));
                p.setContato(rs.getInt("contato"));
                p.setEstado(rs.getString("estado"));
                p.setCidade(rs.getString("cidade"));
                p.setPessoa_idPessoa(rs.getInt("pessoa_idPessoa"));
                //item.setImagem(rs.getDouble("imagem"));
                anuncios.add(p);
            }

            ps.close();
            rs.close();
            conBD.fecharConexao();

            return anuncios;

        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }

    public Produto listarProdutoPorId(int IdProduto) {
        try {
            String sql = "select * from produto where idproduto=?";
            PreparedStatement ps = conBD.abrirConexao().prepareStatement(sql);
            ps.setInt(1, IdProduto);
           

            ResultSet rs = ps.executeQuery();

            Produto p = new Produto();

            while (rs.next()) {

                p.setIdProduto(rs.getInt("idproduto"));
                p.setNomeprod(rs.getString("nomeprod"));
                p.setPreco(rs.getDouble("Preco"));
                p.setDescriprod(rs.getString("descriprod"));
                p.setContato(rs.getInt("contato"));
                p.setEstado(rs.getString("estado"));
                p.setCidade(rs.getString("cidade"));
                p.setPessoa_idPessoa(rs.getInt("pessoa_idPessoa"));
                //item.setImagem(rs.getDouble("imagem"));

            }

            ps.close();
            rs.close();
            conBD.fecharConexao();

            return p;

        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }

    public boolean alterar(Produto p) {
        try {
            
            
            String sql = "UPDATE produto SET nomeprod = ?, preco = ?, descriprod = ?, contato = ?, estado = ?, cidade = ? WHERE idproduto = ? and Pessoa_idPessoa = ?";
            //PreparedStatement ps = conBD.abrirConexao().prepareStatement(sql);
            PreparedStatement ps = conBD.abrirConexao().prepareStatement(sql);
            ps.setString(1, p.getNomeprod());
            ps.setDouble(2, p.getPreco());
            ps.setString(3, p.getDescriprod());
            ps.setInt(4, p.getContato());
            ps.setString(5, p.getEstado());
            ps.setString(6, p.getCidade());
            ps.setInt(7, p.getIdProduto());
            ps.setInt(8, p.getPessoa_idPessoa());

            ps.executeUpdate();
            ps.close();
            conBD.fecharConexao();
            
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}
