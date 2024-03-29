@AbapCatalog.sqlViewName: 'ZBCCTMTRANSPORT'
@AbapCatalog.compiler.CompareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'Transport (Consumption)'
define view zbcc_tm_transport as select from zbci_tm_transport {
    key RequestID,
    RequestType,
    _RequestType.Text as RequstTypeName,
    RequestStatus,
    _RequestStatus.Text as RequestStatusName,
    TargetSystem,
    RequestCategory,
    OwnedBy,
    _OwnerUser.FullName as OwnedByName,
    ChangedOn,
    ChangedAt,
    _Text.as4text,
    
    /* Associations */
    _OwnerUser,
    _Task,
    _Text
}
