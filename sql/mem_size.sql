-- SET SESSION tmp_table_size = 1024 * 1024 * 1024 * 2; 
-- SET SESSION max_heap_table_size = 1024 * 1024 * 1024 * 2;

# Raise max size to 4GB
SET max_heap_table_size = 1024 * 1024 * 1024 * 4;

# If already a memory table, the alter will not change anything.
# Only apply the new max size.
ALTER TABLE table_name ENGINE=MEMORY;