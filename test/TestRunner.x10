import x10.io.Console;

import Hello;
import ParallelHelloWorld;

class TestRunner {

  public static def main(args:Rail[String]):void {
    Console.OUT.println(">>> Hello");
    Hello.main(args);

    Console.OUT.println(">>> ParallelHelloWorld");
    ParallelHelloWorld.main(args);
  }
}

