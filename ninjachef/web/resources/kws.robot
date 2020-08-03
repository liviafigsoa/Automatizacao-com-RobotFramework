***Settings***
Documentation       Aqui teremos todas as palavras chaves do automação dos comportamentos

***Keywords***

Dado que acesso a página principal
    Go To   ${base_url}

Quando submeto o meu email "${email}"
    Input Text      ${CAMPO_EMAIL}   ${email}
    Click Element   ${BOTAO_ENTRAR}

Então devo ser autenticado
    Wait Until Page Contains Element        ${DIV_DASH}

Então devo ver a mensagem "${expect_message}"
     Wait Until Element Contains        ${DIV_ALERT}      ${expect_message} 

#cadastro de pratos

Dado que "${produto}" é um dos meus pratos
    Set Test Variable       ${produto}

Quando faço o cadastro desse item
    Wait Until Element is Visible     ${BOTAO_ADD}     5
    Click Element                     ${BOTAO_ADD}
    
    Choose File             ${CAMPO_IMAGEM}     ${EXECDIR}/resources/images/${produto['img']}

    Input Text              ${CAMPO_NOME}             ${produto['nome']}
    Input Text              ${CAMPO_TIPO}             ${produto['tipo']}
    Input Text              ${CAMPO_PRECO}            ${produto['preco']}
    Click Element           ${BOTAO_CADASTRAR}

Então devo ver esse prato no meu dashboard

    Wait Until Element Contains     ${LISTA_PRODUTOS}      ${produto['nome']}
