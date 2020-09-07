package study.antlr.parser;


import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.ParseTreeWalker;

/**
 * @version 1.0
 **/
public class SelectReWriter1 {

    public static void  main(String[] args) {

        String sql = "select * from t1 left join t2 on t1.c1 = t2.c2";

        CharStream charStream = CharStreams.fromString(sql);
        SQLLexer sqlLexer = new SQLLexer(charStream);

        TokenStream tokenStream = new CommonTokenStream(sqlLexer);

        SQLParser sqlParser = new SQLParser(tokenStream);

        ParseTree parseTree = sqlParser.stat();

        ParseTreeWalker parseTreeWalker = new ParseTreeWalker();

        parseTreeWalker.walk(new SQLParserBaseListener() {

            @Override
            public void enterFromClause(SQLParser.FromClauseContext ctx) {
                System.out.println("进入from字句");
            }
        }, parseTree);
    }
}
