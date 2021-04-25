package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Avaliacao;
import model.Pessoa;
import model.Produto;

public class AvaliacaoDAO {

    private Conexao conBD = null;

    //Declaração do método construtor
    public AvaliacaoDAO() {
        conBD = new Conexao();
    }

    public int adicionar(Avaliacao a) {
        try {

            String sql = "insert into avaliacao(Produto_idProduto, comentario, Pessoa_idPessoa) values (?,?,?)";

            //PreparedStatement ps = conBD.abrirConexao().prepareStatement(sql);
            PreparedStatement ps = conBD.abrirConexao().prepareStatement(sql);
            ps.setInt(1, a.getProduto_idProduto());
            ps.setString(2, a.getComentario());
            ps.setInt(3, a.getPessoa_idPessoa());

            ps.executeUpdate();
            ps.close();
            conBD.fecharConexao();

            return 1;
        } catch (SQLException ex) {
            Logger.getLogger(AvaliacaoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;

    }

    public List<Avaliacao> listarComentariosPorProduto(int idproduto) {
        try {
            String sql = "select * from avaliacao a, pessoa p where a.Produto_idProduto= ? and p.idpessoa = a.Pessoa_idPessoa ORDER BY  idAvaliacao  DESC";
            PreparedStatement ps = conBD.abrirConexao().prepareStatement(sql);
            ps.setInt(1, idproduto);
            ResultSet rs = ps.executeQuery();

            List<Avaliacao> avalist = new ArrayList();

            while (rs.next()) {
                Avaliacao a = new Avaliacao();
                a.setIdAvaliacao(rs.getInt("idAvaliacao"));
                a.setComentario(rs.getString("comentario"));
                a.setPessoa_idPessoa(rs.getInt("Pessoa_idPessoa"));
                a.setAutor(rs.getString("nomecompleto"));
                avalist.add(a);
            }

            ps.close();
            rs.close();
            conBD.fecharConexao();

            return avalist;

        } catch (SQLException ex) {
            Logger.getLogger(AvaliacaoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }
}
