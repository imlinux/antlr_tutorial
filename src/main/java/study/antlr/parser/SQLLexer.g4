lexer grammar SQLLexer;

// Operators
//https://help.aliyun.com/document_detail/27872.html?spm=a2c4g.11186623.2.15.2bca6f41A1SFgS#concept-zxk-v5f-vdb
//https://github.com/mysql/mysql-workbench/blob/8.0/library/parsers/grammars/MySQLLexer.g4

@header {
    package study.antlr.parser;
}

EQUAL_OPERATOR:            '='; // Also assign.
GREATER_OR_EQUAL_OPERATOR: '>=';
GREATER_THAN_OPERATOR:     '>';
LESS_OR_EQUAL_OPERATOR:    '<=';
LESS_THAN_OPERATOR:        '<';
NOT_EQUAL_OPERATOR:        '!=';
NOT_EQUAL2_OPERATOR:       '<>' -> type(NOT_EQUAL_OPERATOR);

PLUS_OPERATOR:  '+';
MINUS_OPERATOR: '-';
MULT_OPERATOR:  '*';
DIV_OPERATOR:   '/';
BACK_TICK:      '`';

MOD_OPERATOR: '%';

LOGICAL_AND_OPERATOR: '&&';
BITWISE_AND_OPERATOR: '&';

DOT_SYMBOL:         '.';
COMMA_SYMBOL:       ',';
SEMICOLON_SYMBOL:   ';';
COLON_SYMBOL:       ':';
OPEN_PAR_SYMBOL:    '(';
CLOSE_PAR_SYMBOL:   ')';
OPEN_CURLY_SYMBOL:  '{';
CLOSE_CURLY_SYMBOL: '}';
UNDERLINE_SYMBOL:   '_';
INNER_SYMBOL: I N N E R;

PARAM_MARKER: '?';

fragment A: [aA];
fragment B: [bB];
fragment C: [cC];
fragment D: [dD];
fragment E: [eE];
fragment F: [fF];
fragment G: [gG];
fragment H: [hH];
fragment I: [iI];
fragment J: [jJ];
fragment K: [kK];
fragment L: [lL];
fragment M: [mM];
fragment N: [nN];
fragment O: [oO];
fragment P: [pP];
fragment Q: [qQ];
fragment R: [rR];
fragment S: [sS];
fragment T: [tT];
fragment U: [uU];
fragment V: [vV];
fragment W: [wW];
fragment X: [xX];
fragment Y: [yY];
fragment Z: [zZ];

fragment DIGIT:    [0-9];
fragment DIGITS:   DIGIT+;
fragment HEXDIGIT: [0-9a-fA-F];

ADD_SYMBOL:                      A D D;
AFTER_SYMBOL:                    A F T E R;
ALL_SYMBOL:                      A L L;
ALTER_SYMBOL:                    A L T E R;
AND_SYMBOL:                      A N D;
ANALYSE_SYMBOL:                  A N A L Y S E;
ARCHIVE_SYMBOL:                  A R C H I V E;
ARRAY_SYMBOL:                    A R R A Y;
AS_SYMBOL:                       A S;
ASC_SYMBOL:                      A S C;

BEFORE_SYMBOL:                   B E F O R E;
BETWEEN_SYMBOL:                  B E T W E E N;
BIGINT_SYMBOL:                   B I G I N T;
BINARY_SYMBOL:                   B I N A R Y;
BLOB_SYMBOL:                     B L O B;
BOOLEAN_SYMBOL:                  B O O L E A N;
BOTH_SYMBOL:                     B O T H;
BUCKET_SYMBOL:                   B U C K E T;
BUCKETS_SYMBOL:                   B U C K E T S;
BY_SYMBOL:                       B Y;

CASCADED_SYMBOL:                 C A S C A D E D;
CASE_SYMBOL:                     C A S E;
CAST_SYMBOL:                     C A S T;
CFILE_SYMBOL:                    C F I L E;
CHANGE_SYMBOL:                   C H A N G E;
CLUSTER_SYMBOL:                  C L U S T E R;
CLUSTERED_SYMBOL:                C L U S T E R E D;
CLUSTERSTATUS_SYMBOL:            C L U S T E R S T A T U S;
COLLECTION_SYMBOL:               C O L L E C T I O N;
COLUMN_SYMBOL:                   C O L U M N;
COLUMNS_SYMBOL:                  C O L U M N S;
COMMENT_SYMBOL:                  C O M M E N T;
COMPUTE_SYMBOL:                  C O M P U T E;
CONCATENATE_SYMBOL:              C O N C A T E N A T E;
CONTINUE_SYMBOL:                 C O N T I N U E;
CREATE_SYMBOL:                   C R E A T E;
CROSS_SYMBOL:                    C R O S S;
CURDATE_SYMBOL:                  C U R D A T E;
CURSOR_SYMBOL:                   C U R S O R;

