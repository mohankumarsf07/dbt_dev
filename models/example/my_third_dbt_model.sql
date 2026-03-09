
{{
    config(
        materialized='table'
    )
}}



select * from BANKING.BANK_SCH.EMP as e
JOIN 
BANKING.BANK_SCH.users u
on e.id=u.id

