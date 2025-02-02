using { managed, cuid } from '@sap/cds/common';
namespace fones;

entity listFones: cuid, managed {
    numero : Integer;
    contato : String(100);
    formatado : String(20)
}

entity contatos: cuid, managed {
    contato : String(100);
    numero : String(30);
    nascimento : Date;
    idade : Integer;
    pessoal : Boolean
}