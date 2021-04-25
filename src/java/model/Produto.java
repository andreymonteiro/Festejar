
package model;


public class Produto {
    private int idProduto;
    private String nomeprod;
    private Double preco;
    private String descriprod;
    private int contato;
    private String estado;
    private String cidade;
    private int Pessoa_idPessoa;

    public Produto() {
    }

    public int getIdProduto() {
        return idProduto;
    }

    public void setIdProduto(int idProduto) {
        this.idProduto = idProduto;
    }

    public String getNomeprod() {
        return nomeprod;
    }

    public void setNomeprod(String nomeprod) {
        this.nomeprod = nomeprod;
    }

    public Double getPreco() {
        return preco;
    }

    public void setPreco(Double preco) {
        this.preco = preco;
    }

    public String getDescriprod() {
        return descriprod;
    }

    public void setDescriprod(String descriprod) {
        this.descriprod = descriprod;
    }

    public int getContato() {
        return contato;
    }

    public void setContato(int contato) {
        this.contato = contato;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public int getPessoa_idPessoa() {
        return Pessoa_idPessoa;
    }

    public void setPessoa_idPessoa(int Pessoa_idPessoa) {
        this.Pessoa_idPessoa = Pessoa_idPessoa;
    }
}