DECIMAL_SYMBOL:                  D E C I M A L;
DATA_SYMBOL:                     D A T A;
DATABASE_SYMBOL:                 D A T A B A S E;
DATABASES_SYMBOL:                D A T A B A S E S;
DATE_SYMBOL:                     D A T E;
DATETIME_SYMBOL:                 D A T E T I M E;
DBPROPERTIES_SYMBOL:             D B P R O P E R T I E S;
DEFERRED_SYMBOL:                 D E F E R R E D;
DELETE_SYMBOL:                   D E L E T E;
DELIMITED_SYMBOL:                D E L I M I T E D;
DESC_SYMBOL:                     D E S C;
DESCRIBE_SYMBOL:                 D E S C R I B E;
DIRECTORY_SYMBOL:                D I R E C T O R Y;
DISABLE_SYMBOL:                  D I S A B L E;
DISTINCT_SYMBOL:                 D I S T I N C T;
DISTRIBUTE_SYMBOL:               D I S T R I B U T E;
DOUBLE_SYMBOL:                   D O U B L E;
DROP_SYMBOL:                     D R O P;
ELSE_SYMBOL:                     E L S E;
ENABLE_SYMBOL:                   E N A B L E;
END_SYMBOL:                      E N D;
EXCEPT_SYMBOL:                   E X C E P T;
ESCAPED_SYMBOL:                  E S C A P E D;
EXCLUSIVE_SYMBOL:                E X C L U S I V E;
EXISTS_SYMBOL:                   E X I S T S;
EXPLAIN_SYMBOL:                  E X P L A I N;
EXPORT_SYMBOL:                   E X P O R T;
EXTENDED_SYMBOL:                 E X T E N D E D;
EXTERNAL_SYMBOL:                 E X T E R N A L;

FALSE_SYMBOL:                    F A L S E;
FETCH_SYMBOL:                    F E T C H;
FIELDS_SYMBOL:                   F I E L D S;
FILEFORMAT_SYMBOL:               F I L E F O R M A T;
FIRST_SYMBOL:                    F I R S T;
FLOAT_SYMBOL:                    F L O A T;
FOLLOWING_SYMBOL:                F O L L O W I N G;
FORMAT_SYMBOL:                   F O R M A T;
FORMATTED_SYMBOL:                F O R M A T T E D;
FROM_SYMBOL:                     F R O M;
FULL_SYMBOL:                     F U L L;
FUNCTION_SYMBOL:                 F U N C T I O N;
FUNCTIONS_SYMBOL:                 F U N C T I O N S;

GRANT_SYMBOL:                    G R A N T;
GROUP_SYMBOL:                    G R O U P;

HAVING_SYMBOL:                   H A V I N G;
HOLD_DDLTIME_SYMBOL:             H O L D '_' D D L T I M E;

IDXPROPERTIES_SYMBOL:            I D X P R O P E R T I E S;
IF_SYMBOL:                       I F;
IMPORT_SYMBOL:                   I M P O R T;
IN_SYMBOL:                       I N;
INDEX_SYMBOL:                    I N D E X;
INDEXES_SYMBOL:                  I N D E X E S;
INPATH_SYMBOL:                   I N P A T H;
INPUTDRIVER_SYMBOL:              I N P U T D R I V E R;
INPUTFORMAT_SYMBOL:              I N P U T F O R M A T;
INSERT_SYMBOL:                   I N S E R T;
INT_SYMBOL:                      I N T;
INTERSECT_SYMBOL:                I N T E R S E C T;
INTO_SYMBOL:                     I N T O;
IS_SYMBOL:                       I S;
ITEMS_SYMBOL:                    I T E M S;

JOIN_SYMBOL:                     J O I N;

KEYS_SYMBOL:                     K E Y S;

