package jmeetings

class Participante {

    String nome
    String email
    String senha

    static constraints = {
        nome(length:2..50, blank:false)
        email(unique:true,email:true)
        senha(blank:false,password:true)
    }

    String toString() { nome }
}
