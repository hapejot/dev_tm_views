@AbapCatalog.sqlViewName: 'ZBCITMDEVOBJECT'
@AbapCatalog.compiler.CompareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Development Object'
define view zbci_tm_dev_object as select from e071 as t
association [0..1] to zbci_tm_task as _Task on $projection.RequestID = _Task.TaskID
association [0..1] to zbci_tm_transport as _Request on $projection.RequestID = _Request.RequestID
{
    key t.trkorr as RequestID,
    key t.pgmid as ProgramID,
    key t.object as ObjectType,
    key t.obj_name as ObjectName,
    key t.as4pos as ItemNumber,
    t.objfunc,
    
    _Task,
    _Request
}
