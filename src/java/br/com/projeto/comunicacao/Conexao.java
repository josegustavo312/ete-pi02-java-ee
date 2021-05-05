package br.com.projeto.comunicacao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {

    String login = "root";
    String senha = "312";
    String driver = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://127.0.0.1:3306/softf5_web";
    private Connection conexao;

    public Connection abrirConexao() {

        try {

            Class.forName(driver);
            //System.out.println("Driver carregado!");

        } catch (ClassNotFoundException ex) {
            //System.out.println("Driver não encontrado! \n" + ex);
        }

        try {

            conexao = DriverManager.getConnection(url, login, senha);
            //System.out.println("Banco conectado!");

        } catch (SQLException e) {
            //System.out.println("Não foi possível conectar o banco!\n" + e);
        }

        return conexao;

    }

    public Connection fecharConexao() {

        try {
            conexao.close();
            //System.out.println("Conexão com o banco encerrada!");

        } catch (SQLException ex) {
            System.out.println("Não foi possível encerrar a conexão!" + ex);
        }

        return conexao;

    }
}
