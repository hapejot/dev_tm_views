@AbapCatalog.sqlViewName: 'zbcctmtask'
@AbapCatalog.compiler.CompareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Task (Consumption)'
define view zbcc_tm_task as select from zbci_tm_task 
{
key  TaskID,
     RequestID,
     TaskType,
     _TaskType.Text as TaskTypeName,
     TaskSTatus,
     _TaskStatus.Text as TaskStatusName,
     TargetSystem,
     TaskCategory,
     OwnedBy,
     _OwnerUser.FullName as OwnedByName,
     ChangedOn,
     ChangedAt,
    
    _Request,
    _OwnerUser,
    _TaskStatus,
    _TaskType,
    _DevObject
    
}
