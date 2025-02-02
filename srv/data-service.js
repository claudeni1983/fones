const cds = require('@sap/cds');

module.exports = cds.service.impl(async function(){

    const { contatos } = this.entities;

    const lista = Array.isArray(contatos) ? contatos : [contatos];

    this.after("READ", lista, (data) => {

        data.forEach(element => {

            const hoje = new Date().toString().split(' ');
            const nasc = new Date(element.nascimento).toString().split(' ');

            element.idade = ( hoje[3] - nasc[3] ) - 1;
        });        

    });


});