ALTER SEQUENCE BATCH_STEP_EXECUTION_SEQ ORDER;
ALTER SEQUENCE BATCH_JOB_EXECUTION_SEQ ORDER;
ALTER SEQUENCE BATCH_JOB_SEQ ORDER;

ALTER TABLE BATCH_STEP_EXECUTION ADD CREATE_TIME TIMESTAMP DEFAULT TO_TIMESTAMP('1970-01-01 00:00:00', 'yyyy-MM-dd HH24:mi:ss') NOT NULL;
ALTER TABLE BATCH_STEP_EXECUTION MODIFY START_TIME TIMESTAMP NULL;

ALTER TABLE BATCH_JOB_EXECUTION_PARAMS DROP COLUMN DATE_VAL;
ALTER TABLE BATCH_JOB_EXECUTION_PARAMS DROP COLUMN LONG_VAL;
ALTER TABLE BATCH_JOB_EXECUTION_PARAMS DROP COLUMN DOUBLE_VAL;

ALTER TABLE BATCH_JOB_EXECUTION_PARAMS MODIFY COLUMN TYPE_CD TYPE VARCHAR(100);
ALTER TABLE BATCH_JOB_EXECUTION_PARAMS MODIFY COLUMN KEY_NAME NAME VARCHAR(100);
ALTER TABLE BATCH_JOB_EXECUTION_PARAMS MODIFY COLUMN STRING_VAL VALUE VARCHAR(2500);