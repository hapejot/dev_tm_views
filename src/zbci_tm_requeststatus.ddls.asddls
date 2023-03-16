@AbapCatalog.sqlViewName: 'zbcitmreqstatus'
@AbapCatalog.compiler.CompareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Request Status'
define view zbci_tm_requeststatus as select from dd07t as t
{
    key t.domvalue_l as RequestStatus,
    t.ddtext as Text
}
where t.domname = 'TRSTATUS'
and t.ddlanguage = 'E'
