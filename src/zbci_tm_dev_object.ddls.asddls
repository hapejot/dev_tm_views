@AbapCatalog.sqlViewName: 'zbcitmdevobject'
@AbapCatalog.compiler.CompareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Development Object'
define view zbci_tm_dev_object as select from e071 as t
{
    key t.trkorr,
    key t.pgmid,
    key t.object,
    key t.obj_name,
    t.objfunc
}
