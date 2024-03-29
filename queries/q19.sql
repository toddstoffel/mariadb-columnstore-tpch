select
    sum(l_extendedprice * (1 - l_discount)) as revenue
from
    lineitem,
    part
where
    (
        p_partkey = l_partkey
        and p_brand = 'brand#12'
        and p_container in ('sm case', 'sm box', 'sm pack', 'sm pkg')
        and l_quantity >= 1
        and l_quantity <= 1 + 10
        and p_size between 1
        and 5
        and l_shipmode in ('air', 'air reg')
        and l_shipinstruct = 'deliver in person'
    )
    or (
        p_partkey = l_partkey
        and p_brand = 'brand#23'
        and p_container in ('med bag', 'med box', 'med pkg', 'med pack')
        and l_quantity >= 10
        and l_quantity <= 10 + 10
        and p_size between 1
        and 10
        and l_shipmode in ('air', 'air reg')
        and l_shipinstruct = 'deliver in person'
    )
    or (
        p_partkey = l_partkey
        and p_brand = 'brand#34'
        and p_container in ('lg case', 'lg box', 'lg pack', 'lg pkg')
        and l_quantity >= 20
        and l_quantity <= 20 + 10
        and p_size between 1
        and 15
        and l_shipmode in ('air', 'air reg')
        and l_shipinstruct = 'deliver in person'
    );