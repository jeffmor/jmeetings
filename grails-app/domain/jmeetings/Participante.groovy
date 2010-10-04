package jmeetings

class Participante {

    String nome
    String email
    String senha
    String cpf
    String instituicao
    Date dataNascimento

    static hasOne = [endereco:Endereco]

    static constraints = {
        nome(length:2..50, blank:false)
        email(unique:true,email:true)
        senha(blank:false,password:true)
        cpf(maxSize:11,blank:false)
        instituicao(length:2..100)
        endereco(nullable:true)
    }

    String toString() { nome }
}
