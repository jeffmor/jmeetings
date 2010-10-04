package jmeetings

class Inscricao {

    String observacao
    Date dataEvento
    String comoSoube

    static belongsTo = [participante:Participante]

    static constraints = {
        participante(nullable:true)
    }
}
