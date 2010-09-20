package jmeetings

import grails.test.*

class ParticipanteTests extends GrailsUnitTestCase {
    protected void setUp() {
        super.setUp()
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testSalvar() {
        Participante participante = new Participante(nome:"Jefferson Moreira",email:"jeffmor@gmail.com",senha:"123");
        participante.save();
        assertEquals "Jefferson Moreira", participante.nome
    }
}
