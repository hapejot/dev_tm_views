@AbapCatalog.sqlViewName: 'zbcitmreqtype'
@AbapCatalog.compiler.CompareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Request Type'
define view zbci_tm_requesttype
as select from dd07t as t1
{
    key t1.domvalue_l as RequestType,
    t1.ddtext as Text
}
where t1.domname = 'TRFUNCTION'
and t1.ddlanguage = 'E'
