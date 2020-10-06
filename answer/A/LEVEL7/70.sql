select distinct 取.取引事由ID, 取引事由名
from 取引
         full join
     取引事由 取 on 取引.取引事由ID = 取.取引事由ID
order by 取引事由id asc