LATERAL_SYMBOL:                  L A T E R A L;
LEFT_SYMBOL:                     L E F T;
LIFECYCLE_SYMBOL:                L I F E C Y C L E;
LIKE_SYMBOL:                     L I K E;
LIMIT_SYMBOL:                    L I M I T;
LOAD_SYMBOL:                     L O A D;
LOCAL_SYMBOL:                    L O C A L;
LOCATION_SYMBOL:                 L O C A T I O N;
LOCK_SYMBOL:                     L O C K;
LOCKS_SYMBOL:                    L O C K S;
LONG_SYMBOL:                     L O N G;

MAP_SYMBOL:                      M A P;
MAPJOIN_SYMBOL:                  M A P J O I N;
MATERIALIZED_SYMBOL:             M A T E R I A L I Z E D;
MINUS_SYMBOL:                    M I N U S;
MSCK_SYMBOL:                     M S C K;

NOT_SYMBOL:                      N O T;
NO_DROP_SYMBOL:                  N O '_' D R O P;
NULL_SYMBOL:                     N U L L;
NATURAL_SYMBOL:                  N A T U R A L;

OF_SYMBOL:                       O F;
OFFSET_SYMBOL:                   O F F S E T;
OFFLINE_SYMBOL:                  O F F L I N E;
ON_SYMBOL:                       O N;
OPTION_SYMBOL:                   O P T I O N;
OR_SYMBOL:                       O R;
ORDER_SYMBOL:                    O R D E R;
OUT_SYMBOL:                      O U T;
OUTER_SYMBOL:                    O U T E R;
OUTPUTDRIVER_SYMBOL:             O U T P U T D R I V E R;
OUTPUTFORMAT_SYMBOL:             O U T P U T F O R M A T;
OVER_SYMBOL:                     O V E R;
OVERWRITE_SYMBOL:                O V E R W R I T E;

PARTITIONED_SYMBOL:              P A R T I T I O N E D;
PARTITION_SYMBOL:                P A R T I T I O N;
PARTITIONPROPERTIES_SYMBOL:      P A R T I T I O N P R O P E R T I E S;
PERCENT_SYMBOL:                  P E R C E N T;
PLUS_SYMBOL:                     P L U S;
PRECEDING_SYMBOL:                P R E C E D I N G;
PRESERVE_SYMBOL:                 P R E S E R V E;
PROCEDURE_SYMBOL:                P R O C E D U R E;
PURGE_SYMBOL:                    P U R G E;
RANGE_SYMBOL:                    R A N G E;
RCFILE_SYMBOL:                   R C F I L E;
READ_SYMBOL:                     R E A D;
READ_ONLY_SYMBOL:                R E A D '_' O N L Y;
READS_SYMBOL:                    R E A D S;
REBUILD_SYMBOL:                  R E B U I L D;
RECORDREADER_SYMBOL:             R E C O R D R E A D E R;
RECORDWRITER_SYMBOL:             R E C O R D W R I T E R;
REDUCE_SYMBOL:                   R E D U C E;
REGEXP_SYMBOL:                   R E G E X P;
RENAME_SYMBOL:                   R E N A M E;
REPAIR_SYMBOL:                   R E P A I R;
REPLACE_SYMBOL:                  R E P L A C E;
RESTRICT_SYMBOL:                 R E S T R I C T;
REVOKE_SYMBOL:                   R E V O K E;
RIGHT_SYMBOL:                    R I G H T;
RLIKE_SYMBOL:                    R L I K E;
ROW_SYMBOL:                      R O W;
ROWS_SYMBOL:                     R O W S;
SCHEMA_SYMBOL:                   S C H E M A;
SCHEMAS_SYMBOL:                  S C H E M A S;
SELECT_SYMBOL:                   S E L E C T;
SEMI_SYMBOL:                     S E M I;
SEQUENCEFILE_SYMBOL:             S E Q U E N C E F I L E;
SERDE_SYMBOL:                    S E R D E;
SERDEPROPERTIES_SYMBOL:          S E R D E P R O P E R T I E S;
SET_SYMBOL:                      S E T;
SHARED_SYMBOL:                   S H A R E D;
SHOW_SYMBOL:                     S H O W;
SHOW_DATABASE_SYMBOL:            S H O W '_' D A T A B A S E;
SMALLINT_SYMBOL:                 S M A L L I N T;
SORT_SYMBOL:                     S O R T;
SORTED_SYMBOL:                   S O R T E D;
SSL_SYMBOL:                      S S L;
STATISTICS_SYMBOL:               S T A T I S T I C S;
STATUS_SYMBOL:                   S T A T U S;
STORED_SYMBOL:                   S T O R E D;
STREAMTABLE_SYMBOL:              S T R E A M T A B L E;
STRING_SYMBOL:                   S T R I N G;
STRUCT_SYMBOL:                   S T R U C T;
TABLE_SYMBOL:                    T A B L E;
TABLES_SYMBOL:                   T A B L E S;
TABLESAMPLE_SYMBOL:              T A B L E S A M P L E;
TBLPROPERTIES_SYMBOL:            T B L P R O P E R T I E S;
TEMPORARY_SYMBOL:                T E M P O R A R Y;
TERMINATED_SYMBOL:               T E R M I N A T E D;
TEXTFILE_SYMBOL:                 T E X T F I L E;
THEN_SYMBOL:                     T H E N;
TIMESTAMP_SYMBOL:                T I M E S T A M P;
TINYINT_SYMBOL:                  T I N Y I N T;
TO_SYMBOL:                       T O;
TOUCH_SYMBOL:                    T O U C H;
TRANSFORM_SYMBOL:                T R A N S F O R M;
TRIGGER_SYMBOL:                  T R I G G E R;
TRUE_SYMBOL:                     T R U E;
TYPE_SYMBOL:                     T Y P E;

