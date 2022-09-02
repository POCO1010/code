SELECT
    member_id,
    plan_group_id,
    group_id,
    coupon_id,
    `day`
from
(SELECT
    t1.id member_id,
    t1.plan_group_id plan_group_id,
    t1.group_id group_id,
    t1.coupon_id coupon_id,
    t1.msg_id msg_id,
    t1.day `day`,
    row_number() over(partition by t1.id order By t1.day) row_num
FROM tmp.tmp_complete_user t1) tt
WHERE tt.row_num =1