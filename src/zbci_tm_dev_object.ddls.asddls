@AbapCatalog.sqlViewName: 'ZBCITMDEVOBJECT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Development Object'
define view zbci_tm_dev_object as select from e071 as t
{
    key t.trkorr as RequestID,
    key t.pgmid as ProgramID,
    key t.object as ObjectType,
    key t.obj_name as ObjectName,
    key t.as4pos as ItemNumber,
    t.objfunc
}
