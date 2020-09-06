parser grammar SQLParser;

options {
    tokenVocab = SQLLexer;
}

@header {
    package study.antlr.parser;
}

//----------------------------stat---------------------------------

stats: stat+;

stat:
    (
    parSelect
    | maxcomputerSelect
    | unionSelect
    ) SEMICOLON_SYMBOL?

;


//----------------------------select-------------------------------

unionSelect:
    parSelect (UNION_SYMBOL|INTERSECT_SYMBOL|EXCEPT_SYMBOL|MINUS_SYMBOL) (ALL_SYMBOL|DISTINCT_SYMBOL)? parSelect
;

parSelect: OPEN_PAR_SYMBOL? select CLOSE_PAR_SYMBOL?
;
select: SELECT_SYMBOL ALL_SYMBOL? DISTINCT_SYMBOL?
                selectItems fromClause? whereClause?
                groupByClause?
                orderByClause?
                distributeByClause?
                limitClause?
                ;

subSelect:
    OPEN_PAR_SYMBOL select CLOSE_PAR_SYMBOL
    ;

selectItems: selectExprList;

selectExprList: (selectExpr (COMMA_SYMBOL selectExpr)*) | (selectWild);

selectWild: MULT_OPERATOR;

selectExpr:
        tableWild
        | aliasColumnID
        |regexExpr
        | aliasExpr
        ;

regexExpr: BACK_TICK (.+?) BACK_TICK;

aliasColumnID: columnID alias?
;

aliasExpr: expr alias?
;

//----------------------------expr----------------------------------

exprList:
    expr (COMMA_SYMBOL expr)*;

expr:
    expr PLUS_OPERATOR expr                                             #op_plus
    | expr MINUS_OPERATOR expr                                          #op_minus
    | expr MULT_OPERATOR expr                                           #op_mult
    | expr DIV_OPERATOR expr                                            #op_div
    | expr EQUAL_OPERATOR expr                                          #op_eq
    | expr GREATER_OR_EQUAL_OPERATOR expr                               #op_ge
    | expr GREATER_THAN_OPERATOR expr                                   #op_gt
    | expr LESS_OR_EQUAL_OPERATOR expr                                  #op_le
    | expr LESS_THAN_OPERATOR expr                                      #op_lt
    | expr (NOT_EQUAL_OPERATOR|NOT_EQUAL2_OPERATOR) expr                #op_ne
    | expr AND_SYMBOL expr                                              #and
    | expr OR_SYMBOL  expr                                              #or
    | expr inClause                                                     #in
    | expr NOT_SYMBOL? BETWEEN_SYMBOL expr      AND_SYMBOL expr         #between
    | expr NOT_SYMBOL? LIKE_SYMBOL expr                                 #like
    | funCall                                                           #fun_call
    | subSelect                                                         #subSelect_
    | parLiteral                                                        #literal_
    | parColumnID                                                       #column_
;

funCall:
    identifier OPEN_PAR_SYMBOL exprList CLOSE_PAR_SYMBOL
    ;

//----------------------------inClause-------------------------------

inClause:
    NOT_SYMBOL? IN_SYMBOL OPEN_PAR_SYMBOL (select | literal (COMMA_SYMBOL literal)*) CLOSE_PAR_SYMBOL
;

//----------------------------fromClause-----------------------------

fromClause:
    FROM_SYMBOL
    (DUAL_SYMBOL | tableReferenceList)
    ;

tableReferenceList:
    tableReference (COMMA_SYMBOL? tableReference)*
;


tableReference: (
        tableID
        | subSelect
    ) alias? joinedTable*
;

joinedTable:
    innerJoinType tableReference (ON_SYMBOL expr)?
    | outerJoinType tableReference (ON_SYMBOL expr)?
    | natureJoinType tableReference
;

innerJoinType:
    (INNER_SYMBOL)? JOIN_SYMBOL
;

outerJoinType:
    type = (LEFT_SYMBOL | RIGHT_SYMBOL) OUTER_SYMBOL? SEMI_SYMBOL? JOIN_SYMBOL
;

natureJoinType:
    (NATURAL_SYMBOL)? JOIN_SYMBOL
;

//----------------------------whereClause--------------------------
whereClause: WHERE_SYMBOL NOT_SYMBOL? EXISTS_SYMBOL? expr;

//----------------------------groupByClause------------------------

groupByClause: GROUP_SYMBOL BY_SYMBOL columnID (COMMA_SYMBOL columnID)* (WITH_SYMBOL ROLLUP_SYMBOL)? havingClause?;

//----------------------------orderByClause------------------------

orderByClause: ORDER_SYMBOL BY_SYMBOL columnID (DESC_SYMBOL|ASC_SYMBOL)? (COMMA_SYMBOL columnID (DESC_SYMBOL|ASC_SYMBOL)?)*;

//----------------------------havingClause-------------------------

havingClause: HAVING_SYMBOL expr;

//----------------------------distributeByClause-------------------

distributeByClause: DISTRIBUTE_SYMBOL BY_SYMBOL expr (SORT_SYMBOL BY_SYMBOL columnID (COMMA_SYMBOL columnID))?
;

//----------------------------limitClause---------------------------

limitClause: LIMIT_SYMBOL NUMBER ((OFFSET_SYMBOL|COMMA_SYMBOL) NUMBER)?;

//----------------------------maxSelect-----------------------------

maxcomputerSelect: fromClause
                whereClause?
                groupByClause?
                SELECT_SYMBOL selectExprList
                orderByClause?
                limitClause?

;
//----------------------------literal------------------------------

literal:
    numLiteral
    |boolLiteral
    |textLiteral
    ;

parLiteral: OPEN_PAR_SYMBOL? literal CLOSE_PAR_SYMBOL?
;

textLiteral: SINGLE_QUOTED_TEXT | DOUBLE_QUOTED_TEXT
;

numLiteral:
    NUMBER
    | DECIMAL_NUMBER
    | FLOAT_NUMBER
;

boolLiteral:
    TRUE_SYMBOL
    | FALSE_SYMBOL
;

//---------------------------common------------------

alias:
    AS_SYMBOL? identifier
;

identifier: IDENTIFIER;

projectID: identifier;

tableID: (projectID DOT_SYMBOL)? tableName;

columnID: (tableName DOT_SYMBOL)? columnName;

parColumnID: OPEN_PAR_SYMBOL? columnID CLOSE_PAR_SYMBOL?

;

tableName: identifier;

columnName: identifier;

//db1.t1.*或t1.*
tableWild:
    tableID DOT_SYMBOL  MULT_OPERATOR
;