UNARCHIVE_SYMBOL:                U N A R C H I V E;
UNBOUNDED_SYMBOL:                U N B O U N D E D;
UNDO_SYMBOL:                     U N D O;
UNION_SYMBOL:                    U N I O N;
UNIONTYPE_SYMBOL:                U N I O N T Y P E;
UNIQUEJOIN_SYMBOL:               U N I Q U E J  O I N;
UNLOCK_SYMBOL:                   U N L O C K;
UNSIGNED_SYMBOL:                 U N S I G N E D;
UPDATE_SYMBOL:                   U P D A T E;
USE_SYMBOL:                      U S E;
USING_SYMBOL:                    U S I N G;
UTC_SYMBOL:                      U T C;
UTC_TIMESTAMP_SYMBOL:            U T C '_' T I M E S T A M P;
VIEW_SYMBOL:                     V I E W;
WHEN_SYMBOL:                     W H E N;
WHERE_SYMBOL:                    W H E R E;
WHILE_SYMBOL:                    W H I L E;
WITH_SYMBOL:                     W I T H;
ROLLUP_SYMBOL:                   R O L L U P;

DIV_SYMBOL:                      D I V;

DUAL_SYMBOL: D U A L;

WS: [ \t\f\r\n] -> channel(HIDDEN); // Ignore whitespaces.
BLOCK_COMMENT:       ( '/**/' | '/*' ~[!] .*? '*/')                -> channel(HIDDEN);
POUND_COMMENT:    '#' ~([\n\r])*                                   -> channel(HIDDEN);
DASHDASH_COMMENT: DOUBLE_DASH ([ \t] (~[\n\r])* | LINEBREAK | EOF) -> channel(HIDDEN);

fragment LETTER_WHEN_UNQUOTED: DIGIT | LETTER_WHEN_UNQUOTED_NO_DIGIT;

fragment LETTER_WHEN_UNQUOTED_NO_DIGIT: [a-zA-Z_$\u0080-\uffff];

fragment LETTER_WITHOUT_FLOAT_PART: [a-df-zA-DF-Z_$\u0080-\uffff];

IDENTIFIER:
    DIGITS+ [eE] (LETTER_WHEN_UNQUOTED_NO_DIGIT LETTER_WHEN_UNQUOTED*)? // Have to exclude float pattern, as this rule matches more.
    | DIGITS+ LETTER_WITHOUT_FLOAT_PART LETTER_WHEN_UNQUOTED*
    | LETTER_WHEN_UNQUOTED_NO_DIGIT LETTER_WHEN_UNQUOTED* // INT_NUMBER matches first if there are only digits.
;

SINGLE_QUOTED_TEXT: (SINGLE_QUOTE .*? SINGLE_QUOTE)+
;

DOUBLE_QUOTED_TEXT: (DOUBLE_QUOTE .*? DOUBLE_QUOTE)+
;

NUMBER: DIGITS ;
FLOAT_NUMBER: (DIGITS? DOT_SYMBOL)? DIGITS [eE] (MINUS_OPERATOR | PLUS_OPERATOR)? DIGITS;
DECIMAL_NUMBER: DIGITS? DOT_SYMBOL DIGITS;

fragment SINGLE_QUOTE: '\'';
fragment DOUBLE_QUOTE: '"';
fragment DOUBLE_DASH: '--';
fragment LINEBREAK:   [\n\r];