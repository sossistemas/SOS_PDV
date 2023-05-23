/* Insere campo TROCO_MAXIMO na tabela config */
SET TERM ^;
execute block
as
begin
  if (NOT EXISTS(SELECT 1 FROM rdb$relation_fields rf WHERE rf.rdb$relation_name = 'CONFIG' AND rf.rdb$field_name = 'TROCO_MAXIMO')) then
    EXECUTE STATEMENT 'ALTER TABLE CONFIG ADD TROCO_MAXIMO NUMERIC(15,2);';
end^

COMMIT WORK ^

SET TERM ; ^