@AbapCatalog.sqlViewName: 'Zbcitmuser'
@AbapCatalog.compiler.CompareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'User'
@ClientDependent: false

define view zbci_tm_user as select from 
usr21 join
adrp on usr21.persnumber = adrp.persnumber and usr21.mandt = adrp.client
{
key usr21.bname as UserID,
    usr21.mandt as Client,
    adrp.persnumber as PersonID,
    name_first as FirstName,
    name_last as LastName,
    name_text as FullName
}
where usr21.mandt = '100'
