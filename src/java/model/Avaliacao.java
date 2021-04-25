
package model;


public class Avaliacao {
    private int idAvaliacao;
    private String comentario;
    private String autor;
    private int Pessoa_idPessoa;
    private int Produto_idProduto;

    public Avaliacao() {
    }

    
    
    public int getIdAvaliacao() {
        return idAvaliacao;
    }

    public void setIdAvaliacao(int idAvaliacao) {
        this.idAvaliacao = idAvaliacao;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    public int getPessoa_idPessoa() {
        return Pessoa_idPessoa;
    }

    public void setPessoa_idPessoa(int Pessoa_idPessoa) {
        this.Pessoa_idPessoa = Pessoa_idPessoa;
    }

    public int getProduto_idProduto() {
        return Produto_idProduto;
    }

    public void setProduto_idProduto(int Produto_idProduto) {
        this.Produto_idProduto = Produto_idProduto;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }
    
}