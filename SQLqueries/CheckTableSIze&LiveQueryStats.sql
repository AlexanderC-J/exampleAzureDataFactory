set statistics time on

select * from ALIGNE.cpty
select * from ALIGNE.cpty order by CPTY_AGEN


EXEC sp_spaceused N'GLEIF.LEI-CDFv3.1';

EXEC sp_spaceused;

;with cte as ( SELECT t.name as TableName, SUM (s.used_page_count) as used_pages_count, SUM (CASE WHEN (i.index_id < 2) THEN (in_row_data_page_count + lob_used_page_count + row_overflow_used_page_count) ELSE lob_used_page_count + row_overflow_used_page_count END) as pages FROM sys.dm_db_partition_stats AS s JOIN sys.tables AS t ON s.object_id = t.object_id JOIN sys.indexes AS i ON i.[object_id] = t.[object_id] AND s.index_id = i.index_id GROUP BY t.name ) ,cte2 as(select cte.TableName, (cte.pages * 8.) as TableSizeInKB, ((CASE WHEN cte.used_pages_count > cte.pages THEN cte.used_pages_count - cte.pages ELSE 0 END) * 8.) as IndexSizeInKB from cte ) select TableName,TableSizeInKB,IndexSizeInKB, case when (TableSizeInKB+IndexSizeInKB)>1024*1024 then cast((TableSizeInKB+IndexSizeInKB)/1024*1024 as varchar)+'GB' when (TableSizeInKB+IndexSizeInKB)>1024 then cast((TableSizeInKB+IndexSizeInKB)/1024 as varchar)+'MB' else cast((TableSizeInKB+IndexSizeInKB) as varchar)+'KB' end [TableSizeIn+IndexSizeIn] from cte2 order by 2 desc 


