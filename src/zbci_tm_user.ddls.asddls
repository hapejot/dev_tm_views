@AbapCatalog.sqlViewName: 'ZBCITMUSER'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AbapCatalog.dataMaintenance: #RESTRICTED
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'User'
@ClientDependent: false

define view zbci_tm_user as select from 
usr21 join
adrp on usr21.persnumber = adrp.persnumber and usr21.mandt = adrp.client
{
key usr21.bname as UserID,
    adrp.persnumber as PersonID,
    adrp.name_first as FirstName,
    adrp.name_last as LastName,
    adrp.name_text as FullName
}
where usr21.mandt = '100'
