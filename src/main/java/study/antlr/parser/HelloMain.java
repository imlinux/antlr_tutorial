package study.antlr.parser;

import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.ParseTreeWalker;

/**
 * @author 董帅阳
 * @version 1.0
 * @since 2020/9/2
 **/
public class HelloMain {

    public static void main(String[] args) {

        CharStream charStream = CharStreams.fromString("");
        study.antlr.parser.HelloLexer helloLexer = new study.antlr.parser.HelloLexer(charStream);
        TokenStream tokenStream = new CommonTokenStream(helloLexer);

        HelloParser helloParser = new HelloParser(tokenStream);
        ParseTree parseTree = helloParser.r();

        ParseTreeWalker parseTreeWalker = new ParseTreeWalker();
        parseTreeWalker.walk(null, parseTree);
    }
}
