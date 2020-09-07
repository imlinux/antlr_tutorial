package study.antlr.parser;


import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.ParseTreeWalker;

/**
 * @version 1.0
 **/
public class SelectReWriter2 {

    public static void  main(String[] args) {

        String sql = "select * from t1 where c1=c2";

        CharStream charStream = CharStreams.fromString(sql);
        SQLLexer sqlLexer = new SQLLexer(charStream);

        TokenStream tokenStream = new CommonTokenStream(sqlLexer);

        SQLParser sqlParser = new SQLParser(tokenStream);

        ParseTree parseTree = sqlParser.stat();
        ParseTreeWalker parseTreeWalker = new ParseTreeWalker();

        TokenStreamRewriter tokenStreamRewriter = new TokenStreamRewriter(tokenStream);

        parseTreeWalker.walk(new SQLParserBaseListener() {

            @Override
            public void enterWhereClause(SQLParser.WhereClauseContext ctx) {

                Token start = ctx.getStart();

                Token stop = ctx.getStop();

                tokenStreamRewriter.insertAfter(stop, " and 1=1");
            }
        }, parseTree);

        System.out.println(tokenStreamRewriter.getText());
    }
}
