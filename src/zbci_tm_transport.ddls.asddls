@AbapCatalog.sqlViewName: 'zbcitmtransport'
@AccessControl.authorizationCheck: #CHECK
@AbapCatalog.compiler.CompareFilter: true
@EndUserText.label: 'Dev Transport'
@ClientDependent: false

define view zbci_tm_transport as select from e070
association [0..*] to zbci_tm_task as _Task on $projection.RequestID = _Task.RequestID  
association [0..1] to zbci_tm_user as _OwnerUser on $projection.OwnedBy = _OwnerUser.UserID
association [1] to zbci_tm_requesttype as _RequestType on $projection.RequestType = _RequestType.RequestType
association [1] to zbci_tm_requeststatus as _RequestStatus on $projection.RequestStatus = _RequestStatus.RequestStatus

 {
    key trkorr as RequestID,
    trfunction as RequestType,
    trstatus as RequestStatus,
    tarsystem as TargetSystem,
    korrdev as RequestCategory,
    as4user as OwnedBy,
    as4date as ChangedOn,
    as4time as ChangedAt,
    
    _Task,
    _OwnerUser,
    _RequestType,
    _RequestStatus
}
where   trfunction <> 'S' 
    and trfunction <> 'R'
    and trfunction <> 'X'
    and trfunction <> 'Q'
