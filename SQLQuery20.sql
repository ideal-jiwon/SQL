@query03


SELECT STORE.StoreID, STORE.StoreZip, STORE.RegionID
FROM STORE
WHERE STORE.RegionID ='C' OR STORE.RegionID = 'I';