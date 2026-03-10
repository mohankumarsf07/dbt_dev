
{{
    config(
        materialized='table'
    )
}}



select * from BANKING.BANK_SCH.EMP 
intersect
select * from BANKING.BANK_SCH.emp


