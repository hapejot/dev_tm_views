@AbapCatalog.sqlViewName: 'ZBCITMTRANSPORT'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@AbapCatalog.compiler.CompareFilter: true
@EndUserText.label: 'Dev Transport'
@ClientDependent: false

define view zbci_tm_transport as select from e070
association [0..*] to zbci_tm_task as _Task on $projection.RequestID = _Task.RequestID  
association [0..1] to zbci_tm_user as _OwnerUser on $projection.OwnedBy = _OwnerUser.UserID
association [0..1] to zbci_tm_requesttype as _RequestType on $projection.RequestType = _RequestType.RequestType
association [0..1] to zbci_tm_requeststatus as _RequestStatus on $projection.RequestStatus = _RequestStatus.RequestStatus
association [0..*] to zbci_tm_dev_object as _DevObject on $projection.RequestID = _DevObject.RequestID
association [0..*] to e07t as _Text on $projection.RequestID = _Text.trkorr
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
    _RequestStatus,
    _DevObject,
    _Text
}
where   trfunction <> 'S' // Doku
    and trfunction <> 'R'
    and trfunction <> 'X'
    and trfunction <> 'Q'
