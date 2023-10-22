@AbapCatalog.sqlViewName: 'ZAS_6378_V001'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Örnek'
define view ZASENDUR_6378_CDS_001 
            as select from ekko
            inner join ekpo on ekpo.ebeln  = ekko.ebeln
            inner join mara on mara.matnr  = ekpo.matnr
            inner join makt on makt.matnr  = mara.matnr 
                            and makt.spras = $session.system_language
            inner join lfa1 on lfa1.lifnr  = ekko.lifnr
              
   
{
    ekpo.ebeln,
    ekpo.ebelp,
    ekpo.matnr,
    makt.maktx,
    ekpo.werks,
    ekpo.lgort,
    ekpo.meins,
    lfa1.lifnr,
    lfa1.adrnr,
    cast( concat_with_space( lfa1.stras , lfa1.mcod3, 1 ) as abap.char( 61 )  ) as satici_adresi
    
}
