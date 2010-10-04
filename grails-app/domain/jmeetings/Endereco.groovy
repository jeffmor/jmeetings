package jmeetings

class Endereco {

    String logradouro
    String cidade
    Integer numero

    static belongsTo = [participante:Participante]

    static constraints = {
        participante(nullable:true)
    }
    
    String toString() { "${logradouro}, ${numero}, ${cidade}" }
}
