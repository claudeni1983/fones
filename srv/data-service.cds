using { fones as my } from '../db/data-model';

service CatalogService @(path: '/srv') {
/*
    entity listfones @(restrict: [
        {
            grant : [ 'READ' ],
            to : [ 'ListFonesViewer' ]
        },
        {
            grant : [ '*' ],
            to : [ 'ListFonesManager' ]
        }
    ]) as projection on my.listFones;
*/
    entity listfones as projection on my.listFones;

    entity contatos as projection on my.contatos;    

}