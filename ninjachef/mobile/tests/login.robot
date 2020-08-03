***Settings***
Documentation       Testes do login no Ninjachef Mobile

Resource    ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

***Test Cases***
Acessar o cardápio
    Dado que desejo comer "Massas"
    Quando submeto o meu email "papito@qaninja.com.br"
    Então devo ver a lista de pratos por tipo

