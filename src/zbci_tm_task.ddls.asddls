@AbapCatalog.sqlViewName: 'ZBCITMTASK'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Dev Task'
define view zbci_tm_task as select from e070
association [0..1] to zbci_tm_transport as _Request on $projection.RequestID = _Request.RequestID
association [0..1] to zbci_tm_user as _OwnerUser on $projection.OwnedBy = _OwnerUser.UserID
association [1] to zbci_tm_requesttype as _TaskType on $projection.TaskType = _TaskType.RequestType
association [1] to zbci_tm_requeststatus as _TaskStatus on $projection.TaskSTatus = _TaskStatus.RequestStatus
association [0..*] to zbci_tm_dev_object as _DevObject on $projection.TaskID = _DevObject.RequestID
{
    key trkorr as TaskID,
    strkorr   as RequestID,
    trfunction as TaskType,
    trstatus as TaskSTatus,
    tarsystem as TargetSystem,
    korrdev as TaskCategory,
    as4user as OwnedBy,
    as4date as ChangedOn,
    as4time as ChangedAt,
    
    _Request,
    _OwnerUser,
    _TaskType,
    _TaskStatus,
    _DevObject
}
where  trfunction = 'S' 
    or trfunction = 'R'
    or trfunction = 'X'
    or trfunction = 'Q'
