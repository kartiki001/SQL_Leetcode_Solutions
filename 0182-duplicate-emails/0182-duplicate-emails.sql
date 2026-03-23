select distinct email Email
from (select *, row_number() over(partition by email) rn
    from Person) as cte
where rn>1;