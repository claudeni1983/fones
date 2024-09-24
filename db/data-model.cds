using { managed, cuid } from '@sap/cds/common';
namespace fones;

entity listFones: cuid, managed {
    numero : Integer;
    contato : String(100);
    formatado : String(20)
}