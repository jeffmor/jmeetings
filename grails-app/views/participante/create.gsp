
<%@ page import="jmeetings.Participante" %>
<html>
    <head>
        <g:javascript library="application" />
        <modalbox:modalIncludes />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'participante.label', default: 'Participante')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${participanteInstance}">
            <div class="errors">
                <g:renderErrors bean="${participanteInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nome"><g:message code="participante.nome.label" default="Nome" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: participanteInstance, field: 'nome', 'errors')}">
                                    <g:textField name="nome" value="${participanteInstance?.nome}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="email"><g:message code="participante.email.label" default="Email" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: participanteInstance, field: 'email', 'errors')}">
                                    <g:textField name="email" value="${participanteInstance?.email}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="senha"><g:message code="participante.senha.label" default="Senha" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: participanteInstance, field: 'senha', 'errors')}">
                                    <g:passwordField name="senha" value="${participanteInstance?.senha}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="cpf"><g:message code="participante.cpf.label" default="Cpf" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: participanteInstance, field: 'cpf', 'errors')}">
                                    <g:textField name="cpf" maxlength="11" value="${participanteInstance?.cpf}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="instituicao"><g:message code="participante.instituicao.label" default="Instituicao" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: participanteInstance, field: 'instituicao', 'errors')}">
                                    <g:textField name="instituicao" value="${participanteInstance?.instituicao}" />
                                </td>
                            </tr>
                     
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dataNascimento"><g:message code="participante.dataNascimento.label" default="Data Nascimento" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: participanteInstance, field: 'dataNascimento', 'errors')}">
                                    <g:datePicker name="dataNascimento" precision="day" value="${participanteInstance?.dataNascimento}"  />
                                </td>
                            </tr>


                             <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="cidade"><g:message code="endereco.cidade.label" default="Cidade" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: participanteInstance.endereco, field: 'cidade', 'errors')}">
                                    <g:textField name="cidade" value="${enderecoInstance?.cidade}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="logradouro"><g:message code="endereco.logradouro.label" default="Logradouro" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: participanteInstance.endereco, field: 'logradouro', 'errors')}">
                                    <g:textField name="logradouro" value="${enderecoInstance?.logradouro}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="numero"><g:message code="endereco.numero.label" default="Numero" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: participanteInstance.endereco, field: 'numero', 'errors')}">
                                    <g:textField name="numero" value="${fieldValue(bean: enderecoInstance, field: 'numero')}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
