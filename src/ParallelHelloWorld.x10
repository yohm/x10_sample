import x10.io.Console;
import x10.util.Timer;

class ParallelHelloWorld {
  public static def main(args:Rail[String]):void {
    val timer = new Timer();
    val begin = timer.milliTime();
    finish for (p in Place.places()) {
      async at (p) {
        Console.OUT.println("Hello, I'm " + here);
      }
    }
    Console.ERR.println( timer.milliTime() - begin );
  }
}
