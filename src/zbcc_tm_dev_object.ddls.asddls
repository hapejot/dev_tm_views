@AbapCatalog.sqlViewName: 'ZBCCTMDEVOBJECT'
@EndUserText.label: 'Development Object (Consumption)'
define view zbcc_tm_dev_object as select from zbci_tm_dev_object 
 association [0..1] to zbcc_tm_task as _Task on $projection.RequestID = _Task.TaskID
 association [0..1] to zbcc_tm_transport as _Request on $projection.RequestID = _Request.RequestID
{
    key RequestID,    
    key ProgramID,
    key ObjectType,
    key ObjectName,
    key ItemNumber,
    objfunc,
    _Request._OwnerUser.FullName as RequestUserName,
    _Request.RequestStatusName,
    _Request.RequstTypeName,
    _Request.ChangedOn as RequestChangedOn,
    _Task._OwnerUser.FullName as TaskUserName,
    _Task.TaskTypeName,
    _Task.TaskStatusName,
    _Task.ChangedOn as TaskChangedOn,
    
    _Task,
    _Request    
}
