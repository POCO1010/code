SELECT
            a.table_catalog as owner,
            a.TABLE_NAME,
            a.TABLE_COMMENT as TAB_COMMENTS,
            b.COLUMN_NAME,
            b.COLUMN_TYPE as DATA_TYPE,
            b.COLUMN_COMMENT as COL_COMMENTS
        FROM
            information_schema.TABLES a
						left join information_schema.COLUMNS b on a.table_name = b.table_name
        -- WHERE a.table_catalog in ('xxx');
        where a.table_name  = 'to_stat_info'