CREATE TABLE IF NOT EXISTS proyecto_bases2.pedidos_por_cliente (
    codigo_cliente uuid,
    pedido_id uuid,
    descuento_aplicado decimal,
    fecha_pedido timestamp,
    tipo_cliente text,
    total_pedido decimal,
    detalles list<frozen<tuple<uuid, text, text, text, text, decimal, int, decimal>>>,
    PRIMARY KEY (codigo_cliente, pedido_id)
) WITH ID = 269f7910-81d4-11ef-8f23-579b00431637
    AND CLUSTERING ORDER BY (pedido_id DESC)
    AND additional_write_policy = '99p'
    AND allow_auto_snapshot = true
    AND bloom_filter_fp_chance = 0.01
    AND caching = {'keys': 'ALL', 'rows_per_partition': 'NONE'}
    AND cdc = false
    AND comment = ''
    AND compaction = {'class': 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy', 'max_threshold': '32', 'min_threshold': '4'}
    AND compression = {'chunk_length_in_kb': '16', 'class': 'org.apache.cassandra.io.compress.LZ4Compressor'}
    AND memtable = 'default'
    AND crc_check_chance = 1.0
    AND default_time_to_live = 0
    AND extensions = {}
    AND gc_grace_seconds = 864000
    AND incremental_backups = true
    AND max_index_interval = 2048
    AND memtable_flush_period_in_ms = 0
    AND min_index_interval = 128
    AND read_repair = 'BLOCKING'
    AND speculative_retry = '99p